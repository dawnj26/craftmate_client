import 'package:craftmate_client/helpers/components/empty_message.dart';
import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/material_inventory/user_materials/views/screens/user_materials_screen.dart';
import 'package:craftmate_client/project_management/start_project/bloc/start/start_project_bloc.dart';
import 'package:craftmate_client/project_management/view_project/view/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:project_repository/project_repository.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:showcaseview/showcaseview.dart';

class StartProjectScreen extends StatefulWidget {
  const StartProjectScreen({super.key, required this.scrollController});

  final ItemScrollController scrollController;

  @override
  State<StartProjectScreen> createState() => _StartProjectScreenState();
}

class _StartProjectScreenState extends State<StartProjectScreen> {
  final _progressBarKey = GlobalKey();
  final _descriptionKey = GlobalKey();
  final _materialsKey = GlobalKey();
  final _procedureKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocListener<StartProjectBloc, StartProjectState>(
      listener: _handleState,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: BlocBuilder<StartProjectBloc, StartProjectState>(
            builder: (context, state) {
              switch (state) {
                case Initial() || Loading():
                  return AppBar();
              }

              final progress = state.completedSteps.isEmpty
                  ? 1.0
                  : state.completedSteps.where((element) => element).length /
                      state.completedSteps.length;

              return AppBar(
                title: Text(state.project.title),
                bottom: _ProgressBar(
                  progress: progress,
                  globalKey: _progressBarKey,
                ),
              );
            },
          ),
        ),
        body: BlocBuilder<StartProjectBloc, StartProjectState>(
          builder: (context, state) {
            switch (state) {
              case Initial() || Loading():
                return const Center(
                  child: CircularProgressIndicator(),
                );
            }

            return _Body(
              controller: widget.scrollController,
              project: state.project,
              descriptionKey: _descriptionKey,
              materialsKey: _materialsKey,
              procedureKey: _procedureKey,
            );
          },
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            context.read<StartProjectBloc>().add(
                  const StartProjectEvent.projectFinished(),
                );
          },
          label: const Text('Finish project'),
          icon: const Icon(Icons.check),
        ),
      ),
    );
  }

  void _handleState(BuildContext context, StartProjectState state) {
    switch (state) {
      case Loaded(:final showTutorial):
        if (showTutorial) {
          ShowCaseWidget.of(context).startShowCase([
            _progressBarKey,
            _descriptionKey,
            _materialsKey,
            _procedureKey,
          ]);
        }
      case Saving():
        Modal.instance.showLoadingDialog(context);
      case Finished():
        Navigator.of(context).pop();
        Modal.instance.showConfirmationModal(
          context: context,
          content: const Text('Project saved successfully'),
          title: 'Success',
          actions: [
            FilledButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
              child: const Text('Ok'),
            ),
          ],
        );
      case Failed(errMessage: final message):
        Navigator.of(context).pop();
        Modal.instance.showConfirmationModal(
          context: context,
          content: Text(message),
          title: 'Error',
          actions: [
            FilledButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Ok'),
            ),
          ],
        );
    }
  }
}

class _ProgressBar extends StatelessWidget implements PreferredSizeWidget {
  const _ProgressBar({
    required this.progress,
    required this.globalKey,
  });

  final double progress;
  final GlobalKey globalKey;

