import 'dart:io';

import 'package:chat_repository/chat_repository.dart';
import 'package:craftmate_client/auth/auth.dart';
import 'package:craftmate_client/dashboard/chats/bloc/chat/chat_bloc.dart';
import 'package:craftmate_client/dashboard/chats/views/components/video_player.dart';
import 'package:craftmate_client/globals.dart';
import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mime/mime.dart';
import 'package:user_repository/user_repository.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key, required this.user});

  final User user;

  static Route<void> route(User user) {
    return PageTransition.effect.slideFromRightToLeft(
      ChatScreen(user: user),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatBloc(
        chatRepository: context.read(),
        sender: context.read<AuthBloc>().state.user,
        receiver: user,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(user.name),
        ),
        body: Messages(user: user),
      ),
    );
  }
}

class Messages extends StatefulWidget {
  const Messages({
    super.key,
    required this.user,
  });

  final User user;

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: BlocBuilder<ChatBloc, ChatState>(
            builder: (context, state) {
              switch (state) {
                case Initial() || Loading():
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
              }

              return ListView.builder(
                reverse: true,
                itemCount: state.messages.length,
                itemBuilder: (context, index) {
                  final message = state.messages[index];

                  if (message.senderId != widget.user.id) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SenderMessage(
                          message: message,
                          isSending: isSending && index == 0,
                        ),
                        if (isSending && index == 0)
                          const Padding(
                            padding: EdgeInsets.only(right: 8),
                            child: SizedBox(
                              height: 16,
                              width: 16,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                              ),
                            ),
                          )
                        else if (index == 0)
                          const Padding(
                            padding: EdgeInsets.only(right: 8),
                            child: Icon(
                              Icons.done,
                              size: 16,
                            ),
                        ),
                      ],
                    );
                  }
                    ),
                  );
                },
              );
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _controller,
                  decoration: const InputDecoration(
                    hintText: 'Type a message',
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.send_rounded),
                onPressed: () {
                  final messageText = _controller.text.trim();

                  if (messageText.isEmpty) {
                    return;
                  }

                  final message = Message(
                    message: messageText,
                    senderId: context.read<AuthBloc>().state.user.id,
                    receiverId: widget.user.id,
                    createdAt: DateTime.now(),
                    senderReadAt: DateTime.now(),
                  );
                  _controller.clear();

                  context.read<ChatBloc>().add(
                        ChatEvent.messageSent(message),
                      );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SenderMessage extends StatelessWidget {
  const SenderMessage({super.key, required this.message});

  final Message message;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenSize = MediaQuery.sizeOf(context);

    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: screenSize.width * 0.7,
        ),
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: theme.colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          message.message,
          style: TextStyle(
            color: theme.colorScheme.onPrimaryContainer,
          ),
        ),
      ),
    );
  }
}

class ReceiverMessage extends StatelessWidget {
  const ReceiverMessage({super.key, required this.message});

  final Message message;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenSize = MediaQuery.sizeOf(context);

    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(12),
        constraints: BoxConstraints(
          maxWidth: screenSize.width * 0.7,
        ),
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainer,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          message.message,
          style: TextStyle(
            color: theme.colorScheme.onSecondaryContainer,
          ),
        ),
      ),
    );
  }
}
