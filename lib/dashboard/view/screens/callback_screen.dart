import 'package:flutter/material.dart';

class CallbackScreen extends StatelessWidget {
  const CallbackScreen({super.key, required this.id});

  static Route<void> route(String id) {
    return MaterialPageRoute(builder: (_) => CallbackScreen(id: id));
  }

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Project Received: $id'),
      ),
    );
  }
}
