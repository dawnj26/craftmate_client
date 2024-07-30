import 'package:craftmate_client/auth/login/models/email.dart';
import 'package:craftmate_client/auth/signup/bloc/sign_up_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailInput extends StatelessWidget {
  const EmailInput();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        final bloc = context.read<SignUpBloc>();
        String? errorText;

        if (state.email.displayError == EmailValidationError.empty) {
          errorText = 'Email is required';
        }
        if (state.email.displayError == EmailValidationError.invalid) {
          errorText = 'Invalid email';
        }

        return TextField(
          key: const Key('signUpForm_emailInput_textField'),
          onChanged: (String email) => bloc.add(
            SignUpEmailChanged(email: email),
          ),
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: 'Email',
            prefixIcon: Icon(
              Icons.email_outlined,
              color: errorText == null ? null : theme.colorScheme.error,
            ),
            errorText: errorText,
          ),
        );
      },
    );
  }
}
