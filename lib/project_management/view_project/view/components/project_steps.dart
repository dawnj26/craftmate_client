import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class ProjectSteps extends StatelessWidget {
  const ProjectSteps({
    super.key,
    required this.stepJson,
  });

  final List<dynamic>? stepJson;

  @override
  Widget build(BuildContext context) {
    final document = Document.fromJson(stepJson!);
    final controller = QuillController(
      document: document,
      selection: const TextSelection.collapsed(offset: 0),
      readOnly: true,
    );

    return QuillEditor.basic(
      controller: controller,
      configurations: const QuillEditorConfigurations(
        showCursor: false,
        enableInteractiveSelection: false,
      ),
    );
  }
}
