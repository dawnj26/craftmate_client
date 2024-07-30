import 'package:craftmate_client/auth/signup/bloc/sign_up_bloc.dart';
import 'package:craftmate_client/auth/signup/models/confirm_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfirmPasswordInput extends StatelessWidget {
  const ConfirmPasswordInput();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) =>
          previous.confirmPassword != current.confirmPassword,
      builder: (context, state) {
        final bloc = context.read<SignUpBloc>();
        String? errorText;

        if (state.confirmPassword.displayError ==
            ConfirmPasswordValidationError.empty) {
          errorText = 'Confirm password is required';
        }
        if (state.confirmPassword.displayError ==
            ConfirmPasswordValidationError.mismatch) {
          errorText = 'Password does not match';
        }

        return TextField(
          key: const Key('signUpForm_confirmPasswordInput_textField'),
          onChanged: (String password) => bloc.add(
            SignUpConfirmPasswordChanged(confirmPassword: password),
          ),
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: 'Confirm password',
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
