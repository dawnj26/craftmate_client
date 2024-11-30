import 'package:craftmate_client/settings/views/appearance_screen.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.brush),
            title: const Text('Appearance'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.of(context).push(AppearanceScreen.route());
            },
          ),
        ],
      ),
    );
  }
}
