import 'package:flutter/material.dart';

class AlternativeDivider extends StatelessWidget {
  const AlternativeDivider({
    super.key,
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Stack(
      alignment: Alignment.center,
      children: [
        const Divider(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          color: theme.colorScheme.surface,
          child: Text(message),
        ),
      ],
    );
  }
}
