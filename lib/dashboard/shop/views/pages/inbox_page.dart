import 'package:craftmate_client/dashboard/shop/views/screens/inbox_screen.dart';
import 'package:flutter/material.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const InboxPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const InboxScreen();
  }
}
