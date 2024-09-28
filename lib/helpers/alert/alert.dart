import 'package:flutter/material.dart';

class Alert {

  const Alert();
  static const instance = Alert();

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
