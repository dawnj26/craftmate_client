import 'package:craftmate_client/dashboard/home/bloc/latest/latest_tab_bloc.dart';
import 'package:craftmate_client/dashboard/home/view/components/bottom_loader.dart';
import 'package:craftmate_client/dashboard/home/view/components/category_filter.dart';
import 'package:craftmate_client/gen/assets.gen.dart';
import 'package:craftmate_client/globals.dart';
import 'package:craftmate_client/helpers/components/empty_message.dart';
import 'package:craftmate_client/project_management/view_project/view/view_project_page.dart';
import 'package:craftmate_client/user_profile/views/user_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:project_repository/project_repository.dart';

class ForYouPage extends StatelessWidget {
  const ForYouPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LatestTabBloc(
        projectRepository: context.read<ProjectRepository>(),
      ),
      child: const ForYouTab(),
    );
  }
}

class ForYouTab extends StatefulWidget {
  const ForYouTab({super.key});

  @override
  State<ForYouTab> createState() => _ForYouTabState();
}

class _ForYouTabState extends State<ForYouTab> {
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
    return BlocBuilder<LatestTabBloc, LatestTabState>(
      builder: (context, state) {
        switch (state) {
          case Initial():
            context.read<LatestTabBloc>().add(const LatestTabEvent.started());
            return const Center(
              child: CircularProgressIndicator(),
            );
          case Loading():
            return const Center(
              child: CircularProgressIndicator(),
            );
          case Loaded(projects: final project) when project.isEmpty:
            return RefreshIndicator(
              onRefresh: _onRefresh,
              child: Stack(
                children: [
                  const EmptyMessage(
                    emptyMessage: 'No projects found',
                  ),
                  ListView(
                    children: [
                      BlocBuilder<LatestTabBloc, LatestTabState>(
                        builder: (context, state) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                CategoryFilter(
                                  selectedCategory: state.selectedCategory,
                                  categories: state.categories,
                                  onSelected: (category) {
                                    context.read<LatestTabBloc>().add(
                                          LatestTabEvent.categoryChanged(
                                            category,
                                          ),
                                        );
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            );
          case Loaded(projects: final projects, page: final page):
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlocBuilder<LatestTabBloc, LatestTabState>(
                  builder: (context, state) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CategoryFilter(
                        selectedCategory: state.selectedCategory,
                        categories: state.categories,
                        onSelected: (category) {
                          context.read<LatestTabBloc>().add(
                                LatestTabEvent.categoryChanged(category),
                              );
                        },
                      ),
                    );
                  },
                ),
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: _onRefresh,
                    child: ProjectGrid(
                      scrollController: _scrollController,
                      projects: projects,
                      paginatedProjects: page,
                    ),
                  ),
                ),
              ],
            );
          case Error(projects: final projects, page: final page):
            return RefreshIndicator(
              onRefresh: _onRefresh,
              child: ProjectGrid(
                scrollController: _scrollController,
                projects: projects,
                paginatedProjects: page,
                onPop: () {
                  context
                      .read<LatestTabBloc>()
                      .add(const LatestTabEvent.refreshed());
                },
              ),
            );
        }

        return const EmptyMessage(
          emptyMessage: 'Something went wrong',
        );
      },
    );
  }

  Future<void> _onRefresh() async {
    final bloc = BlocProvider.of<LatestTabBloc>(context);
    final newState = bloc.stream.first;
    bloc.add(const LatestTabEvent.refreshed());
    await newState;
  }

  void _onScroll() {
    if (_isBottom) {
      context
          .read<LatestTabBloc>()
          .add(const LatestTabEvent.loadMoreProjects());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}

class ProjectGrid extends StatelessWidget {
  const ProjectGrid({
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
    const gap = 8.0;
    return Scaffold(
      body: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        controller: scrollController,
        slivers: _buildSlivers(gap),
      ),
    );
  }

  List<Widget> _buildSlivers(double gap) {
    final slivers = <Widget>[
      SliverPadding(
        padding: EdgeInsets.all(gap),
        sliver: SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              final project = projects[index];
              return ProjectCard(
                project: project,
                onPop: onPop,
              );
            },
            childCount:
                projects.length, // Adjust this number to add more grid items
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            mainAxisSpacing: gap,
            crossAxisSpacing: gap,
          ),
        ),
      ),
    ];

    if (paginatedProjects.hasNextPage) {
      slivers.add(
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BottomLoader(),
              ],
            ),
          ),
        ),
      );
    }

    return slivers;
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
    this.onPop,
  });

  final Project project;
  final void Function()? onPop;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final hasProfile = project.creator.image != null;

    logger.info('Has profile: $hasProfile');

    return GestureDetector(
      onTap: () async {
        await Navigator.of(context).push(ViewProjectPage.route(project.id));

        onPop?.call();
      },
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: _getImageUrl(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(UserProfilePage.route());
                        },
                        child: CircleAvatar(
                          radius: 12.0,
                          backgroundImage: hasProfile
                              ? NetworkImage(project.creator.image!)
                              : null,
                          child: !hasProfile
                              ? const Icon(
                                  Icons.person_outline,
                                  size: 16.0,
                                )
                              : null,
                        ),
                      ),
                      const Gap(8.0),
                      Text(
                        project.creator.name,
                        style: textTheme.labelSmall,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  const Gap(8.0),
                  Text(
                    project.title,
                    style: textTheme.labelLarge,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Gap(8.0),
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
                      const Spacer(),
                      Text(
                        '${_formatNumber(project.viewCount)} views',
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
