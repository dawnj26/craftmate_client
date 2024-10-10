import 'package:craftmate_client/project_management/user_projects/bloc/selection/selection_bloc.dart';
import 'package:craftmate_client/project_management/user_projects/bloc/user_project/user_project_bloc.dart';
import 'package:craftmate_client/project_management/user_projects/view/screens/user_project_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_repository/project_repository.dart';

class UserProjectsPage extends StatelessWidget {
  const UserProjectsPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(builder: (_) => const UserProjectsPage());
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserProjectBloc(
            projectRepository: context.read<ProjectRepository>(),
          ),
        ),
        BlocProvider(
          create: (context) => SelectionBloc(),
        ),
      ],
      child: const UserProjectScreen(),
    );
  }
}
