import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill_extensions/flutter_quill_extensions.dart';

class ProjectSteps extends StatelessWidget {
  const ProjectSteps({
    super.key,
    required this.stepJson,
  });

  final List<dynamic>? stepJson;

  @override
  Widget build(BuildContext context) {
    final controller = _createController();

    return QuillEditor.basic(
      controller: controller,
      configurations: QuillEditorConfigurations(
        placeholder: 'No steps',
        showCursor: false,
        enableInteractiveSelection: false,
        embedBuilders: FlutterQuillEmbeds.editorBuilders(),
      ),
    );
  }

  QuillController _createController() {
    if (stepJson == null) {
      return QuillController(
        document: Document(),
        selection: const TextSelection.collapsed(offset: 0),
        readOnly: true,
      );
    }

    final document = Document.fromJson(stepJson!);
    final controller = QuillController(
      document: document,
      selection: const TextSelection.collapsed(offset: 0),
      readOnly: true,
    );

    return controller;
  }
}
