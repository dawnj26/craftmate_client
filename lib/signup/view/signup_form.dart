import 'package:craftmate_client/components/components.dart';
import 'package:craftmate_client/login/models/email.dart';
import 'package:craftmate_client/login/view/login_page.dart';
import 'package:craftmate_client/signup/bloc/sign_up_bloc.dart';
import 'package:craftmate_client/signup/models/confirm_password.dart';
import 'package:craftmate_client/signup/models/name.dart';
import 'package:craftmate_client/signup/models/password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
            Navigator.of(context).pop();

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
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(8.0),
                        const LogoWithLabel(),
                        const Gap(48.0),
                        HeaderTitle(
                          theme: theme,
                          title: 'Sign up',
                          subTitle: 'Enter your details to create an account',
                        ),
                        const Gap(32.0),
                        const _Form(),
                        const Spacer(),
                        const AlternativeDivider(message: 'Or sign up with'),
                        const Gap(8.0),
                        const Spacer(),
                        GoogleOrFacebookButtons(
                          googleCallback: () {},
                          facebookCallback: () {},
                        ),
                        const Spacer(),
                        const _LoginButton(),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Do have an account?"),
        TextButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              LoginPage.route(),
              (_) => false,
            );
          },
          child: const Text('Log in'),
        ),
      ],
    );
  }
}

class _Form extends StatelessWidget {
  const _Form();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _NameInput(),
        Gap(8.0),
        _EmailInput(),
        Gap(8.0),
        _PasswordInput(),
        Gap(8.0),
        _ConfirmPasswordInput(),
        Gap(32.0),
        _SignUpButton(),
      ],
    );
  }
}

class _NameInput extends StatelessWidget {
  const _NameInput();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.name != current.name,
      builder: (context, state) {
        final bloc = context.read<SignUpBloc>();
        String? errorText;

        if (state.name.displayError == NameValidationError.empty) {
          errorText = 'Name is required';
        }

        return TextField(
          key: const Key('signUpForm_nameInput_textField'),
          onChanged: (String name) => bloc.add(
            SignUpNameChanged(name: name),
          ),
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: 'Name',
            prefixIcon: Icon(
              Icons.person_outlined,
              color: errorText == null ? null : theme.colorScheme.error,
            ),
            errorText: errorText,
          ),
        );
      },
    );
  }
}

class _EmailInput extends StatelessWidget {
  const _EmailInput();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        final bloc = context.read<SignUpBloc>();
        String? errorText;

        if (state.email.displayError == EmailValidationError.empty) {
          errorText = 'Email is required';
        }
        if (state.email.displayError == EmailValidationError.invalid) {
          errorText = 'Invalid email';
        }

        return TextField(
          key: const Key('signUpForm_emailInput_textField'),
          onChanged: (String email) => bloc.add(
            SignUpEmailChanged(email: email),
          ),
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: 'Email',
            prefixIcon: Icon(
              Icons.email_outlined,
              color: errorText == null ? null : theme.colorScheme.error,
            ),
            errorText: errorText,
          ),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  const _PasswordInput();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        final bloc = context.read<SignUpBloc>();
        String? errorText;

        if (state.password.displayError == PasswordValidationError.empty) {
          errorText = 'Password is required';
        }
        if (state.password.displayError == PasswordValidationError.tooShort) {
          errorText = 'Password must have at least 6 characters';
        }

        return TextField(
          key: const Key('signUpForm_passwordInput_textField'),
          onChanged: (String password) => bloc.add(
            SignUpPasswordChanged(password: password),
          ),
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: 'Password',
            prefixIcon: Icon(
              Icons.password_outlined,
              color: errorText == null ? null : theme.colorScheme.error,
            ),
            errorText: errorText,
          ),
          obscureText: true,
        );
      },
    );
  }
}

class _ConfirmPasswordInput extends StatelessWidget {
  const _ConfirmPasswordInput();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) =>
          previous.confirmPassword != current.confirmPassword,
      builder: (context, state) {
        final bloc = context.read<SignUpBloc>();
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
          key: const Key('signUpForm_confirmPasswordInput_textField'),
          onChanged: (String password) => bloc.add(
            SignUpConfirmPasswordChanged(confirmPassword: password),
          ),
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: 'Confirm password',
            prefixIcon: Icon(
              Icons.password_outlined,
              color: errorText == null ? null : theme.colorScheme.error,
            ),
            errorText: errorText,
          ),
          obscureText: true,
        );
      },
    );
  }
}

class _SignUpButton extends StatelessWidget {
  const _SignUpButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return FilledButton(
          onPressed: () {
            context.read<SignUpBloc>().add(
                  SignUpSubmitted(
                    name: state.name.value,
                    email: state.email.value,
                    password: state.password.value,
                    confirmPassword: state.confirmPassword.value,
                  ),
                );
          },
          child: const Text('Sign up'),
        );
      },
    );
  }
}
