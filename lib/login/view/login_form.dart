import 'package:craftmate_client/login/bloc/login_bloc.dart';
import 'package:craftmate_client/login/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';
import 'package:gap/gap.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state.status.isFailure) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                const SnackBar(
                  content: Text('Authentication Failure'),
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
                      Image.asset(
                        'assets/images/logo_with_label.png',
                        height: 32.0,
                      ),
                      const Gap(48.0),
                      _HeaderTitle(
                        theme: theme,
                      ),
                      const Gap(32.0),
                      const _LoginForm(),
                      const Gap(40.0),
                      const AlternativeDivider(),
                      const Gap(40.0),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _AlternativeButton(
                            icon: FaIcon(FontAwesomeIcons.google),
                          ),
                          _AlternativeButton(
                            icon: FaIcon(FontAwesomeIcons.facebook),
                          ),
                        ],
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
          onPressed: () {},
          child: const Text('Sign up'),
        ),
      ],
    );
  }
}

class _AlternativeButton extends StatelessWidget {
  const _AlternativeButton({
    required this.icon,
  });

  final FaIcon icon;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
        padding: const EdgeInsets.all(12.0),
      ),
      onPressed: () {},
      label: icon,
    );
  }
}

class AlternativeDivider extends StatelessWidget {
  const AlternativeDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Stack(
      alignment: Alignment.center,
      children: [
        const Divider(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          color: theme.colorScheme.surface,
          child: const Text('Or log in with'),
        ),
      ],
    );
  }
}

class _HeaderTitle extends StatelessWidget {
  const _HeaderTitle({
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome back!',
          style: theme.textTheme.headlineMedium,
        ),
        const Gap(4.0),
        Text(
          'Login to continue using the app',
          style: theme.textTheme.bodyMedium,
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
          errorText = 'Email is required';
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
        late final Widget child;
        if (state.status.isInProgress) {
          child = const CircularProgressIndicator();
        } else {
          child = const Text('Log in');
        }

        return FilledButton(
          onPressed: () {
            if (!state.isValid) return;
            context.read<LoginBloc>().add(const LoginSubmitted());
          },
          child: child,
        );
      },
    );
  }
}
