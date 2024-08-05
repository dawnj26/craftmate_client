import 'package:craftmate_client/auth/components/components.dart';
import 'package:craftmate_client/auth/otp/bloc/otp_bloc.dart';
import 'package:craftmate_client/auth/otp/models/otp.dart';
import 'package:craftmate_client/auth/otp/timer/bloc/timer_bloc.dart';
import 'package:craftmate_client/auth/reset_password/view/reset_password_page.dart';
import 'package:craftmate_client/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({super.key});

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<OtpBloc>().add(const OtpSend());
  }

  @override
  Widget build(BuildContext context) {
    final safePadding = MediaQuery.of(context).padding.top;
    return BlocListener<OtpBloc, OtpState>(
      listener: (context, state) {
        final nav = Navigator.of(context);
        // TODO: implement listener
        if (state is OtpInProgress) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (_) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          );
        }

        if (state is OtpFailed) {
          nav.pop();
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(state.message),
              ),
            );
        }

        if (state is OtpSendSuccess) {
          nav.pop();
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(
                content: Text('Email sent'),
              ),
            );
          context.read<TimerBloc>().add(const TimerStarted(duration: 300));
        }

        if (state is OtpSuccess) {
          nav.pop();
          nav.pushReplacement(ResetPasswordPage.route(state.token));
        }
      },
      child: SafeArea(
        child: FixedContainer(
          safePadding: safePadding,
          padding: const EdgeInsets.all(8.0),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(8.0),
              LogoWithLabel(),
              Gap(48.0),
              HeaderTitle(
                title: 'OTP verify',
                subTitle: 'Enter the OTP sent to your email to verify',
              ),
              Gap(32.0),
              _Fields(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Fields extends StatelessWidget {
  const _Fields();

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _OtpInput(
          controller: controller,
        ),
        _ResendButton(
          callback: () {
            context.read<OtpBloc>().add(const OtpSend());
          },
        ),
        FilledButton(
          onPressed: () {
            logger.logDebug('Current OTP input: ${controller.text}');
            context.read<OtpBloc>().add(OtpSubmit(otp: controller.text));
          },
          child: const Text('Submit'),
        ),
      ],
    );
  }
}

class _ResendButton extends StatefulWidget {
  const _ResendButton({required this.callback});

  final void Function() callback;

  @override
  State<_ResendButton> createState() => _ResendButtonState();
}

class _ResendButtonState extends State<_ResendButton> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<TimerBloc>().add(const TimerStarted(duration: 300));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerState>(
      builder: (context, state) {
        final duration = state.duration;
        bool canResend = false;
        String text = 'Resend ($duration)';

        if (state is TimerComplete) {
          canResend = true;
          text = 'Resend';
        }

        return Row(
          children: [
            TextButton(
              key: const Key('otpForm_resendOtp_button'),
              onPressed: canResend ? widget.callback : null,
              child: Text(text),
            ),
          ],
        );
      },
    );
  }
}

class _OtpInput extends StatelessWidget {
  const _OtpInput({required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OtpBloc, OtpState>(
      buildWhen: (previous, current) => previous.otp != current.otp,
      builder: (context, state) {
        logger.logDebug('Building Otp Input');
        String? errorText;
        if (state.otp.displayError == OtpValidationError.empty) {
          errorText = 'OTP is required';
        } else if (state.otp.displayError == OtpValidationError.tooShort) {
          errorText = 'OTP must be 6 digits long';
        }

        return TextField(
          controller: controller,
          key: const Key('otpForm_otpInput_textField'),
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: '6 digit code',
            prefixIcon: const Icon(Icons.lock_outline_rounded),
            errorText: errorText,
          ),
          maxLength: 6,
        );
      },
    );
  }
}
