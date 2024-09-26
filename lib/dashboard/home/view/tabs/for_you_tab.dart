import 'package:craftmate_client/dashboard/home/bloc/home_bloc.dart';
import 'package:craftmate_client/project_management/view_project/view/view_project_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:project_repository/project_repository.dart';

class ForYouTab extends StatefulWidget {
  const ForYouTab({super.key});

  @override
  State<ForYouTab> createState() => _ForYouTabState();
}

class _ForYouTabState extends State<ForYouTab> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const gap = 8.0;

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final bloc = BlocProvider.of<HomeBloc>(context);

        switch (state.status) {
          case HomeStatus.initial:
            bloc.add(const HomeLoadProjects());
            return const Center(
              child: CircularProgressIndicator(),
            );
          case HomeStatus.loading:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case HomeStatus.error:
            return const Center(
              child: Text('Failed to load projects'),
            );
          case HomeStatus.loaded:
            return RefreshIndicator(
              onRefresh: () async {
                final bloc = BlocProvider.of<HomeBloc>(context);
                final newState = bloc.stream.first;
                bloc.add(const HomeRefreshProjects());
                await newState;
              },
              child: ProjectGrid(
                scrollController: _scrollController,
                projects: state.projects,
                paginatedProjects: state.paginatedProjects,
              ),
            );
        }
      },
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return GestureDetector(
      onTap: () async {
        final p =
            await Navigator.of(context).push(ViewProjectPage.route(project));

        if (p == null) {
          return;
        }
        if (context.mounted) {
          context.read<HomeBloc>().add(HomeProjectUpdated(p));
        }
      },
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.asset(
                _getImageUrl(),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 12.0,
                        child: Icon(
                          Icons.person_outline,
                          size: 16.0,
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
                    style: textTheme.titleMedium,
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
                        '1.5k views',
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

  String _getImageUrl() {
    if (project.imageUrl == null) {
      return 'assets/images/placeholder.png';
    }

    return project.imageUrl!;
  }

  String _formatNumber(int number) {
    final format = NumberFormat.compact();
    return format.format(number);
  }
}
