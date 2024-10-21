import 'package:config_repository/config_repository.dart';
import 'package:craftmate_client/gen/assets.gen.dart';
import 'package:craftmate_client/helpers/alert/alert.dart';
import 'package:craftmate_client/helpers/components/empty_message.dart';
import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/material_inventory/user_materials/bloc/selection/material_selection_bloc.dart'
    as s;
import 'package:craftmate_client/material_inventory/user_materials/bloc/user_material/user_material_bloc.dart';
import 'package:craftmate_client/material_inventory/user_materials/views/screens/screens.dart';
import 'package:craftmate_client/project_management/components/asc_desc_button.dart';
import 'package:craftmate_client/project_management/components/filter_dropdown.dart';
import 'package:craftmate_client/project_management/components/sort_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:material_repository/material_repository.dart' as m;
import 'package:material_repository/material_repository.dart';

class UserMaterialsScreen extends StatelessWidget {
  const UserMaterialsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserMaterialBloc, UserMaterialState>(
      listener: _handleState,
      child: BlocBuilder<s.MaterialSelectionBloc, s.MaterialSelectionState>(
        builder: (context, state) {
          switch (state) {
            case s.On(selectedMaterials: final selectedMaterials):
              return Scaffold(
                appBar: AppBar(
                  leading: IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      context.read<s.MaterialSelectionBloc>().add(
                            const s.MaterialSelectionEvent.clear(),
                          );
                    },
                  ),
                  actions: [
                    IconButton(
                      icon: const Icon(Icons.delete_outline),
                      onPressed: () => _showDeleteConfirmation(
                        context,
                        selectedMaterials,
                      ),
                    ),
                  ],
                  title: Text('${selectedMaterials.length} selected'),
                ),
                body: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: BlocBuilder<UserMaterialBloc, UserMaterialState>(
                        builder: (context, state) {
                          return FilterActions(
                            categories: state.categories,
                            selectedSort: state.sort,
                            onSelected: (id) {
                              context.read<UserMaterialBloc>().add(
                                    UserMaterialEvent.categoryChanged(
                                      categoryId: id == 0 ? null : id,
                                    ),
                                  );
                            },
                          );
                        },
                      ),
                    ),
                    Expanded(
                      child: BlocBuilder<UserMaterialBloc, UserMaterialState>(
                        builder: _buildUserMaterials,
                      ),
                    ),
                  ],
                ),
              );
            default:
              return Scaffold(
                appBar: AppBar(
                  title: const Text('Materials'),
                  actions: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(context, SearchMaterialScreen.route())
                            .then(
                          (value) {
                            if (context.mounted) {
                              context.read<UserMaterialBloc>().add(
                                    const UserMaterialEvent.reload(),
                                  );
                            }
                          },
                        );
                      },
                      icon: const Icon(Icons.search),
                    ),
                  ],
                ),
                floatingActionButton: FloatingActionButton.extended(
                  onPressed: () => _handleAdd(context),
                  label: const Text('Add Material'),
                  icon: const Icon(Icons.add),
                ),
                body: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: BlocBuilder<UserMaterialBloc, UserMaterialState>(
                        builder: (context, state) {
                          return FilterActions(
                            categories: state.categories,
                            selectedSort: state.sort,
                            onSelected: (id) {
                              context.read<UserMaterialBloc>().add(
                                    UserMaterialEvent.categoryChanged(
                                      categoryId: id == 0 ? null : id,
                                    ),
                                  );
                            },
                          );
                        },
                      ),
                    ),
                    Expanded(
                      child: BlocBuilder<UserMaterialBloc, UserMaterialState>(
                        builder: _buildUserMaterials,
                      ),
                    ),
                  ],
                ),
              );
          }
        },
      ),
    );
  }

  void _showDeleteConfirmation(
    BuildContext context,
    List<int> selectedMaterials,
  ) {
    Modal.instance.showConfirmationModal(
      context: context,
      content: const Text(
        'Are you sure you want to delete these materials?',
      ),
      title: 'Delete Materials',
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: () => _handleDelete(
            context,
            selectedMaterials,
          ),
          child: const Text('Delete'),
        ),
      ],
    );
  }

  void _handleDelete(BuildContext context, List<int> selectedMaterials) {
    Navigator.of(context).pop();

    context.read<UserMaterialBloc>().add(
          UserMaterialEvent.deleteMaterials(
            materialIds: selectedMaterials,
          ),
        );
    context.read<s.MaterialSelectionBloc>().add(
          const s.MaterialSelectionEvent.clear(),
        );
  }

  Widget _buildUserMaterials(
    BuildContext context,
    UserMaterialState userMaterialState,
  ) {
    switch (userMaterialState) {
      case Initial():
      case Loading():
        return const Center(
          child: CircularProgressIndicator(),
        );
      case Error(message: final message):
        return Center(
          child: Text(message),
        );
      case Deleted(materials: final materials) when materials.isEmpty:
      case Loaded(materials: final materials) when materials.isEmpty:
        return const EmptyMessage(emptyMessage: 'No materials found');
      default:
        return ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: userMaterialState.materials.length,
          itemBuilder: (context, index) {
            final material = userMaterialState.materials[index];
            return BlocBuilder<s.MaterialSelectionBloc,
                s.MaterialSelectionState>(
              builder: (context, state) {
                switch (state) {
                  case s.On(selectedMaterials: final selectedMaterials):
                    final isSelected = selectedMaterials.contains(material.id);

                    return MaterialCard(
                      material: material,
                      isSelected: isSelected,
                      onTap: () {
                        if (isSelected) {
                          context.read<s.MaterialSelectionBloc>().add(
                                s.MaterialSelectionEvent.unselected(
                                  materialId: material.id,
                                ),
                              );
                        } else {
                          context.read<s.MaterialSelectionBloc>().add(
                                s.MaterialSelectionEvent.selected(
                                  materialId: material.id,
                                ),
                              );
                        }
                      },
                      trailing: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Icon(
                          isSelected
                              ? Icons.check_circle
                              : Icons.check_circle_outline,
                        ),
                      ),
                    );
                  default:
                    return MaterialCard(
                      material: material,
                      onTap: () => _handleTap(context, material.id),
                      onLongPress: () {
                        context.read<s.MaterialSelectionBloc>().add(
                              s.MaterialSelectionEvent.started(
                                materialId: material.id,
                              ),
                            );
                      },
                      trailing: MaterialMenu(material: material),
                    );
                }
              },
            );
          },
        );
    }
  }

  void _handleAdd(BuildContext context) {
    Navigator.of(context).push(AddMaterialScreen.route()).then(
      (value) {
        if (context.mounted) {
          context.read<UserMaterialBloc>().add(
                const UserMaterialEvent.started(),
              );
        }
      },
    );
  }

  void _handleState(BuildContext context, UserMaterialState state) {
    switch (state) {
      case Deleting():
        Modal.instance.showLoadingDialog(context);
      case Deleted():
        Navigator.of(context).pop();
        Alert.instance.showSnackbar(context, 'Material deleted successfully');
      case Error(message: final message):
        Navigator.of(context).pop();
        Modal.instance.showConfirmationModal(
          context: context,
          content: Text(message),
          title: 'Error',
          actions: [
            FilledButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Ok'),
            ),
          ],
        );
    }
  }

  void _handleTap(BuildContext context, int materialId) {
    Navigator.push(
      context,
      ViewMaterialScreen.route(materialId: materialId),
    ).then(
      (value) {
        if (context.mounted) {
          context.read<UserMaterialBloc>().add(
                const UserMaterialEvent.reload(),
              );
        }
      },
    );
  }
}

