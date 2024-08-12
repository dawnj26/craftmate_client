import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:flutter/material.dart';

class BlankProjectPage extends StatelessWidget {
  const BlankProjectPage({super.key});

  static Route<void> route() {
    return PageTransition.effect.slideFromRightToLeft(const BlankProjectPage());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Blank Project'),
      ),
    );
  }
}
