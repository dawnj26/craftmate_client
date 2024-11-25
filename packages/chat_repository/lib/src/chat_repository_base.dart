import 'package:chat_repository/src/exceptions/chat_exception.dart';
import 'package:chat_repository/src/models/chat/chat.dart';
import 'package:chat_repository/src/models/listing_chat.dart';
import 'package:chat_repository/src/models/message/message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:config_repository/config_repository.dart';
import 'package:dio/dio.dart';
import 'package:shop_repository/shop_repository.dart';
import 'package:user_repository/user_repository.dart';

abstract class IChatRepository {
  Future<void> sendMessage(Message message);
  Stream<List<Message>> messages(int senderId, int receiverId);
  Future<bool> hasMessages(int senderId, int receiverId);
  Stream<List<Chat>> chats(int userId);
  Stream<List<ListingChat>> listingChats(int userId);
}

class ChatRepository implements IChatRepository {
  final ConfigRepository _config;
  final UserRepository _userRepository;

  ChatRepository({
    required ConfigRepository config,
    required UserRepository userRepository,
  })  : _config = config,
        _userRepository = userRepository;

  String _baseCollection = 'chats';

  String _getConversationId(int userId1, int userId2) {
    final sortedIds = [userId1, userId2]..sort();
    return '${sortedIds[0]}_${sortedIds[1]}';
  }

  Future<void> _sendVideoMessage(Message message, String conversationId) async {
    try {
      final path = message.message;
      final filename = path.split('/').last;
      final formData = FormData.fromMap({
        'video': await MultipartFile.fromFile(path, filename: filename),
      });

      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/message/video',
        method: 'POST',
        data: formData,
        withAuthorization: true,
      );

      if (response.data == null) {
        throw ChatException('Failed to upload video');
      }

      final videoUrl = response.data!['data']['video_url'] as String;

      final newMessage = message.copyWith(message: videoUrl);
      _config.logger.info(newMessage.toString());
      await _setLatestMessage(newMessage, conversationId);
      await _addMessage(newMessage, conversationId);
    } on RequestException catch (e) {
      throw ChatException(e.message);
    }
  }

  Future<void> _sendImageMessage(Message message, String conversationId) async {
    try {
      final path = message.message;
      final filename = path.split('/').last;
      final formData = FormData.fromMap({
        'image': await MultipartFile.fromFile(path, filename: filename),
      });

      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/message/image',
        method: 'POST',
        data: formData,
        withAuthorization: true,
      );

      if (response.data == null) {
        throw ChatException('Failed to upload image');
      }

      final imageUrl = response.data!['data'] as String;

      final newMessage = message.copyWith(message: imageUrl);
      _config.logger.info(newMessage.toString());
      await _setLatestMessage(newMessage, conversationId);
      await _addMessage(newMessage, conversationId);
    } on RequestException catch (e) {
      throw ChatException(e.message);
    }
  }

  Future<void> _sendTextMessage(Message message, String conversationId) async {
    await _setLatestMessage(message, conversationId);
    await _addMessage(message, conversationId);
  }

  @override
  Future<void> sendMessage(Message message, {String? listingId}) async {
    final conversationId = _getConversationId(
      message.senderId,
      message.receiverId,
    );

    if (listingId != null) {
      _baseCollection = 'shop/$listingId/chats';
    } else {
      _baseCollection = 'chats';
    }

    switch (message.type) {
      case MessageType.text:
        return _sendTextMessage(message, conversationId);
      case MessageType.image:
        return _sendImageMessage(message, conversationId);
      case MessageType.video:
        return _sendVideoMessage(message, conversationId);
      default:
    }
  }

  @override
  Stream<List<Message>> messages(int senderId, int receiverId,
      {String? listingId}) {
    final conversationId = _getConversationId(senderId, receiverId);

    final collection = listingId != null ? 'shop/$listingId/chats' : 'chats';
    return _config.db
        .collection('$collection/$conversationId/messages')
        .orderBy('createdAt', descending: true)
        .snapshots()
        .asyncMap((snapshot) async {
      await _config.db
          .collection(collection)
          .doc(conversationId)
          .update({'$senderId': DateTime.now().toIso8601String()});

      return snapshot.docs.map((doc) {
        final data = {...doc.data(), 'uuid': doc.id};
        return Message.fromJson(data);
      }).toList();
    });
  }

  @override
  Stream<List<Chat>> chats(int userId, {String? listingId}) {
    final collection = listingId != null ? 'shop/$listingId/chats' : 'chats';

    return _config.db
        .collection(collection)
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

  Future<void> _setLatestMessage(Message message, String conversationId) async {
    await _config.db.collection(_baseCollection).doc(conversationId).set({
      'userIds': [message.senderId, message.receiverId]..sort(),
      '${message.senderId}': DateTime.now().toIso8601String(),
      '${message.receiverId}': null,
      'latestMessage': message.toJson(),
    }, SetOptions(merge: true));
  }

  Future<void> _addMessage(Message message, String conversationId) async {
    await _config.db
        .collection('$_baseCollection/$conversationId/messages')
        .add(message.toJson());
  }

  @override
  Future<bool> hasMessages(int senderId, int receiverId) async {
    try {
      final docSnapshot = await _config.db
          .collection('chats')
          .doc(_getConversationId(senderId, receiverId))
          .get();
      return docSnapshot.exists;
    } catch (e) {
      _config.logger.error('Error checking document existence: $e');
      return false;
    }
  }

  @override
  Stream<List<ListingChat>> listingChats(int userId) {
    return _config.db.collection('shop').snapshots().asyncMap((products) async {
      final List<ListingChat> allChats = [];

      for (final product in products.docs) {
        final query = QueryProduct(
          id: product.id,
          product: Product.fromJson(product.data()),
        );

        final chatsSnapshot = await _config.db
            .collection('shop/${product.id}/chats')
            .where('userIds', arrayContains: userId)
            .get();

        final chats = <ListingChat>[];

        for (final doc in chatsSnapshot.docs) {
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

          final lChat = ListingChat(
            product: query,
            chat: chat,
          );
          chats.add(lChat);
        }

        allChats.addAll(chats);
      }

      return allChats;
    });
  }
}
