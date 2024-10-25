import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:craftmate_client/project_management/create_project/generate_project/bloc/generate_project_bloc.dart';
import 'package:craftmate_client/project_management/create_project/generate_project/view/screens/generate_project_screen.dart';
import 'package:craftmate_client/project_management/create_project/generate_project/view/screens/suggestions_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenerateProjectPage extends StatelessWidget {
  const GenerateProjectPage({super.key});

  static Route<void> route() {
    return PageTransition.effect
        .slideFromRightToLeft(const GenerateProjectPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GenerateProjectBloc(
        materialRepo: context.read(),
        projectRepo: context.read(),
      ),
      child: BlocListener<GenerateProjectBloc, GenerateProjectState>(
        listener: (context, state) {
          switch (state) {
            case LoadingSuggestions():
              Modal.instance.showGeneratingDialog(context);
            case LoadedSuggestions(
                suggestions: final suggestions,
                prompt: final prompt
              ):
              Navigator.pop(context);
              Navigator.of(context).pushReplacement(
                SuggestionsScreen.route(suggestions, prompt),
              );
          }
        },
        child: const GenerateProjectScreen(),
      ),
    );
  }
}
