import 'package:craftmate_client/project_management/view_project/bloc/view_project_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:project_repository/project_repository.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:user_repository/user_repository.dart';

class CreatorAvatar extends StatelessWidget {
  const CreatorAvatar({
    required this.user,
    required this.updatedAt,
    required this.visibility,
    this.onTap,
  });

  final User user;
  final DateTime updatedAt;
  final ProjectVisibility visibility;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final hasImage = user.image != null;

    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 16.0,
                backgroundImage: hasImage ? NetworkImage(user.image!) : null,
                child: hasImage ? null : Text(user.name[0]),
              ),
              const Gap(12.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.name,
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
              label: const Text('Template'),
              icon: const Icon(Icons.copy),
            ),
        ],
      ),
    );
  }
}
