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
  });

  final Project project;

  static Route<void> route(Project project) {
    return PageTransition.effect.slideFromRightToLeft(
      SettingsPage(
        project: project,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsBloc(
        projectRepo: context.read<ProjectRepository>(),
        project: project,
      ),
      child: const SettingsScreen(),
    );
  }
}
