import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:craftmate_client/project_management/view_project/bloc/view_project_bloc.dart';
import 'package:craftmate_client/project_management/view_project/project_settings/bloc/project_settings_bloc.dart';
import 'package:craftmate_client/project_management/view_project/project_settings/view/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_repository/project_repository.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({
    super.key,
    required this.project,
    required this.viewProjectBloc,
  });

  final Project project;
  final ViewProjectBloc viewProjectBloc;

  static Route<void> route(Project project, ViewProjectBloc viewProjectBloc) {
    return PageTransition.effect.slideFromRightToLeft(
      SettingsPage(
        project: project,
        viewProjectBloc: viewProjectBloc,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProjectSettingsBloc(
            projectRepo: context.read<ProjectRepository>(),
            project: project,
          ),
        ),
        BlocProvider.value(
          value: viewProjectBloc,
        ),
      ],
      child: const SettingsScreen(),
    );
  }
}
