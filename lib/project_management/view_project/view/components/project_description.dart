import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill_extensions/flutter_quill_extensions.dart';
import 'package:gap/gap.dart';
import 'package:project_repository/project_repository.dart' as p;

class ProjectDescription extends StatelessWidget {
  const ProjectDescription({
    super.key,
    required this.steps,
    required this.description,
  });

  final List<dynamic>? description;
  final List<p.Step>? steps;

  @override
  Widget build(BuildContext context) {
    final controllers = _createController();
    final theme = Theme.of(context);

    return Column(
      children: List.generate(
        controllers.length,
        (index) {
          final controller = controllers[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  index == 0 ? 'Description' : 'Step $index',
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                ),
                const Gap(8),
                StepCard(controller: controller),
              ],
            ),
          );
        },
      ),
    );
  }

  List<QuillController> _createController() {
    final c = <QuillController>[];
    if (description == null || description!.isEmpty) {
      c.add(QuillController.basic());
    } else {
      final document = Document.fromJson(description!);
      final controller = QuillController(
        document: document,
        selection: const TextSelection.collapsed(offset: 0),
      );
      c.add(controller);
    }

    if (steps != null && steps!.isNotEmpty) {
      for (final step in steps!) {
        if (step.content == null) {
          c.add(QuillController.basic());
        } else {
          final document = Document.fromJson(step.content!);
          final controller = QuillController(
            document: document,
            selection: const TextSelection.collapsed(offset: 0),
          );
          c.add(controller);
        }
      }
    }

    return c;
  }
}

class StepCard extends StatelessWidget {
  const StepCard({
    super.key,
    required this.controller,
  });

  final QuillController controller;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minHeight: 200,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: QuillEditor.basic(
            controller: controller,
            configurations: QuillEditorConfigurations(
              showCursor: false,
              scrollable: false,
              placeholder: 'No content',
              enableInteractiveSelection: false,
              embedBuilders: FlutterQuillEmbeds.editorBuilders(
                imageEmbedConfigurations: QuillEditorImageEmbedConfigurations(
                  onImageClicked: (imageSource) {},
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
