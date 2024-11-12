import 'package:craftmate_client/dashboard/chats/bloc/chats/chats_bloc.dart';
import 'package:craftmate_client/dashboard/chats/views/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
                  final isRead = chat.readAt != null;
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text(chat.sender.name[0]),
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
                            fontWeight: FontWeight.bold,
                          ),
                    subtitle: Text(chat.latestMessage.message),
                    onTap: () {
                      Navigator.of(context).push(
                        ChatScreen.route(chat.sender),
                      );
                    },
                  );
                },
              );
          }

          return const Placeholder();
        },
      ),
    );
  }
}