  @override
  Widget build(BuildContext context) {
    return Showcase(
      description: 'Track your progress',
      key: globalKey,
      child: TweenAnimationBuilder<double>(
        tween: Tween(begin: 0, end: progress),
        curve: Curves.ease,
        duration: const Duration(milliseconds: 200),
        builder: (context, value, _) {
          return LinearProgressIndicator(
            value: value,
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation<Color>(
              Theme.of(context).primaryColor,
            ),
          );
        },
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(6.0);
}

class _Body extends StatefulWidget {
  const _Body({
    required this.controller,
    required this.project,
    required this.descriptionKey,
    required this.materialsKey,
    required this.procedureKey,
  });

  final ItemScrollController controller;
  final Project project;
  final GlobalKey descriptionKey;
  final GlobalKey materialsKey;
  final GlobalKey procedureKey;

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  late List<QuillController> _controllers;
  late final List<Widget> _children;

  @override
  void initState() {
    // TODO: implement initState
    _controllers = _createController();
    _children = [
      Showcase(
        key: widget.descriptionKey,
        description: 'This is the project description',
        child: _Description(description: widget.project.description),
      ),
      Showcase(
        key: widget.materialsKey,
        description: 'These are the materials you need',
        child: _Materials(
          project: widget.project,
        ),
      ),
      Showcase(
        key: widget.procedureKey,
        description: 'These are the steps you need to follow',
        child: _Procedures(controllers: _controllers),
      ),
    ];

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    for (final element in _controllers) {
      element.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollablePositionedList.separated(
      padding: const EdgeInsets.all(12),
      itemScrollController: widget.controller,
      itemCount: _children.length,
      itemBuilder: (context, index) {
        return _children[index];
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 24);
      },
    );
  }

  List<QuillController> _createController() {
    if (widget.project.steps == null || widget.project.steps!.isEmpty) {
      return [];
    }

    return List.generate(
      widget.project.steps!.length,
      (index) {
        final step = widget.project.steps![index];
        final document = Document.fromJson(
          step.content ??
              [
                {'insert': '\n'},
              ],
        );
        return QuillController(
          document: document,
          selection: const TextSelection.collapsed(offset: 0),
          readOnly: true,
        );
      },
    );
  }
}

class _Materials extends StatelessWidget {
  const _Materials({
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    final materialsLength = project.materials?.length ?? 0;
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Label(title: 'Materials'),
        const SizedBox(height: 12),
        if (materialsLength == 0)
          Text(
            'No materials',
            style: theme.textTheme.titleLarge?.copyWith(
              color: theme.colorScheme.onSurface.withValues(alpha: 0.4),
              fontWeight: FontWeight.w300,
            ),
          )
        else
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              materialsLength,
              (index) {
                final material = project.materials![index];
                return MaterialCard(
                  material: material,
                  materialQuantity: material.materialQuantity,
                  trailing: const SizedBox(
                    width: 12,
                  ),
                );
              },
            ),
          ),
      ],
    );
  }
}

class _Procedures extends StatelessWidget {
  const _Procedures({
    required this.controllers,
  });

  final List<QuillController> controllers;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Label(title: 'Procedures'),
            TextButton.icon(
              onPressed: () {
                context.read<StartProjectBloc>().add(
                      const StartProjectEvent.allStepsCompleted(),
                    );
              },
              label: const Text('Mark all as done'),
              icon: const Icon(Icons.check),
            ),
          ],
        ),
        const SizedBox(height: 16),
        _Step(controllers: controllers),
      ],
    );
  }
}

class _Step extends StatelessWidget {
  const _Step({
    required this.controllers,
  });

  final List<QuillController> controllers;

  @override
  Widget build(BuildContext context) {
    if (controllers.isEmpty) {
      return const EmptyMessage(emptyMessage: 'No steps');
    }

    return Column(
      children: List.generate(controllers.length, (index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder<StartProjectBloc, StartProjectState>(
              builder: (context, state) {
                final isPreviousCompleted =
                    index == 0 || state.completedSteps[index - 1];
                final isNextCompleted = index != controllers.length - 1 &&
                    state.completedSteps[index + 1];

                return _StepHeader(
                  step: index + 1,
                  value: state.completedSteps[index],
                  onChanged: isNextCompleted
                      ? null
                      : (value) {
                          context.read<StartProjectBloc>().add(
                                StartProjectEvent.stepCompleteToggled(
                                  index,
                                ),
                              );
                        },
                  showCheckbox: isPreviousCompleted,
                );
              },
            ),
            const SizedBox(height: 8),
            StepCard(controller: controllers[index]),
            if (index != controllers.length - 1) const SizedBox(height: 24),
          ],
        );
      }),
    );
  }
}

class _StepHeader extends StatelessWidget {
  const _StepHeader({
    required this.step,
    this.value = false,
    this.onChanged,
    this.showCheckbox = true,
  });

  final int step;
  final bool value;
  final void Function(bool? value)? onChanged;
  final bool showCheckbox;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Step $step',
          style: theme.textTheme.titleMedium,
        ),
        if (showCheckbox)
          CheckboxMenuButton(
            value: value,
            onChanged: onChanged,
            child: Text(value ? 'Done' : 'Mark as done'),
          )
        else
          const SizedBox(
            height: 48,
          ),
      ],
    );
  }
}

class _Description extends StatelessWidget {
  const _Description({
    this.description,
  });

  final List<dynamic>? description;

  @override
  Widget build(BuildContext context) {
    final document = Document.fromJson(
      description ??
          [
            {'insert': '\n'},
          ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Label(
          title: 'Description',
        ),
        const SizedBox(height: 12),
        QuillEditor.basic(
          controller: QuillController(
            document: document,
            selection: const TextSelection.collapsed(offset: 0),
            readOnly: true,
          ),
          configurations: const QuillEditorConfigurations(
            placeholder: 'No description',
            enableInteractiveSelection: false,
          ),
        ),
      ],
    );
  }
}

class Label extends StatelessWidget {
  const Label({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            title,
            style: theme.textTheme.labelMedium?.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
        ),
      ],
    );
  }
}
