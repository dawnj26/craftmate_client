import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:flutter/material.dart';

class ExistingProjectPage extends StatelessWidget {
  const ExistingProjectPage({super.key});

  static Route<void> route() {
    return PageTransition.effect
        .slideFromRightToLeft(const ExistingProjectPage());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Existing project'),
      ),
    );
  }
}
