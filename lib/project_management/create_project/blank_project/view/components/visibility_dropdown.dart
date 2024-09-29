import 'package:flutter/material.dart';
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
    return DropdownMenu<ProjectVisibility>(
      width: width,
      helperText: 'Who can see this?',
      onSelected: onSelected,
      initialSelection: visibility,
      leadingIcon: _buildVisibilityIcon(visibility),
      dropdownMenuEntries: ProjectVisibility.values.map((visibility) {
        final icon = _buildVisibilityIcon(visibility);
        return DropdownMenuEntry<ProjectVisibility>(
          value: visibility,
          label: visibility.label,
          leadingIcon: icon,
        );
      }).toList(),
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
}
