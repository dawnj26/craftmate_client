import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/project_management/create_project/blank_project/bloc/blank_project_bloc.dart';
import 'package:craftmate_client/project_management/create_project/blank_project/models/title.dart';
import 'package:craftmate_client/project_management/create_project/blank_project/view/components/visibility_dropdown.dart';
import 'package:craftmate_client/project_management/view_project/view/view_project_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:project_repository/project_repository.dart';

class BlankProjectCreateScreen extends StatefulWidget {
  const BlankProjectCreateScreen({super.key});

  @override
  State<BlankProjectCreateScreen> createState() =>
      _BlankProjectCreateScreenState();
}

class _BlankProjectCreateScreenState extends State<BlankProjectCreateScreen> {
  final _tagController = TextEditingController();
  final _tagFocusNode = FocusNode();
  final _titleFocusNode = FocusNode();

  @override
  void dispose() {
    // TODO: implement dispose
    _tagController.dispose();
    _tagFocusNode.dispose();
    _titleFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BlankProjectBloc, BlankProjectState>(
      listener: _handleState,
      builder: (context, state) {
        if (state is BlankProjectInitial || state is BlankProjectLoading) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Blank project'),
            ),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        return Scaffold(
          appBar: AppBar(
            title: const Text('Blank project'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const _VisibilitySwitch(),
                const Gap(12.0),
                _CreateProjectForm(
                  tagController: _tagController,
                  tagFocusNode: _tagFocusNode,
                  titleFocusNode: _titleFocusNode,
                ),
                const Gap(12.0),
                BlocBuilder<BlankProjectBloc, BlankProjectState>(
                  buildWhen: (previous, current) => previous != current,
                  builder: (context, state) {
                    String? errorText;

                    if (state is BlankProjectInvalid &&
                        state.selectedCategory.id == -1) {
                      errorText = 'Category is required';
                    }

                    return ProjectCategoryDropdown(
                      errorText: errorText,
                      categories: state.categories,
                      initialSelection: state.categories.first,
                      onSelected: (category) {
                        if (category == null) {
                          return;
                        }

                        context.read<BlankProjectBloc>().add(
                              BlankProjectCategoryChange(category: category),
                            );
                      },
                    );
                  },
                ),
                const Gap(40.0),
                FilledButton(
                  onPressed: () => _createProject(context, _tagController),
                  child: const Text('Create Project'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _handleState(BuildContext context, BlankProjectState state) {
    if (state is BlankProjectInProgress) {
      Modal.instance.showLoadingDialog(context);
    } else if (state is BlankProjectFailed) {
      Navigator.of(context).pop();

      _showSnackbar(context, state.errorMsg);
    } else if (state is BlankProjectSuccess) {
      Navigator.of(context).pop();
      Navigator.of(context)
          .pushReplacement(ViewProjectPage.route(state.project.id));
    }
  }

  void _showSnackbar(BuildContext context, String textMsg) {
    final msg = SnackBar(
      content: Text(
        textMsg,
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(msg);
  }

  void _createProject(
    BuildContext context,
    TextEditingController tagController,
  ) {
    String? tags;
    if (tagController.text.isNotEmpty) {
      tags = tagController.text;
    }

    context
        .read<BlankProjectBloc>()
        .add(BlankProjectCreate(tags: tags?.trim()));
  }
}

class ProjectCategoryDropdown extends StatelessWidget {
  const ProjectCategoryDropdown({
    super.key,
    required this.categories,
    required this.errorText,
    this.initialSelection,
    this.onSelected,
  });

  final String? errorText;
  final List<ProjectCategory> categories;
  final ProjectCategory? initialSelection;
  final void Function(ProjectCategory?)? onSelected;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);

    return DropdownMenu<ProjectCategory>(
      errorText: errorText,
      onSelected: onSelected,
      leadingIcon: const Icon(Icons.category_outlined),
      width: screenSize.width - 24,
      menuHeight: screenSize.height * 0.3,
      initialSelection: initialSelection,
      dropdownMenuEntries: categories
          .map(
            (e) => DropdownMenuEntry(value: e, label: e.name),
          )
          .toList(),
    );
  }
}

class _VisibilitySwitch extends StatelessWidget {
  const _VisibilitySwitch();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlankProjectBloc, BlankProjectState>(
      buildWhen: (previous, current) =>
          previous.visibility != current.visibility,
      builder: (context, state) {
        final bloc = context.read<BlankProjectBloc>();
        final screenWidth = MediaQuery.of(context).size.width;

        return Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Visibility'),
                const Gap(4.0),
                VisibilityDropdown(
                  width: screenWidth * 0.43,
                  visibility: state.visibility,
                  onSelected: (visibility) {
                    if (visibility == null) {
                      return;
                    }

                    bloc.add(
                      BlankProjectToggleVisibility(visibility: visibility),
                    );
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class _CreateProjectForm extends StatelessWidget {
  const _CreateProjectForm({
    required this.tagController,
    required this.tagFocusNode,
    required this.titleFocusNode,
  });

  final TextEditingController tagController;
  final FocusNode tagFocusNode;
  final FocusNode titleFocusNode;

  @override
  Widget build(BuildContext context) {
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
                bloc.add(BlankProjectTitleChange(title: value.trim()));
              },
              multiline: false,
            );
          },
        ),
        const Gap(12.0),
        _CustomTextField(
          controller: tagController,
          labelText: 'Tags (optional)',
          multiline: false,
          icon: const Icon(Icons.category),
          helperText: 'Separated by whitespaces',
          focusNode: tagFocusNode,
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
