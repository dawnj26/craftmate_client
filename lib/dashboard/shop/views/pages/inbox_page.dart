import 'package:craftmate_client/dashboard/shop/bloc/inbox/inbox_bloc.dart';
import 'package:craftmate_client/dashboard/shop/views/screens/inbox_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({super.key, required this.userId});

  final int userId;

  static Route<void> route(int userId) {
    return MaterialPageRoute<void>(
      builder: (_) => InboxPage(
        userId: userId,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InboxBloc(
        context.read(),
        context.read(),
        userId,
      )..add(const InboxEvent.started()),
      child: const InboxScreen(),
    );
  }
}
