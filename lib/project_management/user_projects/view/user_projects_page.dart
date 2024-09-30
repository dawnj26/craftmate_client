import 'package:craftmate_client/project_management/user_projects/view/screens/user_project_screen.dart';
import 'package:flutter/material.dart';

class UserProjectsPage extends StatelessWidget {
  const UserProjectsPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(builder: (_) => const UserProjectsPage());
  }

  @override
  Widget build(BuildContext context) {
    return const UserProjectScreen();
  }
}
