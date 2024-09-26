import 'package:craftmate_client/auth/signup/bloc/sign_up_bloc.dart';
import 'package:craftmate_client/auth/signup/models/password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput(this.unfocusCallback);
  final void Function() unfocusCallback;

  @override
  Widget build(BuildContext context) {
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

        return _Field(
          key: const Key('signUpForm_passwordInput_textField'),
          bloc: bloc,
          unfocusCallback: unfocusCallback,
          errorText: errorText,
        );
      },
    );
  }
}

class _Field extends StatefulWidget {
  const _Field({
    super.key,
    required this.bloc,
    required this.unfocusCallback,
    required this.errorText,
  });

  final SignUpBloc bloc;
  final void Function() unfocusCallback;
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
      onChanged: (String password) => widget.bloc.add(
        SignUpPasswordChanged(password: password),
      ),
      onTapOutside: (_) => widget.unfocusCallback(),
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: 'Password',
        prefixIcon: Icon(
          Icons.password_outlined,
          color: widget.errorText == null ? null : theme.colorScheme.error,
        ),
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
        errorText: widget.errorText,
      ),
      obscureText: _obscureText,
    );
  }
}
