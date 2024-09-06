import 'package:craftmate_client/globals.dart';
import 'package:craftmate_client/helpers/alert/alert.dart';
import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/project_management/edit_project/bloc/edit_project_bloc.dart';
import 'package:craftmate_client/project_management/edit_project/view/editor/content_editor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:project_repository/project_repository.dart';

class EditDescriptionScreen extends StatefulWidget {
  const EditDescriptionScreen({super.key, required this.project});

  final Project project;

  @override
  State<EditDescriptionScreen> createState() => _EditDescriptionScreenState();
}

class _EditDescriptionScreenState extends State<EditDescriptionScreen> {
  final _editorFocusNode = FocusNode();
  late final QuillController _editorController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // Load project document
    if (widget.project.description == null) {
      _editorController =
          QuillController.basic(editorFocusNode: _editorFocusNode);
    } else {
      final document = Document.fromJson(widget.project.description!);
      _editorController = QuillController(
        document: document,
        selection: const TextSelection.collapsed(offset: 0),
        editorFocusNode: _editorFocusNode,
      );
    }

    final bloc = BlocProvider.of<EditProjectBloc>(context);

    // Listen to document changes
    _editorController.changes.listen((docChange) {
      bloc.add(const EditProjectChanged());
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _editorFocusNode.dispose();
    _editorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<EditProjectBloc, EditProjectState>(
      listenWhen: (previous, current) => current is! EditProjectDirty,
      listener: _editDescriptionListener,
      child: PopScope(
        canPop: false,
        onPopInvokedWithResult: _handlePop,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Edit description'),
            actions: [
              BlocBuilder<EditProjectBloc, EditProjectState>(
                buildWhen: (previous, current) =>
                    previous.runtimeType != current.runtimeType,
                builder: (context, state) {
                  final isProjectChanged = state is EditProjectDirty;

                  return IconButton(
                    onPressed: isProjectChanged ? _handleSave : null,
                    icon: const Icon(Icons.save),
                  );
                },
              ),
            ],
          ),
          body: ContentEditor(
            controller: _editorController,
          ),
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
    } else if (state is EditProjectSuccess) {
      // !Pop loading dialog
      nav.pop();
      // !Pop Edit Screen
      nav.pop();
    } else if (state is EditProjectClean) {
      // !Pop loading dialog
      nav.pop();
      Alert.instance.showSnackbar(context, 'Saved successfully');
    }
  }

  void _handleSave() {
    final newDescription = _editorController.document.toDelta().toJson();
    BlocProvider.of<EditProjectBloc>(context).add(
      EditProjectDescriptionSaved(
        newDescription: newDescription,
        currentProject: widget.project,
      ),
    );
  }

  Future<void> _handlePop(bool didPop, Object? result) async {
    if (didPop) {
      return;
    }
    final bloc = BlocProvider.of<EditProjectBloc>(context);
    final currentState = bloc.state;
    final isProjectChanged = currentState is EditProjectDirty;

    if (isProjectChanged) {
      final shouldSave = await Modal.instance.showConfirmationModal(
        context: context,
        message: 'Do you want to save your changes?',
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

      if (mounted && shouldSave) {
        final newDescription = _editorController.document.toDelta().toJson();
        logger.info(newDescription);
        bloc.add(
          EditProjectDescriptionSavedOnExit(
            newDescription: newDescription,
            currentProject: widget.project,
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
