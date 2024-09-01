import 'package:flutter/material.dart';

class Alert {
  static const instance = Alert();

  const Alert();

  void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );
  }
}
