import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  const Counter({
    required this.countText,
    required this.icon,
  });

  final String countText;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        icon,
        const SizedBox(
          width: 4.0,
        ),
        Text(
          countText,
          style: textTheme.labelLarge,
        ),
      ],
    );
  }
}
