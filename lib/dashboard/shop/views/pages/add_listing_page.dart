import 'package:craftmate_client/dashboard/shop/bloc/add_listing/add_listing_bloc.dart';
import 'package:craftmate_client/dashboard/shop/views/screens/add_listing_screen.dart';
import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddListingPage extends StatelessWidget {
  const AddListingPage({super.key});

  static Route<void> route() {
    return PageTransition.effect.slideFromRightToLeft(
      const AddListingPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddListingBloc(
        shopRepository: context.read(),
        projectRepository: context.read(),
      )..add(const AddListingEvent.started()),
      child: const AddListingScreen(),
    );
  }
}
