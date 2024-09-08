import 'package:craftmate_client/project_management/cubits/step_title/cubit/step_title_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditStepScreen extends StatelessWidget {
  const EditStepScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        // appBar: AppBar(
        //   title: BlocBuilder<StepTitleCubit, StepTitleState>(
        //     buildWhen: (previous, current) => previous.title != current.title,
        //     builder: (context, state) {
        //       return Text(state.title);
        //     },
        //   ),
        //   actions: [
        //     TextButton.icon(
        //       onPressed: () => showChangeTitle(context),
        //       label: const Text('Edit title'),
        //       icon: const Icon(Icons.edit),
        //     ),
        //   ],
        // ),
        // body: const ContentEditor(),
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
