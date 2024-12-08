import 'package:craftmate_client/auth/components/components.dart';
import 'package:craftmate_client/auth/signup/bloc/sign_up_bloc.dart';
import 'package:craftmate_client/auth/signup/view/components/components.dart';
import 'package:craftmate_client/auth/signup/view/terms_and_conditions_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;

    return SafeArea(
      child: BlocListener<SignUpBloc, SignUpState>(
        listener: (context, state) {
          if (state is SignUpInProgress) {
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
          } else if (state is SignUpFailed) {
            if (ModalRoute.of(context)?.isCurrent != true) {
              Navigator.of(context).pop();
            }

            final msg = SnackBar(
              content: Text(
                state.message,
              ),
            );

            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(msg);
          }
        },
        child: FixedContainer(
          safePadding: topPadding,
          padding: const EdgeInsets.all(12.0),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(8.0),
              LogoWithLabel(),
              Gap(48.0),
              HeaderTitle(
                title: 'Sign up',
                subTitle: 'Enter your details to create an account',
              ),
              Gap(32.0),
              _Form(),
              Gap(12),
              Spacer(),
              LoginButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Form extends StatelessWidget {
  const _Form();

  void unfocusFields() =>
      WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        NameInput(unfocusFields),
        const Gap(8.0),
        EmailInput(unfocusFields),
        const Gap(8.0),
        PasswordInput(unfocusFields),
        const Gap(8.0),
        ConfirmPasswordInput(unfocusFields),
        const Gap(12),
        BlocBuilder<SignUpBloc, SignUpState>(
          builder: (context, state) {
            return CheckboxListTile(
              value: state.isAcceptedTerms,
              title: RichText(
                text: TextSpan(
                  text: 'I agree to the ',
                  style: Theme.of(context).textTheme.bodyMedium,
                  children: [
                    TextSpan(
                      text: 'Terms of Service',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            TermsAndConditionsScreen.route(),
                          );
                        },
                    ),
                    const TextSpan(text: ' and '),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Open Terms of Service
                        },
                    ),
                  ],
                ),
              ),
              onChanged: (value) {
                context
                    .read<SignUpBloc>()
                    .add(SignUpTermsChanged(isAcceptedTerms: value ?? false));
              },
            );
          },
        ),
        const Gap(32.0),
        const SignUpButton(),
      ],
    );
  }
}
