import 'package:craftmate_client/auth/signup/bloc/sign_up_bloc.dart';
import 'package:craftmate_client/auth/signup/models/confirm_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfirmPasswordInput extends StatelessWidget {
  const ConfirmPasswordInput(this.unfocusCallback);
  final void Function() unfocusCallback;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) =>
          previous.password != current.password ||
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

        return _Field(
          key: const Key('signUpForm_confirmPasswordInput_textField'),
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
        SignUpConfirmPasswordChanged(confirmPassword: password),
      ),
      onTapOutside: (_) => widget.unfocusCallback(),
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: 'Confirm password',
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
