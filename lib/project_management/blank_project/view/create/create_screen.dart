import 'package:craftmate_client/project_management/blank_project/bloc/blank_project_bloc.dart';
import 'package:craftmate_client/project_management/blank_project/models/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class BlankProjectCreateScreen extends StatelessWidget {
  const BlankProjectCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<BlankProjectBloc, BlankProjectState>(
      listener: (context, state) {
        if (state is BlankProjectInProgress) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (_) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          );
        }

        if (state is BlankProjectFailed) {
          Navigator.of(context).pop();

          final msg = SnackBar(
            content: Text(
              state.errorMsg,
            ),
          );

          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(msg);
        }

        if (state is BlankProjectSuccess) {
          Navigator.of(context).pop();

          const msg = SnackBar(
            content: Text(
              'Created successfully',
            ),
          );

          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(msg);
        }
      },
      child: Scaffold(
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
    final tagController = TextEditingController();
    final tagFocusNode = FocusNode();
    final titleFocusNode = FocusNode();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        BlocBuilder<BlankProjectBloc, BlankProjectState>(
          buildWhen: (previous, current) {
            return previous.projectTitle != current.projectTitle;
          },
          builder: (context, state) {
            String? errorText;
            final bloc = context.read<BlankProjectBloc>();

            if (state.projectTitle.displayError ==
                ProjectTitleValidationError.empty) {
              errorText = 'Title is required';
            }

            return _CustomTextField(
              focusNode: titleFocusNode,
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
        _CustomTextField(
          controller: tagController,
          labelText: 'Categories/Tags (optional)',
          multiline: false,
          icon: const Icon(Icons.category),
          helperText: 'Separated by whitespaces',
          focusNode: tagFocusNode,
        ),
        const Gap(40.0),
        FilledButton(
          onPressed: () {
            String? tags;
            if (tagController.text.isNotEmpty) {
              tags = tagController.text;
            }

            context.read<BlankProjectBloc>().add(
                  BlankProjectCreate(tags: tags),
                );
          },
          child: const Text('Create Project'),
        ),
      ],
    );
  }
}

class _CustomTextField extends StatelessWidget {
  const _CustomTextField({
    this.controller,
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
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
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
