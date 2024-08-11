import 'package:craftmate_client/auth/signup/signup.dart';
import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account?"),
        TextButton(
          onPressed: () => gotoSignUpPage(context),
          child: const Text('Sign up'),
        ),
      ],
    );
  }

  void gotoSignUpPage(BuildContext context) {
    WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();

    Navigator.push(
      context,
      SignUpPage.route(),
    );
  }
}
