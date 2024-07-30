import 'package:craftmate_client/auth/login/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButton extends StatelessWidget {
  const LoginButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return FilledButton(
          onPressed: () {
            context.read<LoginBloc>().add(
                  LoginSubmitted(
                    email: state.email.value,
                    password: state.password.value,
                  ),
                );
          },
          child: const Text('Log in'),
        );
      },
    );
  }
}
