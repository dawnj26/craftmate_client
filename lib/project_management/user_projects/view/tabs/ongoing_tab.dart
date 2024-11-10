import 'package:config_repository/config_repository.dart';
import 'package:craftmate_client/dashboard/home/view/components/category_filter.dart';
import 'package:craftmate_client/helpers/components/empty_message.dart';
import 'package:craftmate_client/project_management/components/asc_desc_button.dart';
import 'package:craftmate_client/project_management/components/filter_dropdown.dart';
import 'package:craftmate_client/project_management/components/sort_button.dart';
import 'package:craftmate_client/project_management/user_projects/bloc/ongoing/ongoing_projects_bloc.dart';
import 'package:craftmate_client/project_management/user_projects/view/screens/user_project_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:project_repository/project_repository.dart';

class OngoingTab extends StatelessWidget {
  const OngoingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OngoingProjectsBloc(
        projectRepository: context.read(),
      ),
      child: const _AllProjects(),
    );
  }
}

class _AllProjects extends StatelessWidget {
  const _AllProjects();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<OngoingProjectsBloc, OngoingProjectsState>(
            builder: (context, state) {
              switch (state) {
                case Initial():
                case Loading():
                  return const SizedBox.shrink();
                default:
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CategoryFilter(
                        selectedCategory: state.selectedCategory,
                        categories: state.categories,
                        onSelected: (category) {
                          context.read<OngoingProjectsBloc>().add(
                                OngoingProjectsEvent.categoryChanged(
                                  category: category,
                                ),
                              );
                        },
                      ),
                    ],
                  );
              }
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const _FilterDropdown(),
              Row(
                children: [
                  BlocBuilder<OngoingProjectsBloc, OngoingProjectsState>(
                    builder: (context, state) {
                      return _SortButton(
                        label: state.sort.label,
                        onSortChanged: (sort) {
                          context.read<OngoingProjectsBloc>().add(
                                OngoingProjectsEvent.sortChanged(
                                  sort: sort,
                                  order: state.order,
                                ),
                              );
                        },
                        selectedSort: state.sort,
                      );
                    },
                  ),
                  BlocBuilder<OngoingProjectsBloc, OngoingProjectsState>(
                    builder: (context, state) {
                      final isAsc = state.order == SortOrder.asc;

                      return AscDescButton(
                        isAsc: isAsc,
                        onOrderChanged: () {
                          context.read<OngoingProjectsBloc>().add(
                                OngoingProjectsEvent.sortChanged(
                                  sort: state.sort,
                                  order: isAsc ? SortOrder.desc : SortOrder.asc,
                                ),
                              );
                        },
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          const Gap(8.0),
          Expanded(
            child: BlocBuilder<OngoingProjectsBloc, OngoingProjectsState>(
              builder: (context, state) {
                switch (state) {
                  case Initial():
                    context.read<OngoingProjectsBloc>().add(
                          const OngoingProjectsEvent.fetchProjects(
                            filter: ProjectFilter.all,
                          ),
                        );
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  case Loading():
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  default:
                    if (state.projects.isEmpty) {
                      return const EmptyMessage(
                        emptyMessage: 'No projects found',
                      );
                    }

                    return UserProjectList(
                      key: const Key('user_ongoing_project_list'),
                      projects: state.projects,
                      paginatedProject: state.paginatedProjects,
                      onRefresh: () async {
                        final state =
                            context.read<OngoingProjectsBloc>().stream.first;
                        context.read<OngoingProjectsBloc>().add(
                              const OngoingProjectsEvent.refreshProjects(),
                            );
                        await state;
                      },
                      onFetchMore: () => context
                          .read<OngoingProjectsBloc>()
                          .add(const OngoingProjectsEvent.loadMoreProjects()),
                    );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _FilterDropdown extends StatelessWidget {
  const _FilterDropdown();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return FilterDropdown<ProjectFilter>(
      width: screenSize.width * 0.43,
      initialSelection: ProjectFilter.all,
      items: ProjectFilter.values
          .map(
            (visibility) => DropdownMenuEntry(
              value: visibility,
              label: visibility.label,
            ),
          )
          .toList(),
      onSelected: (value) {
        if (value == null) {
          return;
        }
        _onSelected(context, value);
      },
    );
  }

  void _onSelected(BuildContext context, ProjectFilter filter) {
    context.read<OngoingProjectsBloc>().add(
          OngoingProjectsEvent.filterChanged(filter: filter),
        );
  }
}

class _SortButton extends StatelessWidget {
  const _SortButton({
    required this.label,
    required this.onSortChanged,
    required this.selectedSort,
  });

  final String label;
  final void Function(ProjectSort sort) onSortChanged;
  final ProjectSort selectedSort;

  @override
  Widget build(BuildContext context) {
    return SortButton(
      label: label,
      selectedSort: selectedSort,
      items: ProjectSort.values
          .map(
            (sort) => SortOption(
              title: Text(sort.label),
              leading: Icon(sort.icon),
              onTap: () {
                onSortChanged(sort);
                Navigator.of(context).pop();
              },
              selected: sort == selectedSort,
            ),
          )
          .toList(),
    );
  }
}
