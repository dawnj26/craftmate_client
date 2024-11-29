import 'package:craftmate_client/auth/bloc/auth_bloc.dart';
import 'package:craftmate_client/dashboard/chats/views/screens/chat_screen.dart';
import 'package:craftmate_client/dashboard/shop/bloc/inbox/inbox_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final curUser = context.read<AuthBloc>().state.user;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inbox'),
      ),
      body: BlocBuilder<InboxBloc, InboxState>(
        builder: (context, state) {
          switch (state) {
            case Initial() || Loading():
              return const Center(
                child: CircularProgressIndicator(),
              );
          }

          return ListView.builder(
            itemCount: state.listingChats.length,
            itemBuilder: (context, index) {
              final listingChat = state.listingChats[index];
              final isRead = listingChat.chat.readAt != null;
              final ownedByCurUser =
                  listingChat.product.product.sellerId == curUser.id;

              final chatTitle =
                  '${ownedByCurUser ? listingChat.chat.sender.name : curUser.name} - ${listingChat.product.product.name}';

              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    listingChat.product.product.imageUrls.first,
                  ),
                ),
                title: Text(
                  chatTitle,
                ),
                subtitle: Text(listingChat.chat.latestMessage.message),
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
                onTap: () {
                  Navigator.of(context).push(
                    ChatScreen.route(
                      // context.read<AuthBloc>().state.user,
                      listingChat.chat.sender,
                      listingId: listingChat.product.id,
                      title: chatTitle,
                      imageUrl: listingChat.product.product.imageUrls.first,
                      sellerId: listingChat.product.product.sellerId,
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
