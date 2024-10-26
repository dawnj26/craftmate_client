import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:craftmate_client/project_management/create_project/generate_project/bloc/view_suggestion/view_suggestion_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:project_repository/project_repository.dart';

class ViewSuggestionScreen extends StatelessWidget {
  const ViewSuggestionScreen({
    super.key,
    required this.suggestion,
    required this.prompt,
  });

  final ProjectSuggestion suggestion;
  final Prompt prompt;

  static Route<void> route({
    required ProjectSuggestion suggestion,
    required Prompt prompt,
  }) {
    return PageTransition.effect.slideFromRightToLeft(
      ViewSuggestionScreen(
        suggestion: suggestion,
        prompt: prompt,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ViewSuggestionBloc(
        projectRepo: context.read(),
        prompt: prompt,
      )..add(ViewSuggestionEvent.started(suggestion: suggestion)),
      child: BlocConsumer<ViewSuggestionBloc, ViewSuggestionState>(
        listener: (context, state) {
          switch (state) {
            case Error(message: final message):
              Navigator.pop(context);
              Modal.instance.showConfirmationModal(
                context: context,
                content: Text(message),
                title: 'Error',
                actions: [
                  FilledButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Ok'),
                  ),
                ],
              );
            case Saving():
              Modal.instance.showLoadingDialog(context);
            case Saved():
              Navigator.pop(context);
              Modal.instance.showConfirmationModal(
                context: context,
                content: const Text('Project Saved successfully'),
                title: 'Success',
                actions: [
                  FilledButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Ok'),
                  ),
                ],
              );
          }
        },
        builder: (context, state) {
          switch (state) {
            case Initial():
            case Loading():
              return Scaffold(
                appBar: AppBar(
                  title: Text(suggestion.title),
                ),
                body: const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            default:
              return _Suggestions(suggestion: state.pSuggestion);
          }
        },
      ),
    );
  }
}

class _Suggestions extends StatelessWidget {
  const _Suggestions({
    required this.suggestion,
  });

  final ProjectSuggestion suggestion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(suggestion.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(12),
              children: [
                _Section(
                  titleText: 'Description',
                  contentText: suggestion.description,
                ),
                const Gap(24.0),
                _ListSection(
                  contentList: suggestion.materials.map((e) => e.name).toList(),
                  titleText: 'Materials',
                ),
                const Gap(24.0),
                _ListSection(
                  titleText: 'Steps',
                  contentList: suggestion.steps ?? [],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: FilledButton(
              onPressed: () {
                context.read<ViewSuggestionBloc>().add(
                      const ViewSuggestionEvent.suggestionSaved(),
                    );
              },
              child: const Text('Save suggestion'),
            ),
          ),
        ],
      ),
    );
  }
}

class _ListSection extends StatelessWidget {
  const _ListSection({required this.contentList, required this.titleText});

  final String titleText;
  final List<String> contentList;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText,
          style: theme.textTheme.titleMedium,
        ),
        const Divider(
          height: 24,
        ),
        ...contentList.map(
          (e) => Card(
            color: theme.colorScheme.secondaryContainer,
            child: ListTile(
              title: Text(
                e,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({
    required this.titleText,
    required this.contentText,
  });

  final String titleText;
  final String contentText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText,
          style: theme.textTheme.titleMedium,
        ),
        const Divider(
          height: 24,
        ),
        Text(
          contentText,
          style: theme.textTheme.bodyLarge,
        ),
      ],
    );
  }
}
