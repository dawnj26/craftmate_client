import 'package:craftmate_client/gen/assets.gen.dart';
import 'package:craftmate_client/material_inventory/user_materials/bloc/user_material/user_material_bloc.dart';
import 'package:craftmate_client/material_inventory/user_materials/views/screens/add_material_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:material_repository/material_repository.dart' as m;

class UserMaterialsScreen extends StatelessWidget {
  const UserMaterialsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Materials'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).push(AddMaterialScreen.route()).then(
            (value) {
              if (context.mounted) {
                context.read<UserMaterialBloc>().add(
                      const UserMaterialEvent.started(),
                    );
              }
            },
          );
        },
        label: const Text('Add Material'),
        icon: const Icon(Icons.add),
      ),
      body: BlocBuilder<UserMaterialBloc, UserMaterialState>(
        builder: (context, state) {
          return state.maybeWhen<Widget>(
            initial: (_) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            loading: (_) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            error: (materials, message) {
              return Center(
                child: Text(message),
              );
            },
            orElse: () {
              return ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: state.materials.length,
                itemBuilder: (context, index) {
                  final material = state.materials[index];
                  return MaterialCard(
                    material: material,
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

class MaterialCard extends StatelessWidget {
  const MaterialCard({
    super.key,
    required this.material,
  });

  final m.Material material;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Row(
        children: [
          Flexible(
            child: AspectRatio(
              aspectRatio: 1,
              child: material.imageUrl != null
                  ? Image.network(
                      material.imageUrl!,
                      fit: BoxFit.cover,
                    )
                  : Assets.images.placeholderWithLogo.image(
                      fit: BoxFit.cover,
                    ),
            ),
          ),
          Flexible(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Expanded(
                    child: _MaterialInfo(
                      material: material,
                    ),
                  ),
                  PopupMenuButton(
                    itemBuilder: (context) {
                      return [
                        const PopupMenuItem(
                          child: Text('Edit'),
                        ),
                        const PopupMenuItem(
                          child: Text('Delete'),
                        ),
                      ];
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MaterialInfo extends StatelessWidget {
  const _MaterialInfo({required this.material});

  final m.Material material;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              material.name,
              style: theme.textTheme.titleMedium,
              overflow: TextOverflow.ellipsis,
            ),
            _Category(
              color: Color(material.materialCategory.hexColor),
              labelText: material.materialCategory.name,
            ),
          ],
        ),
        Text(
          '${material.quantity}',
          style: theme.textTheme.titleMedium,
        ),
      ],
    );
  }
}

class _Category extends StatelessWidget {
  const _Category({
    required this.color,
    required this.labelText,
  });

  final Color color;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
        const Gap(8),
        Text(
          labelText,
          style: theme.textTheme.bodyMedium,
        ),
      ],
    );
  }
}
