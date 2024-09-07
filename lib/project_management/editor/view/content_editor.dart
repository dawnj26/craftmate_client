import 'package:craftmate_client/project_management/editor/view/description_toolbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill_extensions/flutter_quill_extensions.dart';

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
    return TextEditor(
      controller: controller,
      useDescriptionToolbar: canAddStep,
    );
  }
}

class TextEditor extends StatelessWidget {
  const TextEditor({
    super.key,
    required this.controller,
    required this.useDescriptionToolbar,
  });

  final QuillController controller;
  final bool useDescriptionToolbar;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DescriptionToolBar(editorController: controller),
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
}
