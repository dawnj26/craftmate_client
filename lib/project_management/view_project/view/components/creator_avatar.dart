import 'package:craftmate_client/project_management/view_project/bloc/view_project_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:project_repository/project_repository.dart';
import 'package:timeago/timeago.dart' as timeago;

class CreatorAvatar extends StatelessWidget {
  const CreatorAvatar({
    required this.initialName,
    required this.fullName,
    required this.updatedAt,
    required this.visibility,
  });

  final String initialName;
  final String fullName;
  final DateTime updatedAt;
  final ProjectVisibility visibility;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 16.0,
              child: Text(initialName),
            ),
            const Gap(12.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fullName,
                  style: theme.textTheme.labelLarge,
                ),
                Text(
                  timeago.format(
                    updatedAt,
                    allowFromNow: true,
                  ),
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ],
        ),
        if (visibility == ProjectVisibility.public ||
            visibility == ProjectVisibility.followers)
          TextButton.icon(
            onPressed: () {
              context.read<ViewProjectBloc>().add(
                    const ViewProjectForked(),
                  );
            },
            label: const Text('Use this as a template'),
            icon: const Icon(Icons.copy),
          ),
      ],
    );
  }
}
