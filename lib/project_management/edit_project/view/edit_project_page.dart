import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:craftmate_client/project_management/edit_project/view/screens/edit_project_screen.dart';
import 'package:flutter/material.dart';

class EditProjectPage extends StatelessWidget {
  const EditProjectPage({super.key});

  static Route<void> route() {
    return PageTransition.effect.slideFromRightToLeft(const EditProjectPage());
  }

  @override
  Widget build(BuildContext context) {
    return const EditProjectScreen();
  }
}
