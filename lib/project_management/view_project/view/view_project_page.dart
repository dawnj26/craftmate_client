import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:project_repository/project_repository.dart';
import 'package:user_repository/user_repository.dart';

class ViewProjectPage extends StatelessWidget {
  const ViewProjectPage({
    super.key,
    required this.project,
  });

  final Project project;

  static Route<void> route(Project project) {
    return PageTransition.effect.slideFromRightToLeft(
      ViewProjectPage(
        project: project,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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
            tags: project.tags,
          ),
        ],
      ),
    );
  }
}

class _ProjectCardHeader extends StatelessWidget {
  const _ProjectCardHeader({
    required this.creator,
    required this.projectTitle,
    this.tags,
  });

  final User creator;
  final String projectTitle;
  final List<Tag>? tags;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      padding: const EdgeInsets.all(16.0),
      color: colorScheme.surfaceContainer,
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
          Tags(tags: tags),
          const _SocialCounters(),
          const _ActionButtons(),
        ],
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

    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          _Counter(
            countText: '12.1k',
            icon: Icon(Icons.favorite_outline),
          ),
          Gap(gap),
          _Counter(
            countText: '24',
            icon: Icon(Icons.transform),
          ),
          Gap(gap),
          _Counter(
            countText: '24',
            icon: Icon(Icons.mode_comment_outlined),
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
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.favorite_outline),
            label: const Text('Like'),
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
