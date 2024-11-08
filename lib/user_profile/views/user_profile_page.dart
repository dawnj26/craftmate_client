import 'package:craftmate_client/user_profile/views/screens/user_profile_screen.dart';
import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (context) => const UserProfilePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const UserProfileScreen();
  }
}
