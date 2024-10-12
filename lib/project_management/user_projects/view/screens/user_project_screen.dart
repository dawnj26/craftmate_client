import 'package:craftmate_client/dashboard/home/view/components/bottom_loader.dart';
import 'package:craftmate_client/gen/assets.gen.dart';
import 'package:craftmate_client/helpers/alert/alert.dart';
import 'package:craftmate_client/helpers/components/empty_message.dart';
import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/project_management/user_projects/bloc/selection/selection_bloc.dart';
import 'package:craftmate_client/project_management/user_projects/bloc/user_project/user_project_bloc.dart';
import 'package:craftmate_client/project_management/user_projects/search/view/search_page.dart';
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
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          deleting: (_, __, ___, ____, _____) {
            Modal.instance.showLoadingDialog(context);
          },
          deleted: (_, __, ___, ____, _____) {
            Navigator.of(context).pop();
            Alert.instance.showSnackbar(context, 'Projects deleted');
          },
          error: (_, __, ___, ____, _____, err) {
            Alert.instance.showSnackbar(context, err);
          },
        );
      },
      child: Scaffold(
        appBar: const UserProjectAppBar(),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 32.0, right: 8.0),
          child: FloatingActionButton.extended(
            onPressed: () {
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
            },
            label: const Text('New Project'),
            icon: const Icon(Icons.add),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const FilterDropdown(),
                  Row(
                    children: [
                      BlocBuilder<UserProjectBloc, UserProjectState>(
                        builder: (context, state) {
                          return SortButton(
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
                                      order: isAsc
                                          ? SortOrder.desc
                                          : SortOrder.asc,
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
              Expanded(
                child: BlocBuilder<UserProjectBloc, UserProjectState>(
                  builder: (context, state) {
                    return state.when(
                      initial: (_, __, ___, ____, _____) {
                        context.read<UserProjectBloc>().add(
                              const UserProjectEvent.fetchProjects(
                                filter: ProjectFilter.all,
                              ),
                            );
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                      loading: (_, __, ___, ____, _____) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      loaded: (
                        projects,
                        paginatedProject,
                        ___,
                        ____,
                        _____,
                        ______,
                      ) {
                        if (projects.isEmpty) {
                          return const EmptyMessage(
                            emptyMessage: 'No projects found',
                          );
                        }

                        return UserProjectList(
                          key: const Key('user_project_list'),
                          projects: projects,
                          paginatedProject: paginatedProject,
                        );
                      },
                      deleted: (projects, paginatedProject, ___, ____, _____) {
                        if (projects.isEmpty) {
                          return const EmptyMessage(
                            emptyMessage: 'No projects found',
                          );
                        }

                        return UserProjectList(
                          key: const Key('user_project_list'),
                          projects: projects,
                          paginatedProject: paginatedProject,
                        );
                      },
                      deleting: (projects, paginatedProject, ___, ____, _____) {
                        if (projects.isEmpty) {
                          return const EmptyMessage(
                            emptyMessage: 'No projects found',
                          );
                        }

                        return UserProjectList(
                          key: const Key('user_project_list'),
                          projects: projects,
                          paginatedProject: paginatedProject,
                        );
                      },
                      error: (_, __, ___, ____, _____, err) => Center(
                        child: Text(err),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SortButton extends StatelessWidget {
  const SortButton({
    super.key,
    required this.label,
    required this.onSortChanged,
    required this.selectedSort,
  });

  final String label;
  final void Function(ProjectSort sort) onSortChanged;
  final ProjectSort selectedSort;

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
                ...ProjectSort.values.map((sort) {
                  final isSelected = sort == selectedSort;

                  return ListTile(
                    selectedTileColor:
                        theme.colorScheme.surfaceContainerHighest,
                    selectedColor: theme.colorScheme.onSurface,
                    selected: isSelected,
                    title: Text(sort.label),
                    leading: Icon(sort.icon),
                    onTap: () {
                      onSortChanged(sort);
                      Navigator.of(context).pop();
                    },
                  );
                }),
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

class AscDescButton extends StatelessWidget {
  const AscDescButton({
    super.key,
    this.isAsc = false,
    required this.onOrderChanged,
  });

  final bool isAsc;
  final void Function() onOrderChanged;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onOrderChanged,
      icon: Icon(isAsc ? Icons.arrow_upward : Icons.arrow_downward),
    );
  }
}

class UserProjectAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UserProjectAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectionBloc, SelectionState>(
      builder: (context, state) {
        return state.when(
          initial: (_) {
            return AppBar(
              title: const Text('Your projects'),
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      SearchPage.route(),
                    );
                  },
                  icon: const Icon(Icons.search),
                ),
              ],
            );
          },
          on: (selectedProjects) {
            return AppBar(
              automaticallyImplyLeading: false,
              leading: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  context.read<SelectionBloc>().add(
                        const SelectionEvent.clear(),
                      );
                },
              ),
              title: Text('${selectedProjects.length} selected'),
              actions: [
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () => _handleDelete(context, selectedProjects),
                ),
              ],
            );
          },
          off: (_) {
            return AppBar(
              title: const Text('Your projects'),
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      SearchPage.route(),
                    );
                  },
                  icon: const Icon(Icons.search),
                ),
              ],
            );
          },
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
            context.read<SelectionBloc>().add(
                  const SelectionEvent.clear(),
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
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class UserProjectList extends StatefulWidget {
  const UserProjectList({
    super.key,
    required this.projects,
    required this.paginatedProject,
  });

  final List<Project> projects;
  final Pagination<Project> paginatedProject;

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
      onRefresh: () async {
        final state = context.read<UserProjectBloc>().stream.first;
        context.read<UserProjectBloc>().add(
              const UserProjectEvent.refreshProjects(),
            );
        await state;
      },
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
          return BlocBuilder<SelectionBloc, SelectionState>(
            builder: (context, state) {
              return state.when(
                initial: (_) {
                  return ProjectCard(
                    project: project,
                    onLongPress: () {
                      context.read<SelectionBloc>().add(
                            SelectionEvent.started(projectId: project.id),
                          );
                    },
                    onTap: () {
                      Navigator.of(context).push(
                        ViewProjectPage.route(project),
                      );
                    },
                  );
                },
                on: (selectedProjects) {
                  final isSelected = selectedProjects.contains(project.id);
                  return ProjectCard(
                    project: project,
                    isSelected: isSelected,
                    onLongPress: () {},
                    trailing: IconButton(
                      onPressed: () {
                        if (isSelected) {
                          context.read<SelectionBloc>().add(
                                SelectionEvent.unselected(
                                  projectId: project.id,
                                ),
                              );
                        } else {
                          context.read<SelectionBloc>().add(
                                SelectionEvent.selected(projectId: project.id),
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
                        context.read<SelectionBloc>().add(
                              SelectionEvent.unselected(projectId: project.id),
                            );
                      } else {
                        context.read<SelectionBloc>().add(
                              SelectionEvent.selected(projectId: project.id),
                            );
                      }
                    },
                  );
                },
                off: (_) {
                  return ProjectCard(
                    project: project,
                    onLongPress: () {
                      context.read<SelectionBloc>().add(
                            SelectionEvent.started(projectId: project.id),
                          );
                    },
                    onTap: () {
                      Navigator.of(context).push(
                        ViewProjectPage.route(project),
                      );
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }

  void _onScroll() {
    if (_isBottom) {
      context
          .read<UserProjectBloc>()
          .add(const UserProjectEvent.loadMoreProjects());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}

class FilterDropdown extends StatelessWidget {
  const FilterDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DropdownMenu<ProjectFilter>(
      onSelected: (filter) {
        if (filter == null) {
          return;
        }
        _onSelected(context, filter);
      },
      leadingIcon: const Icon(Icons.filter_list),
      textStyle: theme.textTheme.titleSmall,
      initialSelection: ProjectFilter.all,
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
      dropdownMenuEntries: ProjectFilter.values
          .map(
            (visibility) => DropdownMenuEntry(
              value: visibility,
              label: visibility.label,
            ),
          )
          .toList(),
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

    return Card(
      color: isSelected ? theme.colorScheme.primaryContainer : null,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onLongPress: onLongPress,
        onTap: onTap,
        child: Row(
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
                  Text(
                    project.title,
                    style: theme.textTheme.titleMedium,
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
          const PopupMenuItem(
            child: Text('Share'),
          ),
          PopupMenuItem(
            onTap: () => _handleDelete(context, project),
            child: const Text('Delete'),
          ),
          const PopupMenuItem(
            child: Text('Info'),
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
