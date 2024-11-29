import 'package:craftmate_client/settings/bloc/settings_bloc.dart';
import 'package:craftmate_client/settings/views/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const SettingsPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: context.read<SettingsBloc>(),
      child: const SettingsScreen(),
    );
  }
}
