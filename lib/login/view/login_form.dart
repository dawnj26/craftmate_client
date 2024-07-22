import 'package:craftmate_client/login/bloc/login_bloc.dart';
import 'package:craftmate_client/login/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:gap/gap.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _HeaderTitle(
                theme: theme,
              ),
              const Gap(32.0),
              const _LoginForm(),
            ],
          ),
        ),
      ),
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
