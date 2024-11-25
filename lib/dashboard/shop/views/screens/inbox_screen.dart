import 'package:craftmate_client/dashboard/chats/views/screens/chat_screen.dart';
import 'package:craftmate_client/dashboard/shop/bloc/inbox/inbox_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
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

              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    listingChat.product.product.imageUrls.first,
                  ),
                ),
                title: Text(
                  '${listingChat.chat.sender.name} - ${listingChat.product.product.name}',
                ),
                subtitle: Text(listingChat.chat.latestMessage.message),
                onTap: () {
                  Navigator.of(context).push(
                    ChatScreen.route(
                      listingChat.chat.sender,
                      listingId: listingChat.product.id,
                      title:
                          '${listingChat.chat.sender.name} - ${listingChat.product.product.name}',
                      imageUrl: listingChat.product.product.imageUrls.first,
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
