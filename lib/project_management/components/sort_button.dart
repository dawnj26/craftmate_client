import 'package:flutter/material.dart';

class SortButton<T> extends StatelessWidget {
  const SortButton({
    super.key,
    required this.label,
    required this.selectedSort,
    required this.items,
  });

  final String label;
  final T selectedSort;
  final List<SortOption> items;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      iconAlignment: IconAlignment.end,
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            final theme = Theme.of(context);
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Sort by',
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                ...items,
              ],
            );
          },
        );
      },
      label: Text(label),
      icon: const Icon(Icons.arrow_drop_down),
    );
  }
}

class SortOption extends StatelessWidget {
  const SortOption({
    super.key,
    required this.title,
    this.leading,
    this.onTap,
    this.selected = false,
  });

  final Widget title;
  final Widget? leading;
  final void Function()? onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      selectedTileColor: theme.colorScheme.surfaceContainerHighest,
      selectedColor: theme.colorScheme.onSurface,
      selected: selected,
      title: title,
      leading: leading,
      onTap: onTap,
    );
  }
}
