import 'package:craftmate_client/auth/signup/bloc/sign_up_bloc.dart';
import 'package:craftmate_client/auth/signup/models/name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NameInput extends StatelessWidget {
  const NameInput(this.unfocusCallback);

  final void Function() unfocusCallback;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.name != current.name,
      builder: (context, state) {
        final bloc = context.read<SignUpBloc>();
        String? errorText;

        if (state.name.displayError == NameValidationError.empty) {
          errorText = 'Name is required';
        }

        return TextField(
          key: const Key('signUpForm_nameInput_textField'),
          onChanged: (String name) => bloc.add(
            SignUpNameChanged(name: name),
          ),
          onTapOutside: (_) => unfocusCallback(),
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: 'Name',
            prefixIcon: Icon(
              Icons.person_outlined,
              color: errorText == null ? null : theme.colorScheme.error,
            ),
            errorText: errorText,
          ),
        );
      },
    );
  }
}
