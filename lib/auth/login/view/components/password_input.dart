import 'package:craftmate_client/auth/login/bloc/login_bloc.dart';
import 'package:craftmate_client/auth/login/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    required this.focusNode,
  });

  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        String? errorText;
        if (state.password.displayError == PasswordValidationError.empty) {
          errorText = 'Password is empty';
        }

        final theme = Theme.of(context);
        return TextField(
          focusNode: focusNode,
          onTapOutside: (_) => focusNode.unfocus(),
          key: const Key('loginForm_passwordInput_textField'),
          onChanged: (password) =>
              context.read<LoginBloc>().add(LoginPasswordChanged(password)),
          decoration: InputDecoration(
            labelText: 'Password',
            border: const OutlineInputBorder(),
            prefixIcon: Icon(
              Icons.lock_outline,
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
