import 'package:authentication_repository/authentication_repository.dart';
import 'package:craftmate_client/auth/signup/bloc/sign_up_bloc.dart';
import 'package:craftmate_client/auth/signup/view/signup_form.dart';
import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  static Route<void> route() {
    return PageTransition.effect.slideFromRightToLeft(const SignUpPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => SignUpBloc(
          authenticationRepository: context.read<AuthenticationRepository>(),
        ),
        child: const SignUpForm(),
      ),
    );
  }
}
