import 'package:craftmate_client/project_management/text_editor/bloc/text_editor_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill_extensions/flutter_quill_extensions.dart';

class DescriptionToolBar extends StatelessWidget {
  const DescriptionToolBar({
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
