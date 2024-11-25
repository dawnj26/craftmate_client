import 'package:craftmate_client/auth/bloc/auth_bloc.dart';
import 'package:craftmate_client/dashboard/shop/bloc/user_listing/user_listing_bloc.dart';
import 'package:craftmate_client/dashboard/shop/views/screens/user_listing_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserListingPage extends StatelessWidget {
  const UserListingPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const UserListingPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserListingBloc(
        shopRepository: context.read(),
      )..add(UserListingEvent.started(context.read<AuthBloc>().state.user.id)),
      child: const UserListingScreen(),
    );
  }
}
