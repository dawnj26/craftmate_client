import 'package:craftmate_client/auth/signup/bloc/sign_up_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return FilledButton(
          onPressed: () {
            context.read<SignUpBloc>().add(
                  SignUpSubmitted(
                    name: state.name.value,
                    email: state.email.value,
                    password: state.password.value,
                    confirmPassword: state.confirmPassword.value,
                  ),
                );
          },
          child: const Text('Sign up'),
        );
      },
    );
  }
}
