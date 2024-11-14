import 'package:craftmate_client/dashboard/shop/views/screens/add_listing_screen.dart';
import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:flutter/material.dart';

class AddListingPage extends StatelessWidget {
  const AddListingPage({super.key});

  static Route<void> route() {
    return PageTransition.effect.slideFromRightToLeft(
      const AddListingPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const AddListingScreen();
  }
}
