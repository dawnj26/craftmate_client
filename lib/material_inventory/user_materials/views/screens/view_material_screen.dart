import 'package:craftmate_client/globals.dart';
import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/material_inventory/user_materials/bloc/view_material/view_material_bloc.dart';
import 'package:craftmate_client/material_inventory/user_materials/views/screens/edit_material_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:material_repository/material_repository.dart' as m;

class ViewMaterialScreen extends StatelessWidget {
  const ViewMaterialScreen({
    super.key,
    required this.materialId,
  });

  final int materialId;

  static Route<void> route({
    required int materialId,
  }) {
    return MaterialPageRoute<void>(
      builder: (_) => ViewMaterialScreen(materialId: materialId),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ViewMaterialBloc(
        materialRepository: context.read(),
      )..add(
          ViewMaterialEvent.started(materialId: materialId),
        ),
      child: BlocListener<ViewMaterialBloc, ViewMaterialState>(
        listener: (context, state) {
          switch (state) {
            case Deleting():
              Modal.instance.showLoadingDialog(context);
            case Deleted():
              Navigator.of(context).pop();
              Modal.instance.showConfirmationModal(
                context: context,
                content: const Text('Material deleted'),
                title: 'Material deleted',
                actions: [
                  FilledButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pop();
                    },
                    child: const Text('Ok'),
                  ),
                ],
              );
          }
        },
        child: _ViewMain(materialId: materialId),
      ),
    );
  }
}

class _ViewMain extends StatelessWidget {
  const _ViewMain({
    required this.materialId,
  });

  final int materialId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View material'),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_outlined),
            onPressed: () async {
              final shouldDelete = await Modal.instance.showConfirmationModal(
                context: context,
                title: 'Delete material',
                content: const Text(
                  'Are you sure you want to delete this material?',
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: const Text('Cancel'),
                  ),
                  FilledButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: const Text('Delete'),
                  ),
                ],
              );

              if (!context.mounted || shouldDelete == null || !shouldDelete) {
                return;
              }

              final bloc = context.read<ViewMaterialBloc>();
              bloc.add(ViewMaterialEvent.delete(materialId: materialId));
            },
          ),
        ],
      ),
      body: BlocBuilder<ViewMaterialBloc, ViewMaterialState>(
        builder: (context, state) {
          switch (state) {
            case Initial() || Initializing():
              return const Center(
                child: CircularProgressIndicator(),
              );
            case Initialized(material: final material) ||
                  Deleting(material: final material) ||
                  Deleted(material: final material):
              return _MaterialBody(material: material);
            case Error(message: final message):
              return Center(
                child: Text(message),
              );
            default:
              return const Center(
                child: Text('Something went wrong'),
              );
          }
        },
      ),
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

    return Padding(
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
                  '${material.name} (${material.quantity})',
                  style: theme.textTheme.headlineMedium,
                  textAlign: TextAlign.center,
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
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      EditMaterialScreen.route(material),
                    );
                    if (!context.mounted) {
                      logger.info('From the screen');
                      return;
                    }

                    final bloc = context.read<ViewMaterialBloc>();
                    bloc.add(
                      ViewMaterialEvent.started(materialId: material.id),
                    );
                  },
                  label: const Text('Edit'),
                  icon: const Icon(Icons.edit_outlined),
                ),
              ),
            ],
          ),
        ],
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
                    _formatDate(material.createdAt ?? DateTime.now()),
                    style: theme.textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
            const Gap(12.0),
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
                    _formatDate(material.updatedAt ?? DateTime.now()),
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
