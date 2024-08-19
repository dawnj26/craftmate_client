import 'package:craftmate_client/project_management/cubits/step_title/cubit/step_title_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill_extensions/flutter_quill_extensions.dart';

class EditStepScreen extends StatelessWidget {
  const EditStepScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<StepTitleCubit, StepTitleState>(
          buildWhen: (previous, current) => previous.title != current.title,
          builder: (context, state) {
            return Text(state.title);
          },
        ),
        actions: [
          TextButton.icon(
            onPressed: () => showChangeTitle(context),
            label: const Text('Edit title'),
            icon: const Icon(Icons.edit),
          ),
        ],
      ),
      body: const ContentEditor(),
    );
  }

  void showChangeTitle(BuildContext context) {
    final stepTitle = context.read<StepTitleCubit>();

    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        final controller = TextEditingController();

        controller.text = stepTitle.state.title;

        return AlertDialog(
          title: const Text('Step title'),
          content: TextField(
            controller: controller,
            decoration: const InputDecoration(
              // border: OutlineInputBorder(),
              labelText: 'Title',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () {
                stepTitle.changeTitle(controller.text);
                Navigator.of(context).pop();
              },
              child: const Text('Ok'),
            ),
          ],
        );
      },
    );
  }
}

class ContentEditor extends StatefulWidget {
  const ContentEditor({super.key});

  @override
  State<ContentEditor> createState() => _ContentEditorState();
}

class _ContentEditorState extends State<ContentEditor> {
  final _editorFocusNode = FocusNode();
  late final QuillController _editorController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _editorController =
        QuillController.basic(editorFocusNode: _editorFocusNode);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _editorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: QuillEditor(
            controller: _editorController,
            configurations: QuillEditorConfigurations(
              padding: const EdgeInsets.all(12.0),
              placeholder: 'Create your content here',
              embedBuilders: FlutterQuillEmbeds.editorBuilders(),
            ),
            focusNode: _editorFocusNode,
            scrollController: ScrollController(),
          ),
        ),
        EditorToolBar(editorController: _editorController),
      ],
    );
  }
}

class EditorToolBar extends StatelessWidget {
  const EditorToolBar({
    super.key,
    required QuillController editorController,
  }) : _editorController = editorController;

  final QuillController _editorController;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHigh,
      ),
      child: QuillToolbar(
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
              QuillToolbarSelectHeaderStyleButtons(
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
      ),
    );
  }
}
