import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:craftmate_client/project_management/view_project/bloc/view_project_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart';
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
            icon: const Icon(Icons.mode_edit_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: ListView(
        children: [
          Image.asset('assets/images/placeholder.png'),
          _ProjectCardHeader(
            creator: project.creator,
            projectTitle: project.title,
            project: project,
          ),
          ProjectBody(project: project),
        ],
      ),
    );
  }
}

class ProjectBody extends StatelessWidget {
  const ProjectBody({super.key, required this.project});

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
          Text(
            'Description',
            style: textTheme.titleLarge,
          ),
          const Gap(2.0),
          const Divider(),
          if (project.description == null)
            Text(
              'No description',
              style: textTheme.bodyLarge!.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            )
          else
            Description(descriptionJson: project.description),
        ],
      ),
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
          _Creator(
            initialName: creator.name[0].toUpperCase(),
            fullName: creator.name,
          ),
          const Gap(16.0),
          _ProjectInfo(
            projectTitle: projectTitle,
          ),
          Tags(tags: project.tags),
          const _SocialCounters(),
          const _ActionButtons(),
        ],
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.descriptionJson,
  });

  final List<dynamic>? descriptionJson;

  @override
  Widget build(BuildContext context) {
    final document = Document.fromJson(descriptionJson!);
    final controller = QuillController(
      document: document,
      selection: const TextSelection.collapsed(offset: 0),
      readOnly: true,
    );

    return QuillEditor.basic(
      controller: controller,
      configurations: const QuillEditorConfigurations(
        showCursor: false,
        enableInteractiveSelection: false,
      ),
    );
  }
}

class _Creator extends StatelessWidget {
  const _Creator({
    required this.initialName,
    required this.fullName,
  });

  final String initialName;
  final String fullName;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        CircleAvatar(
          radius: 16.0,
          child: Text(initialName),
        ),
        const Gap(12.0),
        Text(
          fullName,
          style: theme.textTheme.bodyMedium,
        ),
      ],
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
        children: tags!.map((e) => _Tag(tagText: e.name)).toList(),
      ),
    );
  }
}

class _Tag extends StatelessWidget {
  const _Tag({
    required this.tagText,
  });

  final String tagText;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      decoration: BoxDecoration(
        color: colorScheme.tertiaryContainer,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Text(
        tagText,
        style: TextStyle(
          color: colorScheme.onTertiaryContainer,
        ),
      ),
    );
  }
}

class _SocialCounters extends StatelessWidget {
  const _SocialCounters();

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
              return _Counter(
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
              return _Counter(
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
              return _Counter(
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

class _Counter extends StatelessWidget {
  const _Counter({
    required this.countText,
    required this.icon,
  });

  final String countText;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        icon,
        const SizedBox(
          width: 4.0,
        ),
        Text(
          countText,
          style: textTheme.labelLarge,
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
