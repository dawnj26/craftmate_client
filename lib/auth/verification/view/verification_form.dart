import 'package:craftmate_client/auth/components/components.dart';
import 'package:craftmate_client/auth/login/models/models.dart';
import 'package:craftmate_client/auth/otp/view/otp_page.dart';
import 'package:craftmate_client/auth/verification/bloc/verification_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class VerificationForm extends StatelessWidget {
  const VerificationForm({super.key});

  @override
  Widget build(BuildContext context) {
    final safePadding = MediaQuery.of(context).padding.top;

    return SafeArea(
      child: BlocListener<VerificationBloc, VerificationState>(
        listener: (context, state) {
          // TODO: implement listener
          final nav = Navigator.of(context);

          if (state is VerificationInProgress) {
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

          if (state is VerificationFailed) {
            nav.pop();

            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Text(state.message),
                ),
              );
          }
          if (state is VerificationSuccess) {
            nav.pop();
            nav.pushReplacement(OtpPage.route());
          }
        },
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
                title: 'Verification',
                subTitle: 'Enter your email to verify',
              ),
              Gap(40.0),
              _Form(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Form extends StatelessWidget {
  const _Form();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        BlocBuilder<VerificationBloc, VerificationState>(
          buildWhen: (previous, current) => previous.email != current.email,
          builder: (context, state) {
            String? errorText;

            if (state.email.displayError == EmailValidationError.empty) {
              errorText = 'Email is empty';
            }
            if (state.email.displayError == EmailValidationError.invalid) {
              errorText = 'Email is invalid';
            }

            return TextField(
              key: const Key('verificationForm_emailInput_textField'),
              onChanged: (email) => context
                  .read<VerificationBloc>()
                  .add(EmailInputChange(email: email)),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'Email address',
                errorText: errorText,
              ),
            );
          },
        ),
        const Gap(12.0),
        FilledButton(
          onPressed: () {
            context.read<VerificationBloc>().add(const FormSubmitted());
          },
          child: const Text('Verify'),
        ),
      ],
    );
  }
}
