import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill_extensions/flutter_quill_extensions.dart';

class StepToolBar extends StatelessWidget {
  const StepToolBar({
    super.key,
    required QuillController editorController,
  }) : _editorController = editorController;

  final QuillController _editorController;

  @override
  Widget build(BuildContext context) {
    return QuillToolbar(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          children: [
            QuillToolbarHistoryButton(
              controller: _editorController,
              isUndo: true,
            ),
            ToolbarStepButton(controller: _editorController),
            QuillToolbarToggleStyleButton(
              controller: _editorController,
              attribute: Attribute.bold,
            ),
            QuillToolbarToggleStyleButton(
              controller: _editorController,
              attribute: Attribute.italic,
            ),
            QuillToolbarToggleStyleButton(
              controller: _editorController,
              attribute: Attribute.underline,
            ),
            QuillToolbarSelectHeaderStyleDropdownButton(
              controller: _editorController,
            ),
            const VerticalDivider(),
            QuillToolbarColorButton(
              controller: _editorController,
              isBackground: false,
            ),
            QuillToolbarToggleStyleButton(
              controller: _editorController,
              attribute: Attribute.ul,
            ),
            QuillToolbarToggleStyleButton(
              controller: _editorController,
              attribute: Attribute.ol,
            ),
            const VerticalDivider(),
            QuillToolbarIndentButton(
              controller: _editorController,
              isIncrease: true,
            ),
            QuillToolbarIndentButton(
              controller: _editorController,
              isIncrease: false,
            ),
            QuillToolbarImageButton(controller: _editorController),
            QuillToolbarVideoButton(controller: _editorController),
          ],
        ),
      ),
    );
  }
}

class ToolbarStepButton extends StatelessWidget {
  const ToolbarStepButton({
    super.key,
    required this.controller,
  });

  final QuillController controller;

  @override
  Widget build(BuildContext context) {
    return QuillToolbarCustomButton(
      controller: controller,
      options: QuillToolbarCustomButtonOptions(
        icon: const Icon(Icons.checklist),
        tooltip: 'Add step',
        onPressed: () => _handleAfterButtonPressed(context),
      ),
    );
  }

  void _handleAfterButtonPressed(BuildContext context) {
    final cursorIndex = controller.index;

    const stepText = 'Step N: <Title>\n';

    controller.document.insert(cursorIndex, stepText);
    controller.formatText(
      cursorIndex,
      stepText.length - 1,
      Attribute.h1,
    );

    controller.updateSelection(
      TextSelection(
        baseOffset: cursorIndex + 5,
        extentOffset: cursorIndex + 6,
      ),
      ChangeSource.local,
    );

    controller.editorFocusNode?.requestFocus();
  }
}
