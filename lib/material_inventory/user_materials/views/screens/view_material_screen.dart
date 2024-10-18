import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:material_repository/material_repository.dart' as m;

class ViewMaterialScreen extends StatelessWidget {
  const ViewMaterialScreen({
    super.key,
    required this.material,
  });

  final m.Material material;

  static Route<void> route({
    required m.Material material,
  }) {
    return MaterialPageRoute<void>(
      builder: (_) => ViewMaterialScreen(material: material),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _MaterialBody(
      material: material,
    );
  }
}

class _MaterialBody extends StatelessWidget {
  const _MaterialBody({
    required this.material,
  });

  final m.Material material;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('View material'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 5 / 3,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: _buildImage(theme),
                ),
              ),
            ),
            const Gap(12.0),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Text(
                    material.name,
                    style: theme.textTheme.headlineMedium,
                  ),
                  const Gap(32.0),
                  Expanded(
                    child: _MaterialInfo(material: material),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    label: const Text('Edit'),
                    icon: const Icon(Icons.edit_outlined),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage(ThemeData theme) {
    if (material.imageUrl == null) {
      return Center(
        child: Text(
          'No image',
          style: theme.textTheme.titleLarge?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      );
    }

    return Image.network(
      material.imageUrl!,
      fit: BoxFit.cover,
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({
    required this.titleText,
    required this.content,
  });

  final String titleText;
  final String content;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText,
          style: theme.textTheme.labelLarge,
        ),
        const Divider(
          height: 32.0,
        ),
        Text(
          content,
          style: theme.textTheme.bodyLarge,
        ),
      ],
    );
  }
}

class _MaterialInfo extends StatelessWidget {
  const _MaterialInfo({required this.material});

  final m.Material material;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListView(
      children: [
        _Section(
          titleText: 'Description',
          content: material.description,
        ),
        const Gap(32.0),
        Text(
          'Info',
          style: theme.textTheme.labelLarge,
        ),
        const Divider(
          height: 32.0,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Created at:',
                    style: theme.textTheme.labelMedium,
                  ),
                  const Gap(4.0),
                  Text(
                    _formatDate(material.createdAt),
                    style: theme.textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Updated at:',
                    style: theme.textTheme.labelMedium,
                  ),
                  const Gap(4.0),
                  Text(
                    _formatDate(material.updatedAt),
                    style: theme.textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  String _formatDate(DateTime date) {
    final format = DateFormat.yMMMMEEEEd();

    return format.format(date);
  }
}
