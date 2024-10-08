import 'package:craftmate_client/globals.dart';
import 'package:craftmate_client/project_management/edit_project/bloc/edit_project_bloc.dart';
import 'package:craftmate_client/project_management/text_editor/bloc/text_editor_bloc.dart';
import 'package:craftmate_client/project_management/text_editor/view/components/content_editor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextEditorPage extends StatelessWidget {
  const TextEditorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TextEditorBloc, TextEditorState>(
      builder: (context, state) {
        state.maybeWhen(
          orElse: () {},
          loaded: (controllers, descriptionController) {
            logger.info('Initialized text editor page');
            final editBloc = BlocProvider.of<EditProjectBloc>(context);

            for (final controller in controllers) {
              controller.quillController.document.changes.listen((docChange) {
                editBloc.add(const EditProjectChanged());
              });
            }
            descriptionController?.quillController.document.changes
                .listen((docChange) {
              editBloc.add(const EditProjectChanged());
            });
          },
        );

        return const ContentEditor();
      },
    );
  }
}
