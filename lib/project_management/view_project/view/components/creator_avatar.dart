import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:timeago/timeago.dart' as timeago;

class CreatorAvatar extends StatelessWidget {
  const CreatorAvatar({
    required this.initialName,
    required this.fullName,
    required this.updatedAt,
  });

  final String initialName;
  final String fullName;
  final DateTime updatedAt;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
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
    );
  }
}
