import 'package:craftmate_client/auth/verification/bloc/verification_bloc.dart';
import 'package:craftmate_client/auth/verification/view/verification_form.dart';
import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repository/user_repository.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  static Route<void> route() {
    return PageTransition.effect.slideFromRightToLeft(const VerificationPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => VerificationBloc(
          userRepository: context.read<UserRepository>(),
        ),
        child: const VerificationForm(),
      ),
    );
  }
}
