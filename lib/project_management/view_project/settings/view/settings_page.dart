import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:craftmate_client/project_management/view_project/settings/bloc/settings_bloc.dart';
import 'package:craftmate_client/project_management/view_project/settings/view/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_repository/project_repository.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({
    super.key,
    required this.project,
    required this.projectRepository,
  });

  final Project project;
  final ProjectRepository projectRepository;

  static Route<void> route(Project project, ProjectRepository projectRepo) {
    return PageTransition.effect.slideFromRightToLeft(
      SettingsPage(
        project: project,
        projectRepository: projectRepo,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: projectRepository,
      child: BlocProvider(
        create: (context) => SettingsBloc(
          projectRepo: RepositoryProvider.of(context),
          project: project,
        ),
        child: const SettingsScreen(),
      ),
    );
  }
}
