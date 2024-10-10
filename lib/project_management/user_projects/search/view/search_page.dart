import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:craftmate_client/project_management/user_projects/search/bloc/search_bloc.dart';
import 'package:craftmate_client/project_management/user_projects/search/view/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_repository/project_repository.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  static Route<void> route() {
    return PageTransition.effect.slideFromBottomToTop(
      const SearchPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBloc(
        projectRepository: context.read<ProjectRepository>(),
      ),
      child: const SearchScreen(),
    );
  }
}
