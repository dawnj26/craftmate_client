import 'package:craftmate_client/dashboard/home/bloc/home_bloc.dart';
import 'package:craftmate_client/dashboard/view/screens/dashboard_screen.dart';
import 'package:craftmate_client/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_repository/project_repository.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(builder: (_) => const DashboardPage());
  }

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => ProjectRepository(config: config),
      child: BlocProvider(
        create: (context) => HomeBloc(
          projectRepo: RepositoryProvider.of<ProjectRepository>(context),
        ),
        child: const DashboardScreen(),
      ),
    );
  }
}
