import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/project_management/edit_project/bloc/recipe/edit_project_bloc.dart';
import 'package:craftmate_client/project_management/text_editor/bloc/text_editor_bloc.dart';
import 'package:craftmate_client/project_management/text_editor/models/text_editor_controller.dart';
import 'package:craftmate_client/project_management/text_editor/view/components/recipe_toolbar.dart';
import 'package:craftmate_client/project_management/text_editor/view/components/text_canvas.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:sticky_headers/sticky_headers.dart';

class ContentEditor extends StatelessWidget {
  const ContentEditor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    return BlocConsumer<TextEditorBloc, TextEditorState>(
      listener: _handleListener,
      builder: (context, state) {
        final dController = state.descriptionController ??
            TextEditorController(
              quillController: QuillController.basic(),
              focusNode: FocusNode(),
            );

        return TextEditor(
          controllers: state.controllers,
          scrollController: scrollController,
          descriptionController: dController,
        );
      },
    );
  }

  void _handleListener(BuildContext context, TextEditorState state) {
    const modalHelper = Modal.instance;
    final nav = Navigator.of(context);

    switch (state) {
      case Loading():
        modalHelper.showLoadingDialog(context);
      case Failed(:final errMessage):
        nav.pop();
        modalHelper.showConfirmationModal(
          context: context,
          content: Text(errMessage),
          title: 'Oops.',
          actions: [
            FilledButton(onPressed: nav.pop, child: const Text('Ok')),
          ],
        );
      case Inserted():
        nav.pop();
    }
  }
}

class TextEditor extends StatelessWidget {
  const TextEditor({
    super.key,
    required this.controllers,
    required this.scrollController,
    required this.descriptionController,
  });

  final List<TextEditorController> controllers;
  final ScrollController scrollController;
  final TextEditorController descriptionController;

  @override
  Widget build(BuildContext context) {
    final editors = [descriptionController, ...controllers];

    return ListView.separated(
      controller: scrollController,
      padding: const EdgeInsets.all(12.0),
      itemCount: editors.length,
      itemBuilder: (context, index) {
        final controller = editors[index];
        final theme = Theme.of(context);
        final firstTitle = index == 0 ? 'Description' : 'Step $index';

        return StickyHeader(
          controller: scrollController,
          header: ColoredBox(
            color: theme.colorScheme.surface,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 12.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        firstTitle,
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: theme.colorScheme.primary,
                        ),
                      ),
                      if (index != 0)
                        IconButton(
                          onPressed: () {
                            context.read<TextEditorBloc>().add(
                                  TextEditorEvent.editorRemovedAt(index: index),
                                );
                            context.read<EditProjectBloc>().add(
                                  const EditProjectChanged(),
                                );
                          },
                          icon: const Icon(Icons.delete),
                          iconSize: 24,
                        ),
                    ],
                  ),
                ),
                RecipeToolbar(
                  editorController: controller.quillController,
                ),
              ],
            ),
          ),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              EditorWithBorder(
                focusNode: controller.focusNode,
                controller: controller.quillController,
                scrollController: scrollController,
              ),
              OutlinedButton.icon(
                onPressed: () {
                  context.read<TextEditorBloc>().add(
                        TextEditorEvent.editorAddedAt(index: index),
                      );
                  context.read<EditProjectBloc>().add(
                        const EditProjectChanged(),
                      );
                },
                label: const Text('Add Step'),
                icon: const Icon(Icons.add),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(height: 12.0),
    );
  }
}

class EditorWithBorder extends StatelessWidget {
  const EditorWithBorder({
    super.key,
    required this.controller,
    this.focusNode,
    this.scrollController,
  });

  final QuillController controller;
  final FocusNode? focusNode;
  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    const minHeight = 200.0;

    return Card(
      clipBehavior: Clip.hardEdge,
      child: Column(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(
              minHeight: minHeight,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextCanvas(
                controller: controller,
                placeholder: 'Write something...',
                focusNode: focusNode,
                scrollController: scrollController,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
