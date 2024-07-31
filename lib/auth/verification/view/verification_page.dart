import 'package:authentication_repository/authentication_repository.dart';
import 'package:craftmate_client/auth/components/components.dart';
import 'package:craftmate_client/auth/verification/bloc/verification_bloc.dart';
import 'package:craftmate_client/auth/verification/view/verification_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  static Route<void> route() {
    return slideFromRightToLeft(const VerificationPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => VerificationBloc(
          authenticationRepository:
              RepositoryProvider.of<AuthenticationRepository>(context),
        ),
        child: const VerificationForm(),
      ),
    );
  }
}
