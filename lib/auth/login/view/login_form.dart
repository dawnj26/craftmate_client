import 'package:craftmate_client/auth/components/components.dart';
import 'package:craftmate_client/auth/login/bloc/login_bloc.dart';
import 'package:craftmate_client/auth/login/view/components/components.dart';
import 'package:craftmate_client/helpers/alert/alert.dart';
import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;

    return SafeArea(
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is LoginInProgress) {
            Modal.instance.showLoadingDialog(context);
          } else if (state is LoginFailed) {
            Navigator.of(context).pop();
            Alert.instance.showSnackbar(context, state.message);
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
                title: 'Welcome back!',
                subTitle: 'Login to continue using the app',
              ),
              Gap(32.0),
              _LoginForm(),
              Gap(40.0),
              AlternativeDivider(message: 'Or log in with'),
              Gap(40.0),
              AlternativeAuth(),
              Spacer(),
              SignUpButton(),
            ],
          ),
        ),
      ),
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
        LoginButton(),
      ],
    );
  }
}

class _Fields extends StatefulWidget {
  const _Fields();

  @override
  State<_Fields> createState() => _FieldsState();
}

class _FieldsState extends State<_Fields> {
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  @override
  void dispose() {
    // TODO: implement dispose
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        EmailInput(
          focusNode: _emailFocusNode,
        ),
        const Gap(8.0),
        PasswordInput(
          focusNode: _passwordFocusNode,
        ),
        const ForgotPasswordButton(),
      ],
    );
  }
}
