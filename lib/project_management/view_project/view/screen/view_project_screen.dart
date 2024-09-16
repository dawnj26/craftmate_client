import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:craftmate_client/project_management/edit_project/view/edit_project_page.dart';
import 'package:craftmate_client/project_management/view_project/bloc/comment/comment_bloc.dart';
import 'package:craftmate_client/project_management/view_project/bloc/view_project/view_project_bloc.dart';
import 'package:craftmate_client/project_management/view_project/view/components/components.dart';
import 'package:craftmate_client/project_management/view_project/view/components/project_steps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
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
              return ProjectDescription(
                key: const Key('viewProject_description'),
                descriptionJson: state.project.description,
              );
            },
          ),
          const Gap(12.0),
          const ProjectBodySection(
            sectionName: 'Steps',
            type: EditProjectType.steps,
          ),
          const Divider(),
          BlocBuilder<ViewProjectBloc, ViewProjectState>(
            buildWhen: (previous, current) =>
                previous.project.steps != current.project.steps,
            builder: (context, state) {
              return ProjectSteps(
                key: const Key('viewProject_steps'),
                stepJson: state.project.steps,
              );
            },
          ),
        ],
      ),
    );
  }

  bool hasContent(List<dynamic> json) {
    final content = (json[0] as Map<String, dynamic>)['insert'] as String;
    final noContent = json.length == 1 && content.length == 1;

    return noContent;
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
          onPressed: () => _handleComment(
            context,
            project: context.read<ViewProjectBloc>().state.project,
            projectRepo: RepositoryProvider.of<ProjectRepository>(context),
          ),
          icon: const Icon(Icons.mode_comment_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.transform),
        ),
      ],
    );
  }

  void _handleComment(
    BuildContext context, {
    required Project project,
    required ProjectRepository projectRepo,
  }) {
    showMaterialModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16.0),
        ),
      ),
      builder: (context) {
        return BlocProvider(
          create: (context) => CommentBloc(
            projectRepo: projectRepo,
          ),
          child: CommentModal(
            project: project,
          ),
        );
      },
    );
  }
}
              children: [
                Text(
                  'Comments',
                  style: textTheme.titleMedium,
                ),
                Expanded(
                  child: Comments(
                    scrollController: scrollController,
                    project: project,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class Comments extends StatelessWidget {
  const Comments({
    super.key,
    required this.scrollController,
    required this.project,
  });

  final ScrollController? scrollController;
  final Project project;

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<CommentBloc>(context);
    bloc.add(CommentLoaded(project));

    return BlocBuilder<CommentBloc, CommentState>(
      builder: (context, state) {
        final color = Theme.of(context).colorScheme.primary;

        if (state is CommentLoading || state is CommentInitial) {
          return Center(
            child: LoadingAnimation(color: color),
          );
        } else if (state is CommentError) {
          return Center(
            child: Text(state.message),
          );
        }

        final comments = (state as CommentSuccess).comments;

        if (comments.isEmpty) {
          return const Center(
            child: Text('No comments'),
          );
        }

        return ListView.builder(
          controller: scrollController,
          itemCount: comments.length,
          itemBuilder: (context, index) {
            final comment = comments[index];
            return CommentBlock(
              userName: comment.user.name,
              comment: comment.content,
            );
          },
        );
      },
    );
  }
}

class CommentBlock extends StatelessWidget {
  const CommentBlock({
    super.key,
    required this.userName,
    required this.comment,
  });

  final String userName;
  final String comment;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    const middleGap = 8.0;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: theme.colorScheme.primaryContainer,
            child: Text(userName[0].toUpperCase()),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: middleGap + 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userName,
                        style: textTheme.titleSmall,
                      ),
                      Text(
                        comment,
                        style: textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: middleGap),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.thumb_up_alt_outlined),
                      ),
                      const Text('123'),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Reply'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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
