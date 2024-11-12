import 'package:chat_repository/src/models/chat/chat.dart';
import 'package:chat_repository/src/models/message/message.dart';
import 'package:config_repository/config_repository.dart';
import 'package:user_repository/user_repository.dart';

abstract class IChatRepository {
  Future<void> sendMessage(Message message);
  Stream<List<Message>> messages(int senderId, int receiverId);
  Stream<List<Chat>> chats(int userId);
}

class ChatRepository implements IChatRepository {
  final ConfigRepository _config;
  final UserRepository _userRepository;

  const ChatRepository({
    required ConfigRepository config,
    required UserRepository userRepository,
  })  : _config = config,
        _userRepository = userRepository;

  String _getConversationId(int userId1, int userId2) {
    final sortedIds = [userId1, userId2]..sort();
    return '${sortedIds[0]}_${sortedIds[1]}';
  }

  @override
  Future<void> sendMessage(Message message) async {
    final conversationId = _getConversationId(
      message.senderId,
      message.receiverId,
    );

    await _config.db.collection('chats').doc(conversationId).set({
      'userIds': [message.senderId, message.receiverId]..sort(),
      '${message.senderId}': DateTime.now().toIso8601String(),
      '${message.receiverId}': null,
      'latestMessage': message.toJson(),
    });

    await _config.db
        .collection('chats/$conversationId/messages')
        .add(message.toJson());
  }

  @override
  Stream<List<Message>> messages(int senderId, int receiverId) {
    final conversationId = _getConversationId(senderId, receiverId);

    return _config.db
        .collection('chats/$conversationId/messages')
        .orderBy('createdAt', descending: true)
        .snapshots()
        .asyncMap((snapshot) async {
      await _config.db
          .collection('chats')
          .doc(conversationId)
          .update({'$senderId': DateTime.now().toIso8601String()});

      return snapshot.docs.map((doc) {
        final data = {...doc.data(), 'uuid': doc.id};
        return Message.fromJson(data);
      }).toList();
    });
  }

  @override
  Stream<List<Chat>> chats(int userId) {
    return _config.db
        .collection('chats')
        .where('userIds', arrayContains: userId)
        .snapshots()
        .asyncMap((snapshot) async {
      final chats = <Chat>[];

      for (final doc in snapshot.docs) {
        final data = doc.data();
        final otherUserId = data['userIds'].first == userId
            ? data['userIds'].last
            : data['userIds'].first;

        final user = await _userRepository.getUserById(otherUserId);

        final chat = Chat(
          sender: user,
          latestMessage: Message.fromJson(data['latestMessage']),
          readAt: data[userId.toString()] != null
              ? DateTime.parse(data[userId.toString()])
              : null,
        );
        chats.add(chat);
      }

      return chats;
    });
  }
}
