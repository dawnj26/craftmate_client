import 'package:craftmate_client/dashboard/bloc/dashboard_bloc.dart';
import 'package:craftmate_client/dashboard/home/bloc/home/home_bloc.dart';
import 'package:craftmate_client/dashboard/shop/views/pages/view_listing_page.dart';
import 'package:craftmate_client/dashboard/view/screens/dashboard_screen.dart';
import 'package:craftmate_client/globals.dart';
import 'package:craftmate_client/project_management/view_project/view/view_project_page.dart';
import 'package:craftmate_client/user_profile/views/user_profile_page.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeBloc(
            projectRepo: context.read<ProjectRepository>(),
          ),
        ),
        BlocProvider(
          create: (context) => DashboardBloc(
            appLinks: config.appLinks,
          ),
        ),
      ],
      child: BlocListener<DashboardBloc, DashboardState>(
        listener: (context, state) {
          switch (state) {
            case ProjectReceived(:final id):
              Navigator.push(context, ViewProjectPage.route(id));
            case ShopReceived(:final id):
              Navigator.push(context, ViewListingPage.route(id));
            case UserReceived(:final id):
              Navigator.push(context, UserProfilePage.route(id));
          }
        },
        child: const DashboardScreen(),
      ),
    );
  }
}
