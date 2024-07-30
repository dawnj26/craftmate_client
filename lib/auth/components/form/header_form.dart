import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({
    required this.title,
    required this.subTitle,
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.textTheme.headlineMedium,
        ),
        const Gap(4.0),
        Text(
          subTitle,
          style: theme.textTheme.bodyMedium,
        ),
      ],
    );
  }
}
