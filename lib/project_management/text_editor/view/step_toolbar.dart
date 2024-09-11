import 'package:craftmate_client/project_management/text_editor/bloc/text_editor_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
            QuillToolbarImageButton(
              controller: _editorController,
              options: QuillToolbarImageButtonOptions(
                imageButtonConfigurations: QuillToolbarImageConfigurations(
                  onImageInsertCallback: (image, controller) =>
                      _handleImageInsert(image, controller, context),
                ),
              ),
            ),
            QuillToolbarVideoButton(
              controller: _editorController,
              options: QuillToolbarVideoButtonOptions(
                videoConfigurations: QuillToolbarVideoConfigurations(
                  onVideoInsertCallback: (videoPath, controller) =>
                      _handleVideoInsert(videoPath, controller, context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _handleImageInsert(
    String imagePath,
    QuillController controller,
    BuildContext context,
  ) async {
    final bloc = BlocProvider.of<TextEditorBloc>(context);

    bloc.add(
      TextEditorImageInserted(imagePath: imagePath, controller: controller),
    );
  }

  Future<void> _handleVideoInsert(
    String videoPath,
    QuillController controller,
    BuildContext context,
  ) async {
    final bloc = BlocProvider.of<TextEditorBloc>(context);
    bloc.add(
      TextEditorVideoInserted(videoPath: videoPath, controller: controller),
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

    final currentLine =
        controller.document.queryChild(controller.selection.baseOffset).node;
    final hasText = currentLine != null && currentLine.length > 1;
    const stepText = 'Step No: Title';

    var insertIndex = cursorIndex + 1;
    if (hasText) {
      // calculate the index of end of the line
      insertIndex = currentLine.offset + currentLine.length;

      /*
        insert new line first to prevent applying
        style on the current text on cursor position
      */
      controller.document.insert(insertIndex - 1, '\n');
      insertIndex++;
    }

    // insert the text and apply h1 style
    controller.document.insert(insertIndex - 1, stepText);
    controller.formatText(
      insertIndex - 1,
      stepText.length,
      Attribute.h1,
    );

    // position before N in No in stepText
    const baseOffset = 5;

    // select the 'No' for easy replacement
    controller.updateSelection(
      TextSelection(
        baseOffset: insertIndex - 1 + baseOffset,
        extentOffset: insertIndex - 1 + baseOffset + 2,
      ),
      ChangeSource.local,
    );

    // focus again on the editor and to refresh the document
    controller.editorFocusNode?.requestFocus();
  }
}
