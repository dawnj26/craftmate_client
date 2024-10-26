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
    return Scaffold(
      appBar: AppBar(
        title: Text(suggestion.title),
      ),
    );
  }
}
