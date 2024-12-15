import 'package:craftmate_client/project_management/view_project/view/view_project_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:project_repository/project_repository.dart';

class ForkLink extends StatelessWidget {
  const ForkLink({super.key, required this.fork});

  final ProjectFork fork;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: RichText(
        text: TextSpan(
          text: 'Templated from ',
          style: DefaultTextStyle.of(context).style,
          children: [
            TextSpan(
              text: fork.title,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colorScheme.secondary,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.push(context, ViewProjectPage.route(fork.id));
                },
            ),
          ],
        ),
      ),
    );
  }
}
