import 'package:craftmate_client/auth/bloc/auth_bloc.dart';
import 'package:craftmate_client/dashboard/shop/bloc/saved_listing/saved_listing_bloc.dart';
import 'package:craftmate_client/dashboard/shop/views/screens/saved_items_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SavedItemsPage extends StatelessWidget {
  const SavedItemsPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const SavedItemsPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SavedListingBloc(
        shopRepository: context.read(),
      )..add(SavedListingEvent.started(context.read<AuthBloc>().state.user.id)),
      child: const SavedItemsScreen(),
    );
  }
}
