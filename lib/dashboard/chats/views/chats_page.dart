import 'package:craftmate_client/auth/bloc/auth_bloc.dart';
import 'package:craftmate_client/dashboard/chats/bloc/chats/chats_bloc.dart';
import 'package:craftmate_client/dashboard/chats/views/screens/chats_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key, this.listingId});

  final String? listingId;

  static Route<void> route({String? listingId}) {
    return MaterialPageRoute<void>(
      builder: (_) => ChatsPage(
        listingId: listingId,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatsBloc(
        chatRepository: context.read(),
        userId: context.read<AuthBloc>().state.user.id,
        listingId: listingId,
      ),
      child: const ChatsScreen(),
    );
  }
}
