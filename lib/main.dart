// Widgets
import 'package:craftmate_client/screens/auth/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff316A42),
        ),
      ),
      title: 'CraftMate',
      home: const LoginScreen(),
    );
  }
}
