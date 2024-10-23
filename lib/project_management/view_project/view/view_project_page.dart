import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:craftmate_client/project_management/view_project/bloc/view_project_bloc.dart';
import 'package:craftmate_client/project_management/view_project/view/screen/view_project_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_repository/project_repository.dart';

class ViewProjectPage extends StatelessWidget {
  const ViewProjectPage({
    super.key,
    required this.projectId,
  });

  final int projectId;

  static Route<Project> route(int projectId) {
    return PageTransition.effect.slideFromRightToLeft<Project>(
      ViewProjectPage(
        projectId: projectId,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ViewProjectBloc(
        projectRepository: context.read<ProjectRepository>(),
        projectId: projectId,
      )..add(const ViewProjectViewed()),
      child: const ViewProjectScreen(),
    );
  }
}
