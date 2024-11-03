import 'package:craftmate_client/dashboard/search/view/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:project_repository/project_repository.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({
    super.key,
    required this.categories,
  });

  final List<ProjectCategory> categories;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SliverPadding(
      padding: const EdgeInsets.all(12),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final category = categories[index];
            // Replace with your grid item widget
            return GestureDetector(
              onTap: () {
                Navigator.push(context, ResultScreen.route(category.name));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                child: Text(
                  category.name,
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                ),
              ),
            );
          },
          childCount: categories.length, // Replace with your actual item count
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 3 / 2,
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
      ),
    );
  }
}
