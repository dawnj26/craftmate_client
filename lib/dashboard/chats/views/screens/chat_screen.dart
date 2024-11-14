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
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ReceiverMessage(
                      receiver: widget.user,
                      message: message,
                    ),
                  );
                },
              );
            },
          ),
        ),
        SendField(controller: _controller, receiver: widget.user),
      ],
    );
  }
}

class SendField extends StatelessWidget {
  const SendField({
    super.key,
    required TextEditingController controller,
    required this.receiver,
  }) : _controller = controller;

  final TextEditingController _controller;
  final User receiver;

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                labelText: 'Type a message',
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.camera_alt_outlined),
                      onPressed: () => _handleCamera(context),
                    ),
                    IconButton(
                      icon: const Icon(Icons.attach_file_rounded),
                      onPressed: () => _handleMedia(context),
                    ),
                  ],
                ),
                border: const OutlineInputBorder(),
              ),
              keyboardType: TextInputType.multiline,
              maxLines: 4,
              minLines: 1,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.send_rounded),
            onPressed: () => _handleSend(context),
          ),
        ],
      ),
    );
  }

  void _handleSend(BuildContext context) {
                  final messageText = _controller.text.trim();

                  if (messageText.isEmpty) {
                    return;
                  }

                  final message = Message(
                    message: messageText,
                    senderId: context.read<AuthBloc>().state.user.id,
      receiverId: receiver.id,
                    createdAt: DateTime.now(),
                    senderReadAt: DateTime.now(),
                  );
                  _controller.clear();

                  context.read<ChatBloc>().add(
                        ChatEvent.messageSent(message),
                      );
  }

  Future<void> _handleCamera(BuildContext context) async {
    final picker = ImagePicker();

    showModalBottomSheet(
      context: context,
      clipBehavior: Clip.antiAlias,
      builder: (context1) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.camera_alt_rounded),
              title: const Text('Camera'),
              onTap: () async {
                final media =
                    await picker.pickImage(source: ImageSource.camera);

                if (!context.mounted || media == null) {
                  return;
                }

                final message = Message(
                  message: media.path,
                  senderId: context.read<AuthBloc>().state.user.id,
                  receiverId: receiver.id,
                  createdAt: DateTime.now(),
                  senderReadAt: DateTime.now(),
                  type: MessageType.image,
                );

                context.read<ChatBloc>().add(
                      ChatEvent.messageSent(message),
                    );
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_call_rounded),
              title: const Text('Video'),
              onTap: () async {
                final media =
                    await picker.pickVideo(source: ImageSource.camera);

                if (!context.mounted || media == null) {
                  logger.info('Media is null or context is not mounted');
                  return;
                }

                final message = Message(
                  message: media.path,
                  senderId: context.read<AuthBloc>().state.user.id,
                  receiverId: receiver.id,
                  createdAt: DateTime.now(),
                  senderReadAt: DateTime.now(),
                  type: MessageType.video,
                );

                context.read<ChatBloc>().add(
                      ChatEvent.messageSent(message),
                    );
                Navigator.of(context).pop();
                },
              ),
            ],
        );
      },
    );
  }

  Future<void> _handleMedia(BuildContext context) async {
    final picker = ImagePicker();

    final media = await picker.pickMedia();

    if (!context.mounted || media == null) {
      return;
    }

    final messageType =
        _isImage(media.path) ? MessageType.image : MessageType.video;

    final message = Message(
      message: media.path,
      senderId: context.read<AuthBloc>().state.user.id,
      receiverId: receiver.id,
      createdAt: DateTime.now(),
      senderReadAt: DateTime.now(),
      type: messageType,
    );

    context.read<ChatBloc>().add(
          ChatEvent.messageSent(message),
    );
  }

  bool _isImage(String path) {
    final mimeType = lookupMimeType(path);

    return mimeType?.startsWith('image') ?? false;
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
