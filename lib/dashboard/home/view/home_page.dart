import 'package:craftmate_client/dashboard/home/bloc/home_bloc.dart';
import 'package:craftmate_client/dashboard/home/view/screen/home_screen.dart';
import 'package:craftmate_client/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_repository/project_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => ProjectRepository(config: config),
      child: BlocProvider(
        create: (context) => HomeBloc(
          projectRepo: RepositoryProvider.of<ProjectRepository>(context),
        ),
        child: const HomeScreen(),
      ),
    );
  }
}
