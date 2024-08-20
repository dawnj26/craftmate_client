import 'package:craftmate_client/project_management/create_project/blank_project/view/blank_project_page.dart';
import 'package:craftmate_client/project_management/create_project/existing_project/view/existing_project_page.dart';
import 'package:craftmate_client/project_management/create_project/generate_project/view/generate_project_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CreateProjectPage extends StatelessWidget {
  const CreateProjectPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(builder: (_) => const CreateProjectPage());
  }

  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Create Project',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            _CardOption(
              position: 1,
              title: 'Blank Project',
              subtitle: 'Create a blank project and start from scratch.',
              icon: Icons.note_add,
              callback: () {
                navigator.push(BlankProjectPage.route());
              },
            ),
            const Gap(8.0),
            _CardOption(
              position: 2,
              title: 'Generate with AI',
              subtitle:
                  'Generate projects ideas base on your materials or skills.',
              icon: Icons.auto_awesome,
              callback: () {
                navigator.push(GenerateProjectPage.route());
              },
            ),
            const Gap(8.0),
            _CardOption(
              position: 3,
              title: 'Make from existing',
              subtitle: 'Use existing public projects and make your own.',
              icon: Icons.merge_type,
              callback: () {
                navigator.push(ExistingProjectPage.route());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _CardOption extends StatelessWidget {
  const _CardOption({
    required this.position,
    required this.subtitle,
    required this.title,
    required this.icon,
    required this.callback,
  });

  final int position;
  final String title;
  final String subtitle;
  final IconData icon;
  final void Function() callback;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = getColor(theme);

    return Card(
      elevation: 0,
      color: colors[0],
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        onTap: callback,
        contentPadding: const EdgeInsets.all(16.0),
        titleTextStyle: TextStyle(
          fontSize: theme.textTheme.headlineMedium!.fontSize,
          fontWeight: theme.textTheme.headlineMedium!.fontWeight,
          color: colors[1],
        ),
        subtitleTextStyle: TextStyle(
          fontSize: theme.textTheme.bodyLarge!.fontSize,
          color: theme.colorScheme.onSurfaceVariant,
        ),
        title: Container(
          margin: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            title,
          ),
        ),
        subtitle: Text(
          subtitle,
        ),
        trailing: Icon(
          icon,
          color: colors[1],
          size: 40.0,
        ),
      ),
    );
  }

  List<Color> getColor(ThemeData theme) {
    final colorScheme = theme.colorScheme;

    Color container = colorScheme.primaryContainer;
    Color contentColor = colorScheme.onPrimaryContainer;

    switch (position) {
      case 2:
        container = colorScheme.secondaryContainer;
        contentColor = colorScheme.onSecondaryContainer;
      case 3:
        container = colorScheme.tertiaryContainer;
        contentColor = colorScheme.onTertiaryContainer;
      default:
    }

    return [container, contentColor];
  }
}
