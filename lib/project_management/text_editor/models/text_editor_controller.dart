import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class TextEditorController {
  const TextEditorController({
    required this.quillController,
    required this.focusNode,
  });

  final QuillController quillController;
  final FocusNode focusNode;

  void dispose() {
    quillController.dispose();
    focusNode.dispose();
  }
}
