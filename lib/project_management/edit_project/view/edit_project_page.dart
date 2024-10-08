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
    required this.projectRepo,
    required this.project,
  });

  final ProjectRepository projectRepo;
  final Project project;

  static Route<void> route(
    ProjectRepository projectRepo,
    Project project,
  ) {
    return PageTransition.effect.slideFromRightToLeft(
      EditProjectPage(
        projectRepo: projectRepo,
        project: project,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: projectRepo,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => EditProjectBloc(
              projectRepo: RepositoryProvider.of<ProjectRepository>(context),
            ),
          ),
          BlocProvider(
            create: (context) => TextEditorBloc(
              projectRepository:
                  RepositoryProvider.of<ProjectRepository>(context),
            )..add(
                TextEditorEvent.initialized(project: project),
              ),
          ),
        ],
        child: EditRecipeScreen(
          project: project,
        ),
      ),
    );
  }
}
