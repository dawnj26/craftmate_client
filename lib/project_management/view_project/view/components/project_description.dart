import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill_extensions/flutter_quill_extensions.dart';

class ProjectDescription extends StatelessWidget {
  const ProjectDescription({
    super.key,
    required this.descriptionJson,
  });

  final List<dynamic>? descriptionJson;

  @override
  Widget build(BuildContext context) {
    final controller = _createController();

    return QuillEditor.basic(
      controller: controller,
      configurations: QuillEditorConfigurations(
        showCursor: false,
        placeholder: 'No description',
        enableInteractiveSelection: false,
        embedBuilders: FlutterQuillEmbeds.editorBuilders(),
      ),
    );
  }

  QuillController _createController() {
    if (descriptionJson == null) {
      return QuillController(
        document: Document(),
        selection: const TextSelection.collapsed(offset: 0),
        readOnly: true,
      );
    }

    final document = Document.fromJson(descriptionJson!);
    final controller = QuillController(
      document: document,
      selection: const TextSelection.collapsed(offset: 0),
      readOnly: true,
    );

    return controller;
  }
}
