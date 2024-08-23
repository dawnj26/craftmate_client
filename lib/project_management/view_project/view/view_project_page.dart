import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ViewProjectPage extends StatelessWidget {
  const ViewProjectPage({super.key});

  static Route<void> route() {
    return PageTransition.effect.slideFromRightToLeft(const ViewProjectPage());
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
          const _ProjectCardHeader(),
        ],
      ),
    );
  }
}

class _ProjectCardHeader extends StatelessWidget {
  const _ProjectCardHeader();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      padding: const EdgeInsets.all(12.0),
      color: colorScheme.surfaceContainer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            onTap: () {},
            horizontalTitleGap: 12.0,
            contentPadding: EdgeInsets.zero,
            leading: const CircleAvatar(
              radius: 16.0,
              child: Text('A'),
            ),
            title: Text(
              'John doe',
              style: theme.textTheme.bodyMedium,
            ),
          ),
          const Gap(8.0),
          const _ProjectInfo(
            projectTitle: 'My favorite project',
            projectDescription: 'No description',
          ),
          const Gap(16.0),
          const Tags(),
          const Gap(16.0),
          const _SocialCounters(),
          const Gap(8.0),
          const _ActionButtons(),
        ],
      ),
    );
  }
}

class Tags extends StatelessWidget {
  const Tags({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: [
        Tag(
          tagText: 'paper',
        ),
        Tag(
          tagText: 'craziestshit',
        ),
        Tag(
          tagText: 'paper',
        ),
        Tag(
          tagText: 'craziestshit',
        ),
        Tag(
          tagText: 'paper',
        ),
        Tag(
          tagText: 'craziestshit',
        ),
        Tag(
          tagText: 'craziestshit',
        ),
        Tag(
          tagText: 'craziestshit',
        ),
      ],
    );
  }
}

class Tag extends StatelessWidget {
  const Tag({
    super.key,
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

    return const Row(
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
    );
  }
}

class _ActionButtons extends StatelessWidget {
  const _ActionButtons({super.key});

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
    required this.projectDescription,
  });

  final String projectTitle;
  final String projectDescription;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My favorite project',
          style: textTheme.titleLarge,
        ),
        const Gap(4.0),
        Text(
          'No description',
          style: TextStyle(
            fontSize: textTheme.bodyLarge!.fontSize,
            color: colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
