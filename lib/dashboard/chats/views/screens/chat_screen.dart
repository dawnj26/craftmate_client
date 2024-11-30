import 'dart:io';

import 'package:chat_repository/chat_repository.dart';
import 'package:craftmate_client/auth/auth.dart';
import 'package:craftmate_client/dashboard/chats/bloc/chat/chat_bloc.dart';
import 'package:craftmate_client/dashboard/chats/bloc/review/review_bloc.dart'
    as r;
import 'package:craftmate_client/dashboard/chats/views/components/video_player.dart';
import 'package:craftmate_client/dashboard/shop/views/pages/write_review_page.dart';
import 'package:craftmate_client/dashboard/shop/views/screens/view_listing_screen.dart';
import 'package:craftmate_client/gen/assets.gen.dart';
import 'package:craftmate_client/globals.dart';
import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:mime/mime.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:user_repository/user_repository.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({
    super.key,
    required this.user,
    this.listingId,
    this.title,
    this.imageUrl,
    this.sellerId,
  });

  final User user;
  final String? listingId;
  final int? sellerId;
  final String? title;
  final String? imageUrl;

  static Route<void> route(
    User user, {
    String? listingId,
    String? title,
    String? imageUrl,
    int? sellerId,
  }) {
    return PageTransition.effect.slideFromRightToLeft(
      ChatScreen(
        user: user,
        listingId: listingId,
        title: title,
        imageUrl: imageUrl,
        sellerId: sellerId,
      ),
      false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final curUser = context.read<AuthBloc>().state.user;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ChatBloc(
            chatRepository: context.read(),
            listingId: listingId,
          )..add(
              ChatEvent.started(
                curUser.id,
                user.id,
              ),
            ),
        ),
        BlocProvider(
          create: (context) => r.ReviewBloc(
            context.read(),
          )..add(
              r.ReviewEvent.started(
                sellerId ?? -1,
                curUser.id,
              ),
            ),
        ),
      ],
      child: BlocBuilder<ChatBloc, ChatState>(
        builder: (context, state) {
          final sellerMsgCount =
              state.messages.where((msg) => msg.senderId != curUser.id).length;
          final sendMsgCount =
              state.messages.where((msg) => msg.senderId == curUser.id).length;

          final validToReview = sellerMsgCount >= 5 &&
              sendMsgCount >= 5 &&
              listingId != null &&
              sellerId != null &&
              curUser.id != sellerId;

          return BlocBuilder<r.ReviewBloc, r.ReviewState>(
            builder: (context, state) {
              final isReviewed = switch (state) {
                r.Reviewed() => true,
                _ => false,
              };

              return Scaffold(
                appBar: ChatBar(
                  listingId: listingId,
                  imageUrl: imageUrl,
                  user: user,
                  title: title,
                  validToReview: validToReview && !isReviewed,
                  sellerId: sellerId,
                ),
                body: Messages(user: user),
              );
            },
          );
        },
      ),
    );
  }
}

class ChatBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatBar({
    super.key,
    required this.imageUrl,
    required this.user,
    required this.title,
    this.validToReview = false,
    required this.listingId,
    this.sellerId,
  });

  final String? imageUrl;
  final User user;
  final String? title;
  final bool validToReview;
  final String? listingId;
  final int? sellerId;

  @override
  Widget build(BuildContext context) {
    final hasProfileImage = user.image != null;
    final imagePath = listingId != null ? imageUrl : user.image;

    return AppBar(
      title: Row(
        children: [
          CircleAvatar(
            backgroundImage: imagePath != null ? NetworkImage(imagePath) : null,
            child: hasProfileImage ? null : Text(user.name[0].toUpperCase()),
          ),
          const SizedBox(
            width: 12.0,
          ),
          Expanded(
            child: Text(
              title ?? user.name,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      bottom: !validToReview
          ? null
          : PreferredSize(
              preferredSize: const Size.fromHeight(64),
              child: Container(
                color: Theme.of(context).colorScheme.surfaceContainer,
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "How's the experience with ${user.name}?",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          WriteReviewPage.route(listingId!, sellerId!),
                        );
                      },
                      child: const Text('Leave a review'),
                    ),
                  ],
                ),
              ),
            ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>
      Size.fromHeight(validToReview ? kToolbarHeight + 64 : kToolbarHeight);
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
  Message? _selectedMessage;

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

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
                case Loaded(:final messages) when messages.isEmpty:
                  const imageSize = 300.0;
                  return Center(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Assets.images.beginChat.image(
                            width: imageSize,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Start a conversation',
                            style: theme.textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
                  );
              }
              final isSending = switch (state) {
                Sending() => true,
                _ => false,
              };

              return ListView.builder(
                reverse: true,
                itemCount: state.messages.length,
                itemBuilder: (context, index) {
                  final message = state.messages[index];
                  final widgets = <Widget>[];

                  // Add date divider if needed
                  if (index < state.messages.length - 1) {
                    final nextMessage = state.messages[index + 1];
                    if (_shouldShowDivider(
                      message.createdAt!,
                      nextMessage.createdAt!,
                    )) {
                      widgets.add(DateDivider(dateTime: message.createdAt!));
                    }
                  } else if (index == state.messages.length - 1) {
                    // Show divider for the last (oldest) message
                    widgets.add(DateDivider(dateTime: message.createdAt!));
                  }

                  if (message.senderId != widget.user.id) {
                    widgets.add(
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SenderMessage(
                            message: message,
                            isSending: isSending && index == 0,
                            isSelected: _selectedMessage == message,
                            onTap: () => setState(() {
                              _selectedMessage =
                                  _selectedMessage == message ? null : message;
                            }),
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
                      ),
                    );
                  } else {
                    widgets.add(
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ReceiverMessage(
                          receiver: widget.user,
                          message: message,
                          isSelected: _selectedMessage == message,
                          onTap: () => setState(() {
                            _selectedMessage =
                                _selectedMessage == message ? null : message;
                          }),
                        ),
                      ),
                    );
                  }

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: widgets,
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

  bool _shouldShowDivider(DateTime current, DateTime next) {
    // Show divider if messages are more than 1 hour apart
    return current.difference(next).inHours.abs() >= 1;
  }
}

class DateDivider extends StatelessWidget {
  const DateDivider({
    super.key,
    required this.dateTime,
  });

  final DateTime dateTime;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        children: [
          Expanded(child: Divider(color: theme.colorScheme.outlineVariant)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              _formatDateTime(dateTime),
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.outline,
              ),
            ),
          ),
          Expanded(child: Divider(color: theme.colorScheme.outlineVariant)),
        ],
      ),
    );
  }

  String _formatDateTime(DateTime dt) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));
    final messageDate = DateTime(dt.year, dt.month, dt.day);

    final time = DateFormat.jm().format(dt); // formats time like "10:30 AM"

    if (messageDate == today) {
      return 'Today, $time';
    } else if (messageDate == yesterday) {
      return 'Yesterday, $time';
    } else if (now.year == dt.year) {
      // Same year, show date and month
      return DateFormat('MMM d, ').format(dt) + time;
    }
    // Different year, show full date
    return DateFormat('MMM d, y, ').format(dt) + time;
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
  const SenderMessage({
    super.key,
    required this.message,
    this.isSending = false,
    this.isSelected = false,
    this.onTap,
  });

  final Message message;
  final bool isSending;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenSize = MediaQuery.sizeOf(context);

    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (isSelected) TimestampLabel(dateTime: message.createdAt!),
          Container(
            constraints: BoxConstraints(
              maxWidth: screenSize.width * 0.7,
              minWidth: message.type == MessageType.text ? 0 : 200,
              minHeight: message.type == MessageType.text ? 0 : 200,
            ),
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: theme.colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(12),
            ),
            child: MessageContent(message: message, isSending: isSending),
          ),
        ],
      ),
    );
  }
}

class MessageContent extends StatelessWidget {
  const MessageContent({
    super.key,
    required this.message,
    this.isSending = false,
  });

  final Message message;
  final bool isSending;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    switch (message.type) {
      case MessageType.text:
        return SelectableLinkify(
          text: message.message,
          style: theme.textTheme.bodyMedium,
          onOpen: (link) async {
            final uriLink = Uri.parse(link.url);
            if (!await launchUrl(uriLink)) {
              logger.warning('Could not launch $uriLink');
            }
          },
        );
      case MessageType.image:
        if (isSending) {
          return Image.file(File(message.message));
        }

        return GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return ZoomPhoto(imageUrl: message.message);
              },
            );
          },
          child: Image.network(
            message.message,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) {
                return child;
              }
              return Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                      : null,
                ),
              );
            },
          ),
        );
      case MessageType.video:
        if (isSending) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return VideoPlayer(
          url: message.message,
        );
      default:
    }

    return const Placeholder();
  }
}

class ReceiverMessage extends StatelessWidget {
  const ReceiverMessage({
    super.key,
    required this.message,
    required this.receiver,
    this.isSelected = false,
    this.onTap,
  });

  final Message message;
  final User receiver;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenSize = MediaQuery.sizeOf(context);
    final hasProfileImage = receiver.image != null;

    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isSelected) TimestampLabel(dateTime: message.createdAt!),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CircleAvatar(
                radius: 16,
                backgroundImage:
                    hasProfileImage ? NetworkImage(receiver.image!) : null,
                child: hasProfileImage
                    ? null
                    : Text(receiver.name[0].toUpperCase()),
              ),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.all(12),
                constraints: BoxConstraints(
                  maxWidth: screenSize.width * 0.7,
                ),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surfaceContainer,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: MessageContent(message: message),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TimestampLabel extends StatefulWidget {
  const TimestampLabel({
    super.key,
    required this.dateTime,
  });

  final DateTime dateTime;

  @override
  State<TimestampLabel> createState() => _TimestampLabelState();
}

class _TimestampLabelState extends State<TimestampLabel>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizeTransition(
      sizeFactor: _animation,
      axisAlignment: -1,
      child: FadeTransition(
        opacity: _animation,
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 4),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerHighest.withOpacity(0.5),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              DateFormat('MMM d, y h:mm a').format(widget.dateTime),
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.outline,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
