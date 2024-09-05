import 'package:craftmate_client/auth/login/bloc/login_bloc.dart';
import 'package:craftmate_client/auth/login/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({
    required this.focusNode,
  });

  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        String? errorText;
        if (state.email.displayError == EmailValidationError.empty) {
          errorText = 'Email is empty';
        } else if (state.email.displayError == EmailValidationError.invalid) {
          errorText = 'Invalid email';
        }

        final theme = Theme.of(context);

        return TextField(
          focusNode: focusNode,
          key: const Key('loginForm_emailInput_textField'),
          onChanged: (email) =>
              context.read<LoginBloc>().add(LoginEmailChanged(email)),
          onTapOutside: (_) => focusNode.unfocus(),
          keyboardType: TextInputType.emailAddress,
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
