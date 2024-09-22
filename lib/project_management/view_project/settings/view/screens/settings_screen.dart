import 'package:craftmate_client/helpers/alert/alert.dart';
import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/project_management/create_project/blank_project/models/title.dart';
import 'package:craftmate_client/project_management/view_project/settings/bloc/settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return BlocListener<SettingsBloc, SettingsState>(
      listener: _handleState,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'General',
                  style: textTheme.headlineMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
                const Gap(24.0),
                const GeneralSettings(),
                const Gap(24.0),
                Text(
                  'Danger Zone',
                  style: textTheme.headlineMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
                const Gap(12.0),
                const DangerSettings(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleState(BuildContext context, SettingsState state) {
    final navigator = Navigator.of(context);

    if (state is SettingsLoading) {
      Modal.instance.showLoadingDialog(context);
    } else if (state is SettingsFailed) {
      Navigator.of(context).pop();
      Modal.instance.showConfirmationModal(
        context: context,
        message: state.errMessage,
        title: 'Oops!',
      );
    } else if (state is SettingsSavedSuccess) {
      navigator.pop();
      Alert.instance.showSnackbar(context, 'Saved successfully');
    } else if (state is SettingsDeleteSuccess) {
      // pop loading dialog
      navigator.pop();
      // pop settings screen
      navigator.pop();
      // pop view project screen
      navigator.pop();
      Alert.instance.showSnackbar(context, 'Project deleted successfully');
    }
  }
}

class GeneralSettings extends StatelessWidget {
  const GeneralSettings({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final initState = BlocProvider.of<SettingsBloc>(context).state;
    final textTheme = theme.textTheme;
    final titleController = TextEditingController();
    final tagsController = TextEditingController();

    titleController.text = initState.projectTitle.value;
    tagsController.text = initState.project.tags?.join(' ') ?? '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Project title',
          style: textTheme.labelLarge,
        ),
        const Gap(4.0),
        BlocBuilder<SettingsBloc, SettingsState>(
          buildWhen: (previous, current) =>
              previous.projectTitle != current.projectTitle,
          builder: (context, state) {
            final bloc = BlocProvider.of<SettingsBloc>(context);

            String? errText;
            if (state.projectTitle.displayError ==
                ProjectTitleValidationError.empty) {
              errText = 'Title must not be empty.';
            }

            return TextField(
              key: const Key('projectSettings_title_textfield'),
              controller: titleController,
              decoration: InputDecoration(
                filled: true,
                errorText: errText,
              ),
              onChanged: (value) => bloc.add(SettingsTitleChanged(value)),
            );
          },
        ),
        const Gap(12.0),
        Text(
          'Tags',
          style: textTheme.labelLarge,
        ),
        const Gap(4.0),
        TextField(
          controller: tagsController,
          decoration: const InputDecoration(
            filled: true,
            helperText: 'Separated by whitespaces',
          ),
        ),
        const Gap(12.0),
        FilledButton(
          onPressed: () {
            final tags =
                tagsController.text.isEmpty ? null : tagsController.text;
            BlocProvider.of<SettingsBloc>(context).add(SettingsSaved(tags));
          },
          child: const Text('Save'),
        ),
      ],
    );
  }
}

class DangerSettings extends StatelessWidget {
  const DangerSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      buildWhen: (previous, current) =>
          previous.project.isPulic != current.project.isPulic,
      builder: (context, state) {
        final project = state.project;
        final visibility = project.isPulic ? 'public' : 'private';

        return Column(
          children: [
            _DangerOption(
              titleText: 'Change project visibility',
              subtitleText: 'This project is currently $visibility',
              onTap: () => _handleVisibility(context, project.isPulic),
            ),
            const Gap(4.0),
            _DangerOption(
              titleText: 'Delete this project',
              subtitleText:
                  'Once you delete a repository, there is no going back. Please be certain.',
              onTap: () => _handleDelete(context),
            ),
          ],
        );
      },
    );
  }

  void _handleVisibility(BuildContext context, bool isPublic) {
    final bloc = BlocProvider.of<SettingsBloc>(context);
    final visibilityText = !isPublic ? 'public' : 'private';

    Modal.instance.showConfirmationModal(
      context: context,
      icon: const Icon(Icons.visibility),
      message: 'This project visibility will be $visibilityText. Are you sure?',
      title: 'Change visibility',
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: () {
            Navigator.of(context).pop();
            bloc.add(const SettingsVisibilityChanged());
          },
          child: const Text('Change'),
        ),
      ],
    );
  }

  void _handleDelete(BuildContext context) {
    final theme = Theme.of(context);

    Modal.instance.showConfirmationModal(
      context: context,
      icon: const Icon(Icons.delete_forever),
      message: 'This project will be deleted forever. Are you sure?',
      title: 'Delete project',
      actions: [
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: theme.colorScheme.error,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        FilledButton(
          style: FilledButton.styleFrom(
            backgroundColor: theme.colorScheme.error,
            foregroundColor: theme.colorScheme.onError,
          ),
          onPressed: () {
            Navigator.of(context).pop();
            BlocProvider.of<SettingsBloc>(context)
                .add(const SettingsProjectDeleted());
          },
          child: const Text('Delete'),
        ),
      ],
    );
  }
}

class _DangerOption extends StatelessWidget {
  const _DangerOption({
    required this.titleText,
    required this.subtitleText,
    this.onTap,
  });

  final void Function()? onTap;
  final String titleText;
  final String subtitleText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      color: colorScheme.surface,
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: colorScheme.error,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        onTap: onTap,
        title: Text(titleText),
        subtitle: Text(subtitleText),
        trailing: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
