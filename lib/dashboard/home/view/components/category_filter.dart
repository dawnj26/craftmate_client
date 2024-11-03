import 'package:craftmate_client/dashboard/home/bloc/category_search/category_search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:project_repository/project_repository.dart';

class CategoryFilter extends StatelessWidget {
  const CategoryFilter({
    super.key,
    required this.selectedCategory,
    required this.categories,
    this.onSelected,
  });

  final ProjectCategory selectedCategory;
  final List<ProjectCategory> categories;
  final void Function(ProjectCategory)? onSelected;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      selected: true,
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(selectedCategory.name),
          const Gap(4.0),
          const Icon(
            Icons.arrow_drop_down,
            size: 16,
          ),
        ],
      ),
      onSelected: (_) => _onSelected(
        context,
        categories,
        selectedCategory,
      ),
    );
  }

  void _onSelected(
    BuildContext context,
    List<ProjectCategory> categories,
    ProjectCategory selectedCategory,
  ) {
    final List<ProjectCategory> allCategories = [
      const ProjectCategory(name: 'All'),
      ...categories,
    ];

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (c) {
        return DraggableScrollableSheet(
          initialChildSize: 0.8,
          snap: true,
          expand: false,
          builder: (_, scrollController) {
            return BlocProvider(
              create: (context) => CategorySearchBloc(
                categories: allCategories,
              ),
              child: _CategoryList(
                onSelected: onSelected,
                scrollController: scrollController,
                selectedCategory: selectedCategory,
              ),
            );
          },
        );
      },
    );
  }
}

class _CategoryList extends StatelessWidget {
  const _CategoryList({
    this.onSelected,
    required this.scrollController,
    required this.selectedCategory,
  });

  final ScrollController scrollController;
  final ProjectCategory selectedCategory;
  final void Function(ProjectCategory value)? onSelected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            'Select a category',
            style: theme.textTheme.titleSmall,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: TextField(
            decoration: const InputDecoration(
              hintText: 'Search category',
              prefixIcon: Icon(Icons.search),
              contentPadding: EdgeInsets.all(12),
            ),
            onChanged: (query) {
              context.read<CategorySearchBloc>().add(
                    CategorySearchEvent.started(query),
                  );
            },
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: BlocBuilder<CategorySearchBloc, CategorySearchState>(
                builder: (context, state) {
                  return ListView.separated(
                    controller: scrollController,
                    itemCount: state.filteredCategories.length,
                    separatorBuilder: (context, index) => const Divider(
                      height: 0,
                    ),
                    itemBuilder: (_, index) {
                      final category = state.filteredCategories[index];
                      final isSelected = category == selectedCategory;

                      return ListTile(
                        title: Text(
                          isSelected
                              ? '${category.name} (Selected)'
                              : category.name,
                          style: isSelected
                              ? theme.textTheme.bodyLarge
                                  ?.copyWith(fontWeight: FontWeight.w500)
                              : null,
                        ),
                        onTap: () {
                          onSelected?.call(category);
                          Navigator.of(context).pop();
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
