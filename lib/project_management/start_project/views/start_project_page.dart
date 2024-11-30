import 'package:craftmate_client/globals.dart';
import 'package:craftmate_client/project_management/start_project/bloc/start/start_project_bloc.dart';
import 'package:craftmate_client/project_management/start_project/views/screens/start_project_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:showcaseview/showcaseview.dart';

class StartProjectPage extends StatelessWidget {
  const StartProjectPage({super.key, required this.id});

  final int id;

  static Route<void> route(int id) {
    return MaterialPageRoute(
      builder: (_) => StartProjectPage(
        id: id,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final scrollController = ItemScrollController();

    return ShowCaseWidget(
      onStart: (index, key) {
        if (index == 3) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            scrollController.jumpTo(
              index: 3,
              alignment: 0.2,
            );
          });
        }
      },
      onFinish: () {
        config.prefs.setBool('hasSeenTrackerTutorial', true);
      },
      builder: (context) {
        return BlocProvider(
          create: (context) => StartProjectBloc(
            projectRepository: context.read(),
            projectId: id,
          )..add(const StartProjectEvent.started()),
          child: StartProjectScreen(
            scrollController: scrollController,
          ),
        );
      },
    );
  }
}
