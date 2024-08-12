import 'package:craftmate_client/auth/components/page_transitions.dart';
import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:flutter/material.dart';

class GenerateProjectPage extends StatelessWidget {
  const GenerateProjectPage({super.key});

  static Route<void> route() {
    return PageTransition.effect
        .slideFromRightToLeft(const GenerateProjectPage());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Generate project'),
      ),
    );
  }
}
