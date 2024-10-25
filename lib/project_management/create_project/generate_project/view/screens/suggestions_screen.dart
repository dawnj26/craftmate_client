import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/project_management/create_project/generate_project/bloc/suggestion/suggest_bloc.dart';
import 'package:craftmate_client/project_management/create_project/generate_project/view/screens/view_suggestion_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_repository/project_repository.dart';

class SuggestionsScreen extends StatelessWidget {
  const SuggestionsScreen({
    super.key,
    required this.suggestions,
    required this.prompt,
  });

  final List<ProjectSuggestion> suggestions;
  final Prompt prompt;

  static Route route(List<ProjectSuggestion> suggestions, Prompt prompt) {
    return MaterialPageRoute<void>(
      builder: (_) => SuggestionsScreen(
        suggestions: suggestions,
        prompt: prompt,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SuggestBloc(
        projectRepo: context.read(),
        prompt: prompt,
      )..add(
          SuggestEvent.started(suggestions: suggestions),
        ),
      child: BlocListener<SuggestBloc, SuggestState>(
        listener: (context, state) {
          switch (state) {
            case Loading():
              Modal.instance.showGeneratingDialog(context);
            case RegenerateSuccess():
              Navigator.pop(context);
          }
        },
        child: const SuggestionList(),
      ),
    );
  }
}

class SuggestionList extends StatelessWidget {
  const SuggestionList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SuggestBloc, SuggestState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Project Suggestions'),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: SuggestionListView(
                  suggestions: state.suggestions,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: OutlinedButton(
                  onPressed: () {
                    context
                        .read<SuggestBloc>()
                        .add(const SuggestEvent.regenerated());
                  },
                  child: const Text('Regenerate'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class SuggestionListView extends StatelessWidget {
  const SuggestionListView({
    super.key,
    required this.suggestions,
  });

  final List<ProjectSuggestion> suggestions;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        return Card(
          color: theme.colorScheme.tertiaryContainer,
          child: ListTile(
            titleTextStyle: theme.textTheme.headlineMedium?.copyWith(
              color: theme.colorScheme.onTertiaryContainer,
            ),
            title: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(suggestion.title),
            ),
            subtitle: Text(
              suggestion.description,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onTertiaryContainer,
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                ViewSuggestionScreen.route(suggestion: suggestion),
              );
            },
          ),
        );
      },
    );
  }
}
