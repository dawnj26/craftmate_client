import 'package:craftmate_client/helpers/alert/alert.dart';
import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/project_management/edit_project/bloc/recipe/edit_project_bloc.dart';
import 'package:craftmate_client/project_management/text_editor/bloc/text_editor_bloc.dart';
import 'package:craftmate_client/project_management/text_editor/view/text_editor_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_repository/project_repository.dart';

class EditRecipeScreen extends StatefulWidget {
  const EditRecipeScreen({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  State<EditRecipeScreen> createState() => _EditRecipeScreenState();
}

class _EditRecipeScreenState extends State<EditRecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<EditProjectBloc, EditProjectState>(
      listenWhen: (previous, current) => current is! EditProjectDirty,
      listener: _editDescriptionListener,
      child: PopScope(
        canPop: false,
        onPopInvokedWithResult: _handlePop,
        child: Scaffold(
          floatingActionButton: BlocBuilder<EditProjectBloc, EditProjectState>(
            buildWhen: (previous, current) => current is EditProjectDirty,
            builder: (context, state) {
              if (state is EditProjectDirty) {
                return FloatingActionButton(
                  onPressed: _handleSave,
                  child: const Icon(Icons.save),
                );
              }
              return const FloatingActionButton(
                onPressed: null,
                child: Icon(Icons.save_outlined),
              );
            },
          ),
          appBar: AppBar(
            title: const Text('Edit description'),
            actions: [
              TextButton.icon(
                onPressed: () {
                  final textEditorBloc =
                      BlocProvider.of<TextEditorBloc>(context);
                  textEditorBloc.add(const TextEditorEvent.editorAdded());
                  context
                      .read<EditProjectBloc>()
                      .add(const EditProjectChanged());
                },
                label: const Text('Add step'),
                icon: const Icon(Icons.add),
              ),
            ],
          ),
          body: const TextEditorPage(),
        ),
      ),
    );
  }

  void _editDescriptionListener(BuildContext context, EditProjectState state) {
    final nav = Navigator.of(context);

    if (state is EditProjectLoading) {
      Modal.instance.showLoadingDialog(context);
    } else if (state is EditProjectFailed) {
      nav.pop();
      Alert.instance.showSnackbar(context, state.errMessage);
    } else if (state is EditProjectClean) {
      // !Pop loading dialog
      nav.pop();

      if (state.shouldExit) {
        nav.pop();
        return;
      }

      Alert.instance.showSnackbar(context, 'Saved successfully');
    }
  }

  void _handleSave() {
    FocusScope.of(context).unfocus();
    final textEditorBloc = context.read<TextEditorBloc>();

    BlocProvider.of<EditProjectBloc>(context).add(
      EditProjectRecipeSaved(
        newDescription: textEditorBloc.state.descriptionController!,
        newSteps: textEditorBloc.state.controllers,
        currentProject: widget.project,
        shouldExit: true,
      ),
    );
  }

  Future<void> _handlePop(bool didPop, Object? result) async {
    if (didPop) {
      return;
    }
    final bloc = BlocProvider.of<EditProjectBloc>(context);
    final currentState = bloc.state;
    final isProjectChanged =
        currentState is EditProjectDirty || currentState is EditProjectFailed;

    // unfocus any focused node
    WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();

    if (isProjectChanged) {
      final shouldSave = await Modal.instance.showConfirmationModal(
        context: context,
        content: const Text('Do you want to save your changes?'),
        title: 'Save changes',
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(false);
            },
            child: const Text('Discard'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: const Text('Save'),
          ),
        ],
      );

      if (shouldSave == null) {
        return;
      }

      if (mounted && shouldSave) {
        final editorState = BlocProvider.of<TextEditorBloc>(context).state;
        bloc.add(
          EditProjectRecipeSaved(
            newDescription: editorState.descriptionController!,
            newSteps: editorState.controllers,
            currentProject: widget.project,
            shouldExit: true,
          ),
        );
      } else if (mounted) {
        Navigator.of(context).pop();
      }
    } else {
      Navigator.of(context).pop();
    }
  }
}
