import 'package:authentication_repository/authentication_repository.dart';
import 'package:craftmate_client/auth/components/components.dart';
import 'package:craftmate_client/auth/login/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlternativeAuth extends StatelessWidget {
  const AlternativeAuth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        final bloc = context.read<LoginBloc>();
        return GoogleOrFacebookButtons(
          googleCallback: () {
            bloc.add(
              const LoginSocialClick(
                type: AuthenticationType.google,
              ),
            );
          },
          facebookCallback: () {
            bloc.add(
              const LoginSocialClick(
                type: AuthenticationType.facebook,
              ),
            );
          },
        );
      },
    );
  }
}
