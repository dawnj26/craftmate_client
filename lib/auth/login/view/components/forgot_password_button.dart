import 'package:flutter/material.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => gotoForgotScreen(context),
      child: const Text(
        'Forgot password?',
        style: TextStyle(
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }

  void gotoForgotScreen(BuildContext context) {
    // TODO: impletement navigation to forgot pass screen
  }
}
