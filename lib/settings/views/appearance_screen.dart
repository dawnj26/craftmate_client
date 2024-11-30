import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:craftmate_client/settings/bloc/settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class AppearanceScreen extends StatelessWidget {
  const AppearanceScreen({super.key});

  static Route route() {
    return PageTransition.effect.slideFromRightToLeft(
      const AppearanceScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: context.read<SettingsBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Appearance'),
        ),
        body: const _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        final isDarkMode = state.theme.brightness == Brightness.dark;
        return ListView(
          children: [
            ListTile(
              title: const Text('Dark mode'),
              trailing: Switch(
                value: isDarkMode,
                onChanged: (value) {
                  context.read<SettingsBloc>().add(
                        const SettingsEvent.themeModeChanged(),
                      );
                },
              ),
            ),
            ListTile(
              title: const Text('Theme color'),
              trailing: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: state.theme.colorScheme.primary,
                ),
                width: 24,
                height: 24,
              ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      titlePadding: EdgeInsets.zero,
                      contentPadding: EdgeInsets.zero,
                      content: SingleChildScrollView(
                        child: MaterialPicker(
                          pickerColor: state.theme.colorScheme.primary,
                          onColorChanged: (color) {
                            context.read<SettingsBloc>().add(
                                  SettingsEvent.themeColorChanged(color),
                                );
                            Navigator.of(context).pop();
                          },
                          // enableLabel: _enableLabel,
                          // portraitOnly: _portraitOnly,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        );
      },
    );
  }
}
