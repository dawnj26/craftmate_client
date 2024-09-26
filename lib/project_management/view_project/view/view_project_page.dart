import 'package:craftmate_client/globals.dart';
import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:craftmate_client/project_management/view_project/bloc/view_project_bloc.dart';
import 'package:craftmate_client/project_management/view_project/view/screen/view_project_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_repository/project_repository.dart';

class ViewProjectPage extends StatelessWidget {
  const ViewProjectPage({
    super.key,
    required this.project,
  });

  final Project project;

  static Route<Project> route(Project project) {
    return PageTransition.effect.slideFromRightToLeft<Project>(
      ViewProjectPage(
        project: project,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => ProjectRepository(config: config),
      child: BlocProvider(
        create: (context) => ViewProjectBloc(
          projectRepository: RepositoryProvider.of<ProjectRepository>(context),
          project: project,
        ),
        child: const ViewProjectScreen(),
      ),
    );
  }
}
