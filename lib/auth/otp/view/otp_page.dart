import 'package:authentication_repository/authentication_repository.dart';
import 'package:craftmate_client/auth/otp/bloc/otp_bloc.dart';
import 'package:craftmate_client/auth/otp/timer/bloc/timer_bloc.dart';
import 'package:craftmate_client/auth/otp/timer/models/ticker.dart';
import 'package:craftmate_client/auth/otp/view/otp_form.dart';
import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({required this.email, super.key});

  final String email;

  static Route<void> route(String email) {
    return PageTransition.effect.slideFromRightToLeft(
      OtpPage(
        email: email,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => OtpBloc(
              email: email,
              authRepo: context.read<AuthenticationRepository>(),
            ),
          ),
          BlocProvider(
            create: (_) => TimerBloc(ticker: const Ticker()),
          ),
        ],
        child: const OtpForm(),
      ),
    );
  }
}
