import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:craftmate_client/project_management/edit_project/bloc/edit_project_bloc.dart';
import 'package:craftmate_client/project_management/edit_project/view/screens/edit_recipe_screen.dart';
import 'package:craftmate_client/project_management/text_editor/bloc/text_editor_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_repository/project_repository.dart';

enum EditProjectType { description, steps }

class EditProjectPage extends StatelessWidget {
  const EditProjectPage({
    super.key,
    required this.project,
  });

  final Project project;

  static Route<void> route(
    Project project,
  ) {
    return PageTransition.effect.slideFromRightToLeft(
      EditProjectPage(
        project: project,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => EditProjectBloc(
            projectRepo: context.read<ProjectRepository>(),
          ),
        ),
        BlocProvider(
          create: (context) => TextEditorBloc(
            projectRepository: context.read<ProjectRepository>(),
          )..add(
              TextEditorEvent.initialized(project: project),
            ),
        ),
      ],
      child: EditRecipeScreen(
        project: project,
      ),
    );
  }
}
