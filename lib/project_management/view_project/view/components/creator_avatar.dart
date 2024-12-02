import 'package:craftmate_client/auth/bloc/auth_bloc.dart';
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

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: onTap,
              child: _Creator(
                hasImage: hasImage,
                user: user,
                theme: theme,
                updatedAt: updatedAt,
              ),
            ),
          ],
        ),
        if (visibility == ProjectVisibility.public ||
            visibility == ProjectVisibility.followers)
          TextButton.icon(
            onPressed: () {
              context.read<ViewProjectBloc>().add(
                    ViewProjectForked(
                      context.read<AuthBloc>().state.user,
                      user.id,
                    ),
                  );
            },
            label: const Text('Template'),
            icon: const Icon(Icons.copy),
          ),
      ],
    );
  }
}

class _Creator extends StatelessWidget {
  const _Creator({
    required this.hasImage,
    required this.user,
    required this.theme,
    required this.updatedAt,
  });

  final bool hasImage;
  final User user;
  final ThemeData theme;
  final DateTime updatedAt;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.transparent,
      child: Row(
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
    );
  }
}
