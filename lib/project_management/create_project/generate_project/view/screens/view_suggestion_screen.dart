import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:project_repository/project_repository.dart';

class ViewSuggestionScreen extends StatelessWidget {
  const ViewSuggestionScreen({super.key, required this.suggestion});

  final ProjectSuggestion suggestion;

  static Route<void> route({
    required ProjectSuggestion suggestion,
  }) {
    return PageTransition.effect.slideFromRightToLeft(
      ViewSuggestionScreen(suggestion: suggestion),
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
