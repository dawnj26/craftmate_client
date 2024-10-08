import 'package:craftmate_client/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill_extensions/flutter_quill_extensions.dart';

class TextCanvas extends StatelessWidget {
  const TextCanvas({
    super.key,
    required this.controller,
    required this.placeholder,
    this.focusNode,
    this.scrollController,
  });

  final QuillController controller;
  final String placeholder;
  final FocusNode? focusNode;
  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        logger.info('TextCanvas onTap');
      },
      child: QuillEditor.basic(
        controller: controller,
        focusNode: focusNode,
        scrollController: scrollController,
        configurations: QuillEditorConfigurations(
          padding: const EdgeInsets.all(12.0),
          placeholder: placeholder,
          embedBuilders: FlutterQuillEmbeds.editorBuilders(),
          scrollable: false,
          // onTapOutside: (event, focusNode) => focusNode.unfocus(),
        ),
      ),
    );
  }
}
