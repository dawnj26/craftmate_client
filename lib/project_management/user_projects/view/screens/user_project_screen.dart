import 'package:config_repository/config_repository.dart';
import 'package:craftmate_client/dashboard/home/view/components/bottom_loader.dart';
import 'package:craftmate_client/dashboard/home/view/components/category_filter.dart';
import 'package:craftmate_client/dashboard/shop/views/pages/add_listing_page.dart';
import 'package:craftmate_client/gen/assets.gen.dart';
import 'package:craftmate_client/helpers/alert/alert.dart';
import 'package:craftmate_client/helpers/components/empty_message.dart';
import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/project_management/components/asc_desc_button.dart';
import 'package:craftmate_client/project_management/components/filter_dropdown.dart';
import 'package:craftmate_client/project_management/components/sort_button.dart';
import 'package:craftmate_client/project_management/user_projects/bloc/selection/selection_bloc.dart'
    as s;
import 'package:craftmate_client/project_management/user_projects/bloc/user_project/user_project_bloc.dart';
import 'package:craftmate_client/project_management/user_projects/search/view/search_page.dart';
import 'package:craftmate_client/project_management/user_projects/view/tabs/completed_tab.dart';
import 'package:craftmate_client/project_management/user_projects/view/tabs/inactive_tab.dart';
import 'package:craftmate_client/project_management/user_projects/view/tabs/ongoing_tab.dart';
import 'package:craftmate_client/project_management/view/create_project_page.dart';
import 'package:craftmate_client/project_management/view_project/view/view_project_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:project_repository/project_repository.dart';
import 'package:timeago/timeago.dart' as timeago;

class UserProjectScreen extends StatelessWidget {
  const UserProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserProjectBloc, UserProjectState>(
      listener: _handleState,
      child: const _Body(),
    );
  }

  void _handleState(BuildContext context, UserProjectState state) {
    switch (state) {
      case Deleting():
        Modal.instance.showLoadingDialog(context);
      case Deleted():
        Navigator.of(context).pop();
        Alert.instance.showSnackbar(context, 'Projects deleted');
      case Error(message: final message):
        Alert.instance.showSnackbar(context, message);
    }
  }
}

class _Body extends StatefulWidget {
  const _Body();

  @override
  State<_Body> createState() => __BodyState();
}

class __BodyState extends State<_Body> with TickerProviderStateMixin {
  final _tabs = [
    'All',
    'Ongoing',
    'Inactive',
    'Completed',
  ];

  late final TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(
      length: _tabs.length,
      vsync: this,
    );

