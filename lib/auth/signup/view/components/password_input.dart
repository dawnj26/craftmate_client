import 'package:craftmate_client/auth/signup/bloc/sign_up_bloc.dart';
import 'package:craftmate_client/auth/signup/models/password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        final bloc = context.read<SignUpBloc>();
        String? errorText;

        if (state.password.displayError == PasswordValidationError.empty) {
          errorText = 'Password is required';
        }
        if (state.password.displayError == PasswordValidationError.tooShort) {
          errorText = 'Password must have at least 6 characters';
        }

        return TextField(
          key: const Key('signUpForm_passwordInput_textField'),
          onChanged: (String password) => bloc.add(
            SignUpPasswordChanged(password: password),
          ),
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: 'Password',
            prefixIcon: Icon(
              Icons.password_outlined,
              color: errorText == null ? null : theme.colorScheme.error,
            ),
            errorText: errorText,
          ),
          obscureText: true,
        );
      },
    );
  }
}
