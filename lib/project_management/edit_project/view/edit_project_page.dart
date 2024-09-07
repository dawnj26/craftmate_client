import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:craftmate_client/project_management/edit_project/bloc/edit_project_bloc.dart';
import 'package:craftmate_client/project_management/edit_project/view/screens/edit_description_screen.dart';
import 'package:craftmate_client/project_management/edit_project/view/screens/edit_project_screen.dart';
import 'package:craftmate_client/project_management/edit_project/view/screens/edit_steps_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_repository/project_repository.dart';

enum EditProjectType { description, steps }

class EditProjectPage extends StatelessWidget {
  const EditProjectPage({
    super.key,
    required this.projectRepo,
    required this.project,
    required this.type,
  });

  final ProjectRepository projectRepo;
  final Project project;
  final EditProjectType type;

  static Route<void> route(
    ProjectRepository projectRepo,
    Project project,
    EditProjectType type,
  ) {
    return PageTransition.effect.slideFromRightToLeft(
      EditProjectPage(
        projectRepo: projectRepo,
        project: project,
        type: type,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: projectRepo,
      child: BlocProvider(
        create: (context) => EditProjectBloc(
          projectRepo: RepositoryProvider.of<ProjectRepository>(context),
        ),
        child: EditScreen(
          type: type,
          project: project,
        ),
      ),
    );
  }
}

class EditScreen extends StatelessWidget {
  const EditScreen({
    super.key,
    required this.type,
    required this.project,
  });

  final EditProjectType type;
  final Project project;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case EditProjectType.description:
        return EditDescriptionScreen(
          project: project,
        );
      case EditProjectType.steps:
        return EditStepsScreen(
          project: project,
        );
      default:
        return const EditProjectScreen();
    }
  }
}