    _tabController.addListener(_onTabChanged);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.removeListener(_onTabChanged);
    _tabController.dispose();
    super.dispose();
  }

  void _onTabChanged() {
    context.read<s.SelectionBloc>().add(
          const s.SelectionEvent.clear(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UserProjectAppBar(
        tabBar: TabBar(
          controller: _tabController,
          tabs: _tabs
              .map(
                (tab) => Tab(
                  text: tab,
                ),
              )
              .toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _handleCreate(context),
        label: const Text('New Project'),
        icon: const Icon(Icons.add),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          _AllProjects(),
          OngoingTab(),
          InactiveTab(),
          CompletedTab(),
        ],
      ),
    );
  }

  void _handleCreate(BuildContext context) {
    Navigator.of(context).push(CreateProjectPage.route()).then((_) {
      if (context.mounted) {
        final bloc = context.read<UserProjectBloc>();
        bloc.add(
          UserProjectEvent.fetchProjects(
            filter: bloc.state.filter,
          ),
        );
      }
    });
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
          BlocBuilder<UserProjectBloc, UserProjectState>(
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
                          context.read<UserProjectBloc>().add(
                                UserProjectEvent.categoryChanged(
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
                  BlocBuilder<UserProjectBloc, UserProjectState>(
                    builder: (context, state) {
                      return _SortButton(
                        label: state.sort.label,
                        onSortChanged: (sort) {
                          context.read<UserProjectBloc>().add(
                                UserProjectEvent.sortChanged(
                                  sort: sort,
                                  order: state.order,
                                ),
                              );
                        },
                        selectedSort: state.sort,
                      );
                    },
                  ),
                  BlocBuilder<UserProjectBloc, UserProjectState>(
                    builder: (context, state) {
                      final isAsc = state.order == SortOrder.asc;

                      return AscDescButton(
                        isAsc: isAsc,
                        onOrderChanged: () {
                          context.read<UserProjectBloc>().add(
                                UserProjectEvent.sortChanged(
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
            child: BlocBuilder<UserProjectBloc, UserProjectState>(
              builder: (context, state) {
                switch (state) {
                  case Initial():
                    context.read<UserProjectBloc>().add(
                          const UserProjectEvent.fetchProjects(
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
                      key: const Key('user_project_list'),
                      projects: state.projects,
                      paginatedProject: state.paginatedProjects,
                      onRefresh: () async {
                        final state =
                            context.read<UserProjectBloc>().stream.first;
                        context.read<UserProjectBloc>().add(
                              const UserProjectEvent.refreshProjects(),
                            );
                        await state;
                      },
                      onFetchMore: () {
                        context.read<UserProjectBloc>().add(
                              const UserProjectEvent.loadMoreProjects(),
                            );
                      },
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

class UserProjectAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UserProjectAppBar({super.key, required this.tabBar});

  final TabBar tabBar;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<s.SelectionBloc, s.SelectionState>(
      builder: (context, state) {
        switch (state) {
          case s.Initial():
            return AppBar(
              title: const Text('My projects'),
              bottom: tabBar,
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      ProjectSearchPage.route(),
                    );
                  },
                  icon: const Icon(Icons.search),
                ),
              ],
            );
          case s.On(:final selectedProjectIds):
            return AppBar(
              bottom: tabBar,
              automaticallyImplyLeading: false,
              leading: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  context.read<s.SelectionBloc>().add(
                        const s.SelectionEvent.clear(),
                      );
                },
              ),
              title: Text('${selectedProjectIds.length} selected'),
              actions: [
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () => _handleDelete(context, selectedProjectIds),
                ),
              ],
            );
          case s.Off():
            return AppBar(
              bottom: tabBar,
              title: const Text('My projects'),
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      ProjectSearchPage.route(),
                    );
                  },
                  icon: const Icon(Icons.search),
                ),
              ],
            );
        }

        return const Center(
          child: Text('Error'),
        );
      },
    );
  }

  void _handleDelete(BuildContext context, List<int> selectedProjects) {
    Modal.instance.showConfirmationModal(
      context: context,
      title: 'Delete projects?',
      content: Text(
        'Are you sure you want to delete ${selectedProjects.length} project/s?',
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: () {
            context.read<UserProjectBloc>().add(
                  UserProjectEvent.deleteProjects(
                    projectIds: selectedProjects,
                  ),
                );
            context.read<s.SelectionBloc>().add(
                  const s.SelectionEvent.clear(),
                );
            Navigator.of(context).pop();
          },
          child: const Text('Delete'),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + tabBar.preferredSize.height);
}

class UserProjectList extends StatefulWidget {
  const UserProjectList({
    super.key,
    required this.projects,
    required this.paginatedProject,
    required this.onRefresh,
    required this.onFetchMore,
  });

  final List<Project> projects;
  final Pagination<Project> paginatedProject;
  final Future<void> Function() onRefresh;
  final void Function() onFetchMore;

  @override
  State<UserProjectList> createState() => _UserProjectListState();
}

class _UserProjectListState extends State<UserProjectList> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: widget.onRefresh,
      child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        controller: _scrollController,
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        itemCount: widget.paginatedProject.hasNextPage
            ? widget.projects.length + 1
            : widget.projects.length,
        itemBuilder: (context, index) {
          if (index == widget.projects.length) {
            return const Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: BottomLoader(),
            );
          }

          final project = widget.projects[index];
          return BlocBuilder<s.SelectionBloc, s.SelectionState>(
            builder: (context, state) {
              switch (state) {
                case s.Initial() || s.Off():
                  return ProjectCard(
                    project: project,
                    onLongPress: () {
                      context.read<s.SelectionBloc>().add(
                            s.SelectionEvent.started(projectId: project.id),
                          );
                    },
                    onTap: () {
                      Navigator.of(context).push(
                        ViewProjectPage.route(project.id),
                      );
                    },
                  );
                case s.On(:final selectedProjectIds):
                  final isSelected = selectedProjectIds.contains(project.id);
                  return ProjectCard(
                    project: project,
                    isSelected: isSelected,
                    onLongPress: () {},
                    trailing: IconButton(
                      onPressed: () {
                        if (isSelected) {
                          context.read<s.SelectionBloc>().add(
                                s.SelectionEvent.unselected(
                                  projectId: project.id,
                                ),
                              );
                        } else {
                          context.read<s.SelectionBloc>().add(
                                s.SelectionEvent.selected(
                                  projectId: project.id,
                                ),
                              );
                        }
                      },
                      icon: Icon(
                        isSelected
                            ? Icons.check_circle
                            : Icons.check_circle_outline,
                      ),
                    ),
                    onTap: () {
                      if (isSelected) {
                        context.read<s.SelectionBloc>().add(
                              s.SelectionEvent.unselected(
                                projectId: project.id,
                              ),
                            );
                      } else {
                        context.read<s.SelectionBloc>().add(
                              s.SelectionEvent.selected(projectId: project.id),
                            );
                      }
                    },
                  );
              }

              return const Center(
                child: Text('Error'),
              );
            },
          );
        },
      ),
    );
  }

  void _onScroll() {
    if (_isBottom) {
      widget.onFetchMore();
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}

class _FilterDropdown extends StatelessWidget {
  const _FilterDropdown();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return FilterDropdown<ProjectFilter>(
      width: screenSize.width * 0.35,
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
    context.read<UserProjectBloc>().add(
          UserProjectEvent.filterChanged(filter: filter),
        );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
    this.isSelected = false,
    required this.onLongPress,
    required this.onTap,
    this.trailing,
    this.showTrailing = true,
  });

  final Project project;
  final bool isSelected;
  final void Function() onLongPress;
  final void Function() onTap;
  final Widget? trailing;
  final bool showTrailing;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final completedSteps =
        project.steps?.where((s) => s.completedAt != null).length;
    final progress = project.steps == null || project.steps!.isEmpty
        ? 0.0
        : completedSteps! / project.steps!.length;

    return Card(
      color: isSelected ? theme.colorScheme.primaryContainer : null,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onLongPress: onLongPress,
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 80,
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: _buildImage(),
                  ),
                ),
                const Gap(12.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            project.title,
                            style: theme.textTheme.titleMedium,
                          ),
                          if (project.steps != null)
                            Text(
                              '${(progress * 100).toInt()}%',
                              style: theme.textTheme.labelMedium,
                            ),
                        ],
                      ),
                      const Gap(4.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ProjectStatus(
                            visibility: project.visibility,
                          ),
                          Text(
                            'Updated ${timeago.format(
                              project.updatedAt,
                              allowFromNow: true,
                            )}',
                            style: theme.textTheme.labelMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                if (showTrailing) _buildTrailing(context) else const Gap(16.0),
              ],
            ),
            if (project.steps != null)
              LinearProgressIndicator(
                value: progress,
                backgroundColor:
                    theme.colorScheme.primary.withValues(alpha: 0.2),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    if (project.imageUrl != null) {
      return Image.network(
        project.imageUrl!,
        fit: BoxFit.cover,
      );
    }

    return Assets.images.placeholderWithLogo.image(
      fit: BoxFit.cover,
    );
  }

  Widget _buildTrailing(BuildContext context) {
    if (trailing == null) {
      return PopupMenuButton(
        position: PopupMenuPosition.under,
        itemBuilder: (_) => [
          // const PopupMenuItem(
          //   child: Text('Share'),
          // ),
          PopupMenuItem(
            child: const Text('Sell'),
            onTap: () {
              Navigator.of(context).push(
                AddListingPage.route(project: project),
              );
            },
          ),
          PopupMenuItem(
            onTap: () => _handleDelete(context, project),
            child: const Text('Delete'),
          ),
        ],
      );
    }

    return trailing!;
  }

  void _handleDelete(BuildContext context, Project project) {
    Modal.instance.showConfirmationModal(
      context: context,
      title: 'Delete project?',
      content: Text(
        'Are you sure you want to delete ${project.title}?',
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: () {
            context.read<UserProjectBloc>().add(
                  UserProjectEvent.deleteProject(project: project),
                );
            Navigator.of(context).pop();
          },
          child: const Text('Delete'),
        ),
      ],
    );
  }
}

class ProjectStatus extends StatelessWidget {
  const ProjectStatus({
    super.key,
    required this.visibility,
  });

  final ProjectVisibility visibility;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = _getColor();

    return Row(
      children: [
        StatusCircle(
          color: color,
          size: 12.0,
        ),
        const Gap(4.0),
        Text(
          visibility.label,
          style: theme.textTheme.labelMedium,
        ),
      ],
    );
  }

  Color _getColor() {
    switch (visibility) {
      case ProjectVisibility.public:
        return Colors.green.shade300;
      case ProjectVisibility.private:
        return Colors.red.shade300;
      case ProjectVisibility.followers:
        return Colors.blue.shade300;
    }
  }
}

class StatusCircle extends StatelessWidget {
  const StatusCircle({
    super.key,
    required this.size,
    required this.color,
  });

  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
