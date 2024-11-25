import 'package:chat_repository/chat_repository.dart';
import 'package:craftmate_client/dashboard/chats/bloc/chats/chats_bloc.dart';
import 'package:craftmate_client/dashboard/chats/views/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chats'),
      ),
      body: BlocBuilder<ChatsBloc, ChatsState>(
        builder: (context, state) {
          switch (state) {
            case Initial() || Loading():
              return const Center(
                child: CircularProgressIndicator(),
              );
            case Loaded(chats: final chats):
              return ListView.builder(
                itemCount: state.chats.length,
                itemBuilder: (context, index) {
                  final chat = chats[index];
                  return ChatTile(
                    chat: chat,
                  );
                },
              );
          }

          return const Placeholder();
        },
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

class ChatTile extends StatelessWidget {
  const ChatTile({
    super.key,
    required this.chat,
  });

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isRead = chat.readAt != null;
    final hasProfileImage = chat.sender.image != null;
    final messageText = switch (chat.latestMessage.type) {
      MessageType.image => 'Sent an image',
      MessageType.video => 'Sent a video',
      _ => chat.latestMessage.message,
    };

    return ListTile(
      leading: CircleAvatar(
        backgroundImage:
            hasProfileImage ? NetworkImage(chat.sender.image!) : null,
        child: hasProfileImage ? null : Text(chat.sender.name[0].toUpperCase()),
      ),
      title: Text(chat.sender.name),
      titleTextStyle: isRead
          ? null
          : theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
      subtitleTextStyle: isRead
          ? null
          : theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w500,
            ),
      subtitle: Text(messageText),
      onTap: () {
        Navigator.of(context).push(
          ChatScreen.route(chat.sender, imageUrl: chat.sender.image),
        );
      },
    );
  }
}
