import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/project_management/text_editor/bloc/text_editor_bloc.dart';
import 'package:craftmate_client/project_management/text_editor/view/description_toolbar.dart';
import 'package:craftmate_client/project_management/text_editor/view/step_toolbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill_extensions/flutter_quill_extensions.dart';
import 'package:project_repository/project_repository.dart';

class ContentEditor extends StatelessWidget {
  const ContentEditor({
    super.key,
    required this.controller,
    required this.canAddStep,
  });

  final QuillController controller;
  final bool canAddStep;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TextEditorBloc(
        projectRepo: RepositoryProvider.of<ProjectRepository>(context),
      ),
      child: BlocListener<TextEditorBloc, TextEditorState>(
        listener: _handleListener,
        child: TextEditor(
          controller: controller,
          useStepToolbar: canAddStep,
        ),
      ),
    );
  }

  void _handleListener(BuildContext context, TextEditorState state) {
    const modalHelper = Modal.instance;
    final nav = Navigator.of(context);

    if (state is TextEditorLoading) {
      modalHelper.showLoadingDialog(context);
    } else if (state is TextEditorFailed) {
      nav.pop();
      modalHelper.showConfirmationModal(
        context: context,
        content: Text(state.errMessage),
        title: 'Oops.',
        actions: [
          FilledButton(onPressed: nav.pop, child: const Text('Ok')),
        ],
      );
    } else if (state is TextEditorNormal) {
      nav.pop();
    }
  }
}

class TextEditor extends StatelessWidget {
  const TextEditor({
    super.key,
    required this.controller,
    required this.useStepToolbar,
  });

  final QuillController controller;
  final bool useStepToolbar;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocProvider.value(
          value: BlocProvider.of<TextEditorBloc>(context),
          child: _buildToolbar(),
        ),
        Expanded(
          key: const Key('editProject_textEditor'),
          child: QuillEditor.basic(
            controller: controller,
            configurations: QuillEditorConfigurations(
              padding: const EdgeInsets.all(12.0),
              placeholder: 'Add description here',
              embedBuilders: FlutterQuillEmbeds.editorBuilders(),
              onTapOutside: (event, focusNode) => focusNode.unfocus(),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildToolbar() {
    if (useStepToolbar) {
      return StepToolBar(editorController: controller);
    }

    return DescriptionToolBar(editorController: controller);
  }
}
