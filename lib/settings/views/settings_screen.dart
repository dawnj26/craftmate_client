import 'package:craftmate_client/settings/bloc/settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: BlocBuilder<SettingsBloc, SettingsState>(
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
              // ListTile(
              //   title: const Text('Theme color'),
              //   trailing: Container(
              //     decoration: BoxDecoration(
              //       shape: BoxShape.circle,
              //       color: state.theme.colorScheme.primary,
              //     ),
              //     width: 24,
              //     height: 24,
              //   ),
              //   onTap: () {
              //     showDialog(
              //       context: context,
              //       builder: (BuildContext context) {
              //         return AlertDialog(
              //           titlePadding: EdgeInsets.zero,
              //           contentPadding: EdgeInsets.zero,
              //           content: SingleChildScrollView(
              //             child: MaterialPicker(
              //               pickerColor: state.theme.colorScheme.primary,
              //               onColorChanged: (color) {
              //                 context.read<SettingsBloc>().add(
              //                       SettingsEvent.themeColorChanged(color),
              //                     );
              //                 Navigator.of(context).pop();
              //               },
              //               // enableLabel: _enableLabel,
              //               // portraitOnly: _portraitOnly,
              //             ),
              //           ),
              //         );
              //       },
              //     );
              //   },
              // ),
            ],
          );
        },
      ),
    );
  }
}
