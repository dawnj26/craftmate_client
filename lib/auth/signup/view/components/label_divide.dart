import 'package:flutter/material.dart';

class LabelDivide extends StatelessWidget {
  const LabelDivide({
    required this.labelText,
  });

  final String labelText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          labelText,
          style: theme.textTheme.titleMedium,
        ),
        const SizedBox(width: 8.0),
        const Expanded(child: Divider()),
      ],
    );
  }
}
