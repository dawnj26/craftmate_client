import 'package:craftmate_client/globals.dart';
import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:craftmate_client/project_management/edit_project/view/edit_project_page.dart';
import 'package:craftmate_client/project_management/view_project/bloc/view_project_bloc.dart';
import 'package:craftmate_client/project_management/view_project/view/components/components.dart';
import 'package:craftmate_client/project_management/view_project/view/components/project_steps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:project_repository/project_repository.dart';
import 'package:user_repository/user_repository.dart';

class ViewProjectScreen extends StatelessWidget {
  const ViewProjectScreen({
    super.key,
  });

  static Route<void> route(Project project) {
    return PageTransition.effect.slideFromRightToLeft(
      const ViewProjectScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final project = BlocProvider.of<ViewProjectBloc>(context).state.project;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: ListView(
        children: [
          AspectRatio(
            aspectRatio: 3 / 2,
            child: Image.asset(
              'assets/images/placeholder_1.jpg',
              fit: BoxFit.cover,
            ),
          ),
          _ProjectCardHeader(
            creator: project.creator,
            projectTitle: project.title,
            project: project,
          ),
          _ProjectBody(project: project),
        ],
      ),
    );
  }
}

class _ProjectBody extends StatelessWidget {
  const _ProjectBody({required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProjectBodySection(
            sectionName: 'Description',
            type: EditProjectType.description,
          ),
          const Divider(),
          BlocBuilder<ViewProjectBloc, ViewProjectState>(
            buildWhen: (previous, current) {
              final res =
                  previous.project.description != current.project.description;
              return res;
            },
            builder: (context, state) {
              logger.info('Building project description');
              if (state.project.description == null) {
                return Text(
                  'No description',
                  style: textTheme.bodyLarge!.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                );
              }
              return ProjectDescription(
                key: const Key('viewProject_description'),
                descriptionJson: state.project.description,
              );
            },
          ),
          const Gap(12.0),
          const ProjectSteps(),
        ],
      ),
    );
  }
}

class ProjectBodySection extends StatelessWidget {
  const ProjectBodySection({
    super.key,
    required this.sectionName,
    required this.type,
  });

  final String sectionName;
  final EditProjectType type;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Row(
      children: [
        Text(
          sectionName,
          style: textTheme.titleLarge,
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              EditProjectPage.route(
                RepositoryProvider.of<ProjectRepository>(context),
                BlocProvider.of<ViewProjectBloc>(context).state.project,
                type,
              ),
            );
          },
          icon: const Icon(Icons.edit),
        ),
      ],
    );
  }
}

class _ProjectCardHeader extends StatelessWidget {
  const _ProjectCardHeader({
    required this.creator,
    required this.projectTitle,
    required this.project,
  });

  final User creator;
  final String projectTitle;
  final Project project;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      padding: const EdgeInsets.all(16.0),
      color: colorScheme.surfaceContainerLow,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CreatorAvatar(
            initialName: creator.name[0].toUpperCase(),
            fullName: creator.name,
          ),
          const Gap(16.0),
          _ProjectInfo(
            projectTitle: projectTitle,
          ),
          Tags(tags: project.tags),
          const SocialCounters(),
          const _ActionButtons(),
        ],
      ),
    );
  }
}

class Tags extends StatelessWidget {
  const Tags({super.key, required this.tags});

  final List<Tag>? tags;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: tags == null || tags!.isEmpty
          ? EdgeInsets.zero
          : const EdgeInsets.symmetric(vertical: 16.0),
      child: Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        children: tags!.map((e) => CategoryTag(tagText: e.name)).toList(),
      ),
    );
  }
}

class SocialCounters extends StatelessWidget {
  const SocialCounters({super.key});

  @override
  Widget build(BuildContext context) {
    const gap = 20.0;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          BlocBuilder<ViewProjectBloc, ViewProjectState>(
            buildWhen: (previous, current) =>
                previous.project.likeCount != current.project.likeCount,
            builder: (context, state) {
              return Counter(
                countText: '${state.project.likeCount}',
                icon: const Icon(Icons.favorite_outline),
              );
            },
          ),
          const Gap(gap),
          BlocBuilder<ViewProjectBloc, ViewProjectState>(
            buildWhen: (previous, current) =>
                previous.project.forkCount != current.project.forkCount,
            builder: (context, state) {
              return Counter(
                countText: '${state.project.forkCount}',
                icon: const Icon(Icons.transform),
              );
            },
          ),
          const Gap(gap),
          BlocBuilder<ViewProjectBloc, ViewProjectState>(
            buildWhen: (previous, current) =>
                previous.project.commentCount != current.project.commentCount,
            builder: (context, state) {
              return Counter(
                countText: '${state.project.commentCount}',
                icon: const Icon(Icons.mode_comment_outlined),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _ActionButtons extends StatelessWidget {
  const _ActionButtons();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: BlocBuilder<ViewProjectBloc, ViewProjectState>(
            buildWhen: (previous, current) =>
                previous.project.isLiked != current.project.isLiked,
            builder: (context, state) {
              final project = state.project;
              final bloc = context.read<ViewProjectBloc>();

              return OutlinedButton.icon(
                onPressed: () {
                  bloc.add(const ViewProjectLiked());
                },
                icon: Icon(
                  project.isLiked ? Icons.favorite : Icons.favorite_outline,
                ),
                label: Text(project.isLiked ? 'Liked' : 'Like'),
              );
            },
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.mode_comment_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.transform),
        ),
      ],
    );
  }
}

class _ProjectInfo extends StatelessWidget {
  const _ProjectInfo({
    required this.projectTitle,
  });

  final String projectTitle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          projectTitle,
          style: textTheme.titleLarge,
        ),
      ],
    );
  }
}
