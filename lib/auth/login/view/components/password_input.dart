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

        return _Field(
          key: const Key('loginForm_passwordInput_textField'),
          focusNode: focusNode,
          errorText: errorText,
        );
      },
    );
  }
}

class _Field extends StatefulWidget {
  const _Field({
    super.key,
    required this.focusNode,
    required this.errorText,
  });

  final FocusNode focusNode;
  final String? errorText;

  @override
  State<_Field> createState() => _FieldState();
}

class _FieldState extends State<_Field> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextField(
      focusNode: widget.focusNode,
      onTapOutside: (_) => widget.focusNode.unfocus(),
      onChanged: (password) =>
          context.read<LoginBloc>().add(LoginPasswordChanged(password)),
      decoration: InputDecoration(
        labelText: 'Password',
        border: const OutlineInputBorder(),
        prefixIcon: Icon(
          Icons.lock_outline,
          color: widget.errorText == null ? null : theme.colorScheme.error,
        ),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          icon: Icon(
            _obscureText
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined,
          ),
        ),
        errorText: widget.errorText,
      ),
      obscureText: _obscureText,
    );
  }
}
