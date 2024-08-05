import 'package:authentication_repository/authentication_repository.dart';
import 'package:craftmate_client/auth/components/page_transitions.dart';
import 'package:craftmate_client/auth/reset_password/bloc/reset_password_bloc.dart';
import 'package:craftmate_client/auth/reset_password/view/reset_password_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({required this.token, super.key});

  final String token;

  static Route<void> route(String token) {
    return slideFromRightToLeft(
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
          authRepo: RepositoryProvider.of<AuthenticationRepository>(context),
          token: token,
        ),
        child: const ResetPasswordForm(),
      ),
    );
  }
}
