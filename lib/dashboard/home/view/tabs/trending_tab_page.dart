import 'package:craftmate_client/dashboard/home/bloc/trending/trending_tab_bloc.dart';
import 'package:craftmate_client/dashboard/home/models/most_filter.dart';
import 'package:craftmate_client/dashboard/home/view/components/bottom_loader.dart';
import 'package:craftmate_client/gen/assets.gen.dart';
import 'package:craftmate_client/helpers/components/empty_message.dart';
import 'package:craftmate_client/project_management/view_project/view/view_project_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:project_repository/project_repository.dart';

class TrendingTabPage extends StatelessWidget {
  const TrendingTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TrendingTabBloc(
        projectRepository: context.read<ProjectRepository>(),
      ),
      child: const TrendingTab(),
    );
  }
}

class TrendingTab extends StatefulWidget {
  const TrendingTab({super.key});

  @override
  State<TrendingTab> createState() => _TrendingTabState();
}

class _TrendingTabState extends State<TrendingTab> {
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
    return BlocBuilder<TrendingTabBloc, TrendingTabState>(
      builder: (context, state) {
        switch (state) {
          case Initial():
            context
                .read<TrendingTabBloc>()
                .add(const TrendingTabEvent.started());
            return const Center(
              child: CircularProgressIndicator(),
            );
          case Loading():
            return const Center(
              child: CircularProgressIndicator(),
            );
          case Loaded(projects: final project, filter: final filter)
              when project.isEmpty:
            return RefreshIndicator(
              onRefresh: _onRefresh,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            FilterChip(
                              selected: true,
                              label: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(filter.label),
                                  const Gap(4.0),
                                  const Icon(
                                    Icons.arrow_drop_down_rounded,
                                    size: 20.0,
                                  ),
                                ],
                              ),
                              onSelected: _onSelected,
                            ),
                          ],
                        ),
                      ),
                      const Expanded(
                        child: EmptyMessage(
                          emptyMessage: 'No projects found',
                        ),
                      ),
                    ],
                  ),
                  ListView(),
                ],
              ),
            );
          case Loaded(
              projects: final projects,
              page: final page,
              filter: final filter
            ):
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      FilterChip(
                        selected: true,
                        label: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(filter.label),
                            const Gap(4.0),
                            const Icon(
                              Icons.arrow_drop_down_rounded,
                              size: 20.0,
                            ),
                          ],
                        ),
                        onSelected: _onSelected,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ProjectList(
                    scrollController: _scrollController,
                    projects: projects,
                    paginatedProjects: page,
                    onPop: () {
                      context
                          .read<TrendingTabBloc>()
                          .add(const TrendingTabEvent.refreshed());
                    },
                  ),
                ),
              ],
            );
          case Error(
              projects: final projects,
              page: final page,
              filter: final filter
            ):
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      FilterChip(
                        selected: true,
                        label: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(filter.label),
                            const Gap(4.0),
                            const Icon(
                              Icons.arrow_drop_down_rounded,
                              size: 20.0,
                            ),
                          ],
                        ),
                        onSelected: _onSelected,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ProjectList(
                    scrollController: _scrollController,
                    projects: projects,
                    paginatedProjects: page,
                    onPop: () {
                      context
                          .read<TrendingTabBloc>()
                          .add(const TrendingTabEvent.refreshed());
                    },
                  ),
                ),
              ],
            );
        }

        return const EmptyMessage(
          emptyMessage: 'Something went wrong',
        );
      },
    );
  }

  void _onSelected(bool selected) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.remove_red_eye_outlined),
              title: const Text('Most Views'),
              onTap: () {
                context.read<TrendingTabBloc>().add(
                      const TrendingTabEvent.filterChanged(
                        MostFilter.views,
                      ),
                    );
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.favorite_outline),
              title: const Text('Most Likes'),
              onTap: () {
                context.read<TrendingTabBloc>().add(
                      const TrendingTabEvent.filterChanged(
                        MostFilter.likes,
                      ),
                    );
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.comment_outlined),
              title: const Text('Most Comments'),
              onTap: () {
                context.read<TrendingTabBloc>().add(
                      const TrendingTabEvent.filterChanged(
                        MostFilter.comments,
                      ),
                    );
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _onRefresh() async {
    final bloc = BlocProvider.of<TrendingTabBloc>(context);
    final newState = bloc.stream.first;
    bloc.add(const TrendingTabEvent.refreshed());
    await newState;
  }

  void _onScroll() {
    if (_isBottom) {
      context
          .read<TrendingTabBloc>()
          .add(const TrendingTabEvent.loadMoreProjects());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}

class ProjectList extends StatelessWidget {
  const ProjectList({
    super.key,
    required this.scrollController,
    required this.projects,
    required this.paginatedProjects,
    this.onPop,
  });

  final ScrollController scrollController;
  final List<Project> projects;
  final Pagination<Project> paginatedProjects;
  final void Function()? onPop;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // padding: const EdgeInsets.all(16.0),
      physics: const AlwaysScrollableScrollPhysics(),
      controller: scrollController,
      itemCount:
          paginatedProjects.hasNextPage ? projects.length + 1 : projects.length,
      itemBuilder: (context, index) {
        if (index >= projects.length) {
          return const BottomLoader();
        }

        final project = projects[index];
        return NumberedProjectCard(
          index: index,
          project: project,
          onPop: onPop,
        );
      },
    );
  }
}

