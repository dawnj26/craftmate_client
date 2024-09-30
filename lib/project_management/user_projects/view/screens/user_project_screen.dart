import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class UserProjectScreen extends StatelessWidget {
  const UserProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your projects'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                FilterDropdown(),
              ],
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                children: const [
                  ProjectCard(),
                  ProjectCard(),
                  ProjectCard(),
                  ProjectCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FilterDropdown extends StatelessWidget {
  const FilterDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DropdownMenu(
      textStyle: theme.textTheme.titleSmall,
      initialSelection: 2,
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
        ),
        isDense: true,
        constraints: BoxConstraints.tight(
          const Size.fromHeight(40.0),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
      ),
      dropdownMenuEntries: const [
        DropdownMenuEntry(
          label: 'Filter',
          value: 2,
        ),
        DropdownMenuEntry(label: 'a very long label to choose', value: 1),
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            SizedBox(
              width: 80,
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Image.asset(
                  'assets/images/placeholder_with_logo.png',
                ),
              ),
            ),
            const Gap(12.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Project title',
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  'Project subtitle',
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
      ),
    );
  }
}
