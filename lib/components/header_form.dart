import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({
    required this.theme,
    required this.title,
    required this.subTitle,
  });

  final ThemeData theme;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
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
