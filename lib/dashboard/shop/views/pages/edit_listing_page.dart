import 'package:craftmate_client/dashboard/shop/bloc/edit_listing/edit_listing_bloc.dart';
import 'package:craftmate_client/dashboard/shop/views/screens/edit_listing_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditListingPage extends StatelessWidget {
  const EditListingPage({super.key, required this.listingId});

  final String listingId;

  static Route<void> route(String listingId) {
    return MaterialPageRoute<void>(
      builder: (_) => EditListingPage(listingId: listingId),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditListingBloc(
        shopRepository: context.read(),
        projectRepository: context.read(),
      )..add(EditListingEvent.started(listingId)),
      child: const EditListingScreen(),
    );
  }
}
