import 'package:craftmate_client/project_management/edit_project/view/editor/editor_toolbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill_extensions/flutter_quill_extensions.dart';

class ContentEditor extends StatelessWidget {
  const ContentEditor({super.key, required this.controller});

  final QuillController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EditorToolBar(editorController: controller),
        Expanded(
          child: QuillEditor.basic(
            controller: controller,
            configurations: QuillEditorConfigurations(
              padding: const EdgeInsets.all(12.0),
              placeholder: 'Add description here',
              embedBuilders: FlutterQuillEmbeds.editorBuilders(),
            ),
          ),
        ),
      ],
    );
  }
}
