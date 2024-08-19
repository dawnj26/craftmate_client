import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:craftmate_client/project_management/blank_project/bloc/blank_project_bloc.dart';
import 'package:craftmate_client/project_management/blank_project/view/create/create_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlankProjectPage extends StatelessWidget {
  const BlankProjectPage({super.key});

  static Route<void> route() {
    return PageTransition.effect.slideFromRightToLeft(const BlankProjectPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BlankProjectBloc(),
      child: const BlankProjectCreateScreen(),
    );
  }
}
