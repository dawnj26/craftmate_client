import 'package:craftmate_client/auth/components/components.dart';
import 'package:craftmate_client/auth/login/view/login_page.dart';
import 'package:craftmate_client/auth/reset_password/bloc/reset_password_bloc.dart';
import 'package:craftmate_client/auth/signup/models/confirm_password.dart';
import 'package:craftmate_client/auth/signup/models/password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    final safePadding = MediaQuery.of(context).padding.top;
    return BlocListener<ResetPasswordBloc, ResetPasswordState>(
      listener: (context, state) {
        final nav = Navigator.of(context);

        if (state is ResetPasswordInProgress) {
          // Show loading indicator
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

        if (state is ResetPasswordFailed) {
          nav.pop();
          final msg = SnackBar(
            content: Text(
              state.message,
            ),
          );

          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(msg);
        }

        if (state is ResetPasswordSuccess) {
          nav.pop();
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (_) {
              return AlertDialog(
                icon: const Icon(Icons.check_circle_outline),
                title: const Text('Success'),
                content:
                    const Text('Your password has been successfully changed.'),
                actions: [
                  FilledButton(
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                        LoginPage.route(),
                        (route) => false,
                      );
                    },
                    child: const Text('Ok'),
                  ),
                ],
              );
            },
          );
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
                title: 'Reset password',
                subTitle: 'Enter your new password to change your password',
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
    final bloc = context.read<ResetPasswordBloc>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
          buildWhen: (previous, current) =>
              previous.password != current.password,
          builder: (context, state) {
            String? errorText;

            if (state.password.displayError == PasswordValidationError.empty) {
              errorText = 'Password is required';
            }

            if (state.password.displayError ==
                PasswordValidationError.tooShort) {
              errorText = 'Password must have at least 6 characters';
            }

            return TextField(
              key: const Key('resetForm_passwordInput_texField'),
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'New password',
                errorText: errorText,
              ),
              onChanged: (value) =>
                  bloc.add(ResetPasswordPasswordChanged(password: value)),
              obscureText: true,
            );
          },
        ),
        const Gap(8.0),
        BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
          // buildWhen: (previous, current) =>
          //     previous.confirmPassword != current.confirmPassword,
          builder: (context, state) {
            String? errorText;

            if (state.confirmPassword.displayError ==
                ConfirmPasswordValidationError.empty) {
              errorText = 'Confirm password is required';
            }

            if (state.confirmPassword.displayError ==
                ConfirmPasswordValidationError.mismatch) {
              errorText = 'Password does not match';
            }

            return TextField(
              key: const Key('resetForm_confirmPasswordInput_texField'),
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'Confirm password',
                errorText: errorText,
              ),
              onChanged: (value) => bloc.add(
                ResetPasswordConfirmPasswordChanged(confirmPassword: value),
              ),
              obscureText: true,
            );
          },
        ),
        const Gap(16.0),
        FilledButton(
          onPressed: () {
            context
                .read<ResetPasswordBloc>()
                .add(const ResetPasswordSubmitted());
          },
          child: const Text('Save new password'),
        ),
      ],
    );
  }
}
