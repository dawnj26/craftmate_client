import 'package:authentication_repository/authentication_repository.dart';
import 'package:craftmate_client/components/components.dart';
import 'package:craftmate_client/login/bloc/login_bloc.dart';
import 'package:craftmate_client/login/models/models.dart';
import 'package:craftmate_client/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is LoginInProgress) {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (_) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            );
          } else if (state is LoginFailed) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Text(state.message),
                ),
              );
          }
        },
        child: LayoutBuilder(
          builder: (_, constraints) => SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
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
                        title: 'Welcome back!',
                        subTitle: 'Login to continue using the app',
                      ),
                      const Gap(32.0),
                      const _LoginForm(),
                      const Gap(40.0),
                      const AlternativeDivider(message: 'Or log in with'),
                      const Gap(40.0),
                      BlocBuilder<LoginBloc, LoginState>(
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
                      ),
                      const Spacer(),
                      const _SignUpButton(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SignUpButton extends StatelessWidget {
  const _SignUpButton();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account?"),
        TextButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              SignUpPage.route(),
              (_) => false,
            );
          },
          child: const Text('Sign up'),
        ),
      ],
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _Fields(),
        Gap(16.0),
        _LoginButton(),
      ],
    );
  }
}

class _Fields extends StatelessWidget {
  const _Fields();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const _EmailInput(),
        const Gap(8.0),
        const _PasswordInput(),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Forgot password?',
            style: TextStyle(
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}

class _EmailInput extends StatelessWidget {
  const _EmailInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        String? errorText;
        if (state.email.displayError == EmailValidationError.empty) {
          errorText = 'Email is empty';
        } else if (state.email.displayError == EmailValidationError.invalid) {
          errorText = 'Invalid email';
        }

        final theme = Theme.of(context);

        return TextField(
          key: const Key('loginForm_emailInput_textField'),
          onChanged: (email) =>
              context.read<LoginBloc>().add(LoginEmailChanged(email)),
          keyboardType: TextInputType.emailAddress,
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
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        String? errorText;
        if (state.password.displayError == PasswordValidationError.empty) {
          errorText = 'Password is empty';
        }

        final theme = Theme.of(context);
        return TextField(
          key: const Key('loginForm_passwordInput_textField'),
          onChanged: (password) =>
              context.read<LoginBloc>().add(LoginPasswordChanged(password)),
          decoration: InputDecoration(
            labelText: 'Password',
            border: const OutlineInputBorder(),
            prefixIcon: Icon(
              Icons.lock_outline,
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

class _LoginButton extends StatelessWidget {
  const _LoginButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return FilledButton(
          onPressed: () {
            context.read<LoginBloc>().add(
                  LoginSubmitted(
                    email: state.email.value,
                    password: state.password.value,
                  ),
                );
          },
          child: const Text('Log in'),
        );
      },
    );
  }
}
