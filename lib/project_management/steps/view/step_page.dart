import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:craftmate_client/project_management/cubits/step_title/cubit/step_title_cubit.dart';
import 'package:craftmate_client/project_management/steps/view/edit_step_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StepPage extends StatelessWidget {
  const StepPage({super.key});

  static Route<void> route() {
    return PageTransition.effect.slideFromRightToLeft(const StepPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => StepTitleCubit(),
      child: const EditStepScreen(),
    );
  }
}
