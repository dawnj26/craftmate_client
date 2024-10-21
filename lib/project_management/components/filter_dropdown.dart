import 'package:flutter/material.dart';

class FilterDropdown<T> extends StatelessWidget {
  const FilterDropdown({
    super.key,
    this.initialSelection,
    required this.items,
    this.onSelected,
  });

  final T? initialSelection;
  final List<DropdownMenuEntry<T>> items;
  final void Function(T?)? onSelected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // final screenSize = MediaQuery.sizeOf(context);
    return DropdownMenu<T>(
      // menuHeight: screenSize.height * 0.25,
      onSelected: onSelected,
      leadingIcon: const Icon(Icons.filter_list),
      textStyle: theme.textTheme.titleSmall,
      initialSelection: initialSelection,
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
        ),
        isDense: true,
        constraints: BoxConstraints.tight(
          const Size.fromHeight(40.0),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
      ),
      dropdownMenuEntries: items,
    );
  }
}