class NumberedProjectCard extends StatelessWidget {
  const NumberedProjectCard({
    super.key,
    required this.project,
    required this.index,
    this.onPop,
  });

  final Project project;
  final int index;
  final void Function()? onPop;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final screenWidth = MediaQuery.sizeOf(context).width;
    final imageSize = screenWidth * 0.2;

    return InkWell(
      onTap: () async {
        await Navigator.push(context, ViewProjectPage.route(project.id));

        onPop?.call();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: 24.0,
        ),
        child: Row(
          children: [
            Text(
              '${index + 1}',
              style: textTheme.labelLarge,
            ),
            const Gap(12.0),
            Container(
              width: imageSize,
              height: imageSize,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.2),
                ),
              ),
              child: _getImageUrl(),
            ),
            const Gap(8.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    project.title,
                    style: textTheme.titleSmall,
                  ),
                  if (project.tags != null)
                    _Tags(
                      tags: project.tags!,
                    ),
                  const Gap(4.0),
                  Row(
                    children: [
                      const Icon(
                        Icons.favorite_outline,
                        size: 16.0,
                      ),
                      const Gap(4.0),
                      Text(
                        _formatNumber(project.likeCount),
                        style: textTheme.labelSmall,
                      ),
                      const Gap(8.0),
                      const Icon(
                        Icons.comment_outlined,
                        size: 16.0,
                      ),
                      const Gap(4.0),
                      Text(
                        _formatNumber(project.commentCount),
                        style: textTheme.labelSmall,
                      ),
                      const Gap(8.0),
                      const Icon(
                        Icons.remove_red_eye_outlined,
                        size: 16.0,
                      ),
                      const Gap(4.0),
                      Text(
                        _formatNumber(project.viewCount),
                        style: textTheme.labelSmall,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getImageUrl() {
    if (project.imageUrl == null) {
      return Assets.images.placeholderWithLogo.image(
        fit: BoxFit.cover,
      );
    }

    return Image.network(
      project.imageUrl!,
      fit: BoxFit.cover,
    );
  }

  String _formatNumber(int number) {
    final format = NumberFormat.compact();
    return format.format(number);
  }
}

class _Tags extends StatelessWidget {
  const _Tags({
    required this.tags,
  });

  final List<Tag> tags;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(4.0),
        Wrap(
          spacing: 8.0,
          children: tags
              .map(
                (tag) => Text(tag.name),
              )
              .toList(),
        ),
      ],
    );
  }
}
