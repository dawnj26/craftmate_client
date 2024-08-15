import 'package:craftmate_client/project_management/cubits/step_title/cubit/step_title_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill_extensions/flutter_quill_extensions.dart';

class BlankProjectScreen extends StatelessWidget {
  const BlankProjectScreen({
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
            onPressed: () {
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
            },
            label: const Text('Edit title'),
            icon: const Icon(Icons.edit),
          ),
        ],
      ),
      body: const SampleEditor(),
    );
  }
}

class SampleEditor extends StatefulWidget {
  const SampleEditor({super.key});

  @override
  State<SampleEditor> createState() => _SampleEditorState();
}

class _SampleEditorState extends State<SampleEditor> {
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
        QuillToolbar(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              children: [
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
              ],
            ),
          ),
        ),
        const Divider(
          indent: 12.0,
          endIndent: 12.0,
        ),
        Expanded(
          flex: 5,
          child: QuillEditor.basic(
            controller: _editorController,
            configurations: const QuillEditorConfigurations(
              padding: EdgeInsets.all(12.0),
              placeholder: 'Enter you shit here',
            ),
          ),
        ),
      ],
    );
  }
}
