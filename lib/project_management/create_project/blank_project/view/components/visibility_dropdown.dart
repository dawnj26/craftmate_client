import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:project_repository/project_repository.dart';

class VisibilityDropdown extends StatelessWidget {
  const VisibilityDropdown({
    super.key,
    required this.visibility,
    this.width,
    this.onSelected,
  });

  final void Function(ProjectVisibility?)? onSelected;
  final ProjectVisibility visibility;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Row(
        children: [
          Text(visibility.label),
          const Gap(4.0),
          const Icon(
            Icons.arrow_drop_down,
            size: 16,
          ),
        ],
      ),
      selected: true,
      onSelected: (_) => _showVisibilityOptions(context),
    );
  }

  Icon _buildVisibilityIcon(ProjectVisibility visibility) {
    switch (visibility) {
      case ProjectVisibility.public:
        return const Icon(Icons.public);
      case ProjectVisibility.private:
        return const Icon(Icons.private_connectivity);
      case ProjectVisibility.followers:
        return const Icon(Icons.people_alt_outlined);
    }
  }

  String _buildDescription(ProjectVisibility visibility) {
    switch (visibility) {
      case ProjectVisibility.public:
        return 'Anyone can see this project';
      case ProjectVisibility.private:
        return 'Only you can see this project';
      case ProjectVisibility.followers:
        return 'Only followers can see this project';
    }
  }

  void _showVisibilityOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (c) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Select visibility',
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
            ...ProjectVisibility.values.map(
              (visibility) => ListTile(
                leading: _buildVisibilityIcon(visibility),
                title: Text(visibility.label),
                subtitle: Text(_buildDescription(visibility)),
                onTap: () {
                  onSelected?.call(visibility);
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
