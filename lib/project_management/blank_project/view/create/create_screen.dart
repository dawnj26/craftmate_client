import 'package:craftmate_client/project_management/blank_project/bloc/blank_project_bloc.dart';
import 'package:craftmate_client/project_management/blank_project/models/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class BlankProjectCreateScreen extends StatelessWidget {
  const BlankProjectCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blank project'),
      ),
      body: const Padding(
        padding: EdgeInsets.only(
          left: 12.0,
          right: 12.0,
          bottom: 12.0,
        ),
        child: Column(
          children: [
            _Switch(),
            Gap(4.0),
            _Form(),
          ],
        ),
      ),
    );
  }
}

class _Switch extends StatelessWidget {
  const _Switch();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlankProjectBloc, BlankProjectState>(
      buildWhen: (previous, current) => previous.isPulic != current.isPulic,
      builder: (context, state) {
        final bloc = context.read<BlankProjectBloc>();

        return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text('Public'),
            const Gap(8.0),
            Switch(
              value: state.isPulic,
              onChanged: (value) {
                bloc.add(
                  BlankProjectToggleVisibility(isPulic: value),
                );
              },
            ),
          ],
        );
      },
    );
  }
}

class _Form extends StatelessWidget {
  const _Form();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        BlocBuilder<BlankProjectBloc, BlankProjectState>(
          buildWhen: (previous, current) {
            return previous.projectTitle.value != current.projectTitle.value;
          },
          builder: (context, state) {
            String? errorText;
            final bloc = context.read<BlankProjectBloc>();

            if (state.projectTitle.displayError ==
                ProjectTitleValidationError.empty) {
              errorText = 'Title is required';
            }

            return _CustomTextField(
              key: const Key('projectTitle_textField_blankProject'),
              icon: const Icon(Icons.text_fields),
              labelText: 'Project title',
              errorText: errorText,
              onChanged: (value) {
                bloc.add(BlankProjectTitleChange(title: value));
              },
              multiline: false,
            );
          },
        ),
        const Gap(12.0),
        Builder(
          builder: (_) => buildTextField(
            icon: const Icon(Icons.description),
            label: 'Description (optional)',
            multiline: true,
          ),
        ),
        const Gap(12.0),
        Builder(
          builder: (_) => buildTextField(
            icon: const Icon(Icons.category),
            label: 'Categories/Tags',
            helperText: 'Separated by whitespaces',
          ),
        ),
        const Gap(40.0),
        FilledButton(
          onPressed: () {},
          child: const Text('Create Project'),
        ),
      ],
    );
  }

  Widget buildTextField({
    required String label,
    bool multiline = false,
    required Icon icon,
    String? helperText,
    String? errorText,
    void Function(String)? onChanged,
    Key? key,
  }) {
    final focusNode = FocusNode();

    return _CustomTextField(
      key: key,
      helperText: helperText,
      icon: icon,
      focusNode: focusNode,
      labelText: label,
      multiline: multiline,
      errorText: errorText,
      onChanged: onChanged,
    );
  }
}

class _CustomTextField extends StatelessWidget {
  const _CustomTextField({
    super.key,
    this.onChanged,
    required this.labelText,
    required this.multiline,
    this.focusNode,
    required this.icon,
    this.helperText,
    this.errorText,
  });

  final String labelText;
  final bool multiline;
  final FocusNode? focusNode;
  final Icon icon;
  final String? helperText;
  final String? errorText;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: focusNode,
      decoration: InputDecoration(
        filled: true,
        prefixIcon: icon,
        labelText: labelText,
        helperText: helperText,
        errorText: errorText,
      ),
      minLines: multiline ? 3 : null,
      maxLines: multiline ? 3 : null,
      onTapOutside: unfocus,
      keyboardType: TextInputType.multiline,
      onChanged: onChanged,
    );
  }

  void unfocus(_) {
    focusNode?.unfocus();
  }
}
