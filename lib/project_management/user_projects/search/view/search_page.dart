import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:craftmate_client/project_management/user_projects/search/bloc/search_bloc.dart';
import 'package:craftmate_client/project_management/user_projects/search/view/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_repository/project_repository.dart';

class ProjectSearchPage extends StatelessWidget {
  const ProjectSearchPage({super.key});

  static Route<void> route() {
    return PageTransition.effect.slideFromBottomToTop(
      const ProjectSearchPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProjectSearchBloc(
        projectRepository: context.read<ProjectRepository>(),
      ),
      child: const ProjectSearchScreen(),
    );
  }
}
