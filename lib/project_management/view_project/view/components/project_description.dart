import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class ProjectDescription extends StatelessWidget {
  const ProjectDescription({
    super.key,
    required this.descriptionJson,
  });

  final List<dynamic>? descriptionJson;

  @override
  Widget build(BuildContext context) {
    final document = Document.fromJson(descriptionJson!);
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
