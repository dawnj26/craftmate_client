import 'package:craftmate_client/auth/bloc/auth_bloc.dart';
import 'package:craftmate_client/dashboard/shop/bloc/inbox/inbox_bloc.dart';
import 'package:craftmate_client/dashboard/shop/views/screens/inbox_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const InboxPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InboxBloc(
        context.read(),
        context.read<AuthBloc>().state.user.id,
      ),
      child: const InboxScreen(),
    );
  }
}
