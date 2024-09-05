import 'package:flutter/material.dart';

class CategoryTag extends StatelessWidget {
  const CategoryTag({
    super.key,
    required this.tagText,
  });

  final String tagText;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      decoration: BoxDecoration(
        color: colorScheme.tertiaryContainer,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Text(
        tagText,
        style: TextStyle(
          color: colorScheme.onTertiaryContainer,
        ),
      ),
    );
  }
}
