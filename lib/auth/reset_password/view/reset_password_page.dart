import 'package:authentication_repository/authentication_repository.dart';
import 'package:craftmate_client/auth/reset_password/bloc/reset_password_bloc.dart';
import 'package:craftmate_client/auth/reset_password/view/reset_password_form.dart';
import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({required this.token, super.key});

  final String token;

  static Route<void> route(String token) {
    return PageTransition.effect.slideFromRightToLeft(
      ResetPasswordPage(
        token: token,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => ResetPasswordBloc(
          authRepo: context.read<AuthenticationRepository>(),
          token: token,
        ),
        child: const ResetPasswordForm(),
      ),
    );
  }
}