class FilterActions extends StatelessWidget {
  const FilterActions({
    super.key,
    required this.categories,
    required this.selectedSort,
    this.onSelected,
  });

  final List<m.MaterialCategory> categories;
  final void Function(int?)? onSelected;
  final MaterialSort selectedSort;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FilterDropdown<int>(
          initialSelection: 0,
          onSelected: onSelected,
          items: [
            const DropdownMenuEntry(value: 0, label: 'All'),
            ...categories.map(
              (category) => DropdownMenuEntry(
                value: category.id,
                label: category.name,
              ),
            ),
          ],
        ),
        Row(
          children: [
            BlocBuilder<UserMaterialBloc, UserMaterialState>(
              builder: (context, state) {
                return SortButton<int>(
                  label: selectedSort.label,
                  selectedSort: selectedSort.index,
                  items: MaterialSort.values
                      .map(
                        (sort) => SortOption(
                          leading: Icon(sort.icon),
                          title: Text(sort.label),
                          selected: sort == selectedSort,
                          onTap: () {
                            Navigator.of(context).pop();
                            context.read<UserMaterialBloc>().add(
                                  UserMaterialEvent.sortChanged(
                                    order: state.order,
                                    sort: sort,
                                  ),
                                );
                          },
                        ),
                      )
                      .toList(),
                );
              },
            ),
            BlocBuilder<UserMaterialBloc, UserMaterialState>(
              builder: (context, state) {
                final isAsc = state.order == SortOrder.asc;

                return AscDescButton(
                  isAsc: isAsc,
                  onOrderChanged: () {
                    context.read<UserMaterialBloc>().add(
                          UserMaterialEvent.sortChanged(
                            order: isAsc ? SortOrder.desc : SortOrder.asc,
                            sort: state.sort,
                          ),
                        );
                  },
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}

class MaterialCard extends StatelessWidget {
  const MaterialCard({
    super.key,
    required this.material,
    required this.trailing,
    this.isSelected = false,
    this.onTap,
    this.onLongPress,
  });

  final m.Material material;
  final void Function()? onTap;
  final void Function()? onLongPress;
  final bool isSelected;
  final Widget trailing;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      color: isSelected ? theme.colorScheme.primaryContainer : null,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onLongPress: onLongPress,
        onTap: onTap,
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
                    trailing,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MaterialMenu extends StatelessWidget {
  const MaterialMenu({
    super.key,
    required this.material,
  });

  final m.Material material;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            child: const Text('Edit'),
            onTap: () {
              Navigator.of(context)
                  .push(
                EditMaterialScreen.route(material),
              )
                  .then((_) {
                if (context.mounted) {
                  context.read<UserMaterialBloc>().add(
                        const UserMaterialEvent.reload(),
                      );
                }
              });
            },
          ),
          PopupMenuItem(
            child: const Text('Delete'),
            onTap: () {
              Modal.instance.showConfirmationModal(
                context: context,
                content: const Text(
                  'Are you sure you want to delete this material?',
                ),
                title: 'Delete Material',
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Cancel'),
                  ),
                  FilledButton(
                    onPressed: () {
                      context.read<UserMaterialBloc>().add(
                            UserMaterialEvent.deleteMaterial(
                              materialId: material.id,
                            ),
                          );
                      Navigator.of(context).pop();
                    },
                    child: const Text('Delete'),
                  ),
                ],
              );
            },
          ),
        ];
      },
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
        Expanded(
          child: Column(
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
