import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:flutter/material.dart';

class ViewProjectPage extends StatelessWidget {
  const ViewProjectPage({super.key});

  static Route<void> route() {
    return PageTransition.effect.slideFromRightToLeft(const ViewProjectPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View project'),
      ),
    );
  }
}
