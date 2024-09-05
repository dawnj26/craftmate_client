import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CreatorAvatar extends StatelessWidget {
  const CreatorAvatar({
    required this.initialName,
    required this.fullName,
  });

  final String initialName;
  final String fullName;

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
        Text(
          fullName,
          style: theme.textTheme.bodyMedium,
        ),
      ],
    );
  }
}
