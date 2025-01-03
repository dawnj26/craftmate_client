import 'package:craftmate_client/dashboard/home/bloc/following/following_tab_bloc.dart';
import 'package:craftmate_client/dashboard/home/view/components/bottom_loader.dart';
import 'package:craftmate_client/dashboard/home/view/components/category_filter.dart';
import 'package:craftmate_client/gen/assets.gen.dart';
import 'package:craftmate_client/helpers/components/empty_message.dart';
import 'package:craftmate_client/project_management/view_project/view/view_project_page.dart';
import 'package:craftmate_client/user_profile/views/user_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:project_repository/project_repository.dart';

class FollowingTabPage extends StatelessWidget {
  const FollowingTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FollowingTabBloc(
        projectRepository: context.read<ProjectRepository>(),
      ),
      child: const FollowingTab(),
    );
  }
}

class FollowingTab extends StatefulWidget {
  const FollowingTab({super.key});

  @override
  State<FollowingTab> createState() => _FollowingTabState();
}

class _FollowingTabState extends State<FollowingTab> {
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
    return BlocBuilder<FollowingTabBloc, FollowingTabState>(
      builder: (context, state) {
        switch (state) {
          case Initial():
            context
                .read<FollowingTabBloc>()
                .add(const FollowingTabEvent.started());
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
                      BlocBuilder<FollowingTabBloc, FollowingTabState>(
                        builder: (context, state) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                CategoryFilter(
                                  selectedCategory: state.selectedCategory,
                                  categories: state.categories,
                                  onSelected: (category) {
                                    context.read<FollowingTabBloc>().add(
                                          FollowingTabEvent.categoryChanged(
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
                BlocBuilder<FollowingTabBloc, FollowingTabState>(
                  builder: (context, state) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CategoryFilter(
                        selectedCategory: state.selectedCategory,
                        categories: state.categories,
                        onSelected: (category) {
                          context
                              .read<FollowingTabBloc>()
                              .add(FollowingTabEvent.categoryChanged(category));
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
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlocBuilder<FollowingTabBloc, FollowingTabState>(
                  builder: (context, state) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CategoryFilter(
                        selectedCategory: state.selectedCategory,
                        categories: state.categories,
                        onSelected: (category) {
                          context
                              .read<FollowingTabBloc>()
                              .add(FollowingTabEvent.categoryChanged(category));
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
        }

        return const EmptyMessage(
          emptyMessage: 'Something went wrong',
        );
      },
    );
  }

  Future<void> _onRefresh() async {
    final bloc = BlocProvider.of<FollowingTabBloc>(context);
    final newState = bloc.stream.first;
    bloc.add(const FollowingTabEvent.refreshed());
    await newState;
  }

  void _onScroll() {
    if (_isBottom) {
      context
          .read<FollowingTabBloc>()
          .add(const FollowingTabEvent.loadMoreProjects());
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
    final hasImage = project.creator.image != null;

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
                          Navigator.of(context)
                              .push(UserProfilePage.route(project.creator.id));
                        },
                        child: CircleAvatar(
                          radius: 12.0,
                          backgroundImage: hasImage
                              ? NetworkImage(project.creator.image!)
                              : null,
                          child: hasImage
                              ? null
                              : const Icon(
                                  Icons.person_outline,
                                  size: 16.0,
                                ),
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
