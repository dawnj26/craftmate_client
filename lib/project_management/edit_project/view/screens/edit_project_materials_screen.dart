import 'package:craftmate_client/helpers/components/empty_message.dart';
import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/material_inventory/user_materials/bloc/selection/material_selection_bloc.dart'
    as s;
import 'package:craftmate_client/material_inventory/user_materials/views/screens/screens.dart';
import 'package:craftmate_client/material_inventory/user_materials/views/screens/user_materials_screen.dart';
import 'package:craftmate_client/project_management/edit_project/bloc/materials/edit_project_materials_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditProjectMaterialsScreen extends StatelessWidget {
  const EditProjectMaterialsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<s.MaterialSelectionBloc, s.MaterialSelectionState>(
      builder: (context, state) {
        switch (state) {
          case s.On(selectedMaterials: final selectedMaterials):
            return Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  onPressed: () {
                    context.read<s.MaterialSelectionBloc>().add(
                          const s.MaterialSelectionEvent.clear(),
                        );
                  },
                  icon: const Icon(Icons.close),
                ),
                title: Text('${selectedMaterials.length} materials selected'),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.delete_outline),
                    onPressed: () {
                      Modal.instance.showConfirmationModal(
                        context: context,
                        title: 'Delete materials',
                        content: const Text(
                            'Are you sure you want to delete these materials?'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Cancel'),
                          ),
                          FilledButton(
                            onPressed: () {
                              Navigator.pop(context);
                              context.read<EditProjectMaterialsBloc>().add(
                                    EditProjectMaterialsEvent.deleteMaterials(
                                      materialIds: selectedMaterials,
                                    ),
                                  );
                            },
                            child: const Text('Delete'),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
              body: BlocBuilder<EditProjectMaterialsBloc,
                  EditProjectMaterialsState>(
                builder: _buildScreen,
              ),
            );

          default:
            return Scaffold(
              appBar: AppBar(
                title: const Text('Edit materials'),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () => _handleAdd(context),
                child: const Icon(Icons.add),
              ),
              body: BlocBuilder<EditProjectMaterialsBloc,
                  EditProjectMaterialsState>(
                builder: _buildScreen,
              ),
            );
        }
      },
    );
  }

  Widget _buildScreen(BuildContext context, EditProjectMaterialsState state) {
    final theme = Theme.of(context);

    switch (state) {
      case Initial():
      case Loading():
        return Center(
          child: LoadingAnimation(color: theme.colorScheme.primary),
        );
      case Error(message: final message):
        return Center(
          child: Text(message),
        );
      case Deleted(materials: final materials) when materials.isEmpty:
      case Loaded(materials: final materials) when materials.isEmpty:
        return const EmptyMessage(emptyMessage: 'No materials found');
      default:
        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: state.materials.length,
                itemBuilder: (context, index) {
                  final material = state.materials[index];
                  return BlocBuilder<s.MaterialSelectionBloc,
                      s.MaterialSelectionState>(
                    builder: (context, state) {
                      switch (state) {
                        case s.On(selectedMaterials: final selectedMaterials):
                          final isSelected =
                              selectedMaterials.contains(material.id);
                          return MaterialCard(
                            isSelected: isSelected,
                            material: material,
                            trailing: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Icon(
                                isSelected
                                    ? Icons.check_circle
                                    : Icons.check_circle_outline,
                              ),
                            ),
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
                          );
                        default:
                          return MaterialCard(
                            material: material,
                            trailing: IconButton.outlined(
                              onPressed: () {
                                Modal.instance.showConfirmationModal(
                                  context: context,
                                  title: 'Delete material',
                                  content: const Text(
                                    'Are you sure you want to delete this material?',
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('Cancel'),
                                    ),
                                    FilledButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        context
                                            .read<EditProjectMaterialsBloc>()
                                            .add(
                                              EditProjectMaterialsEvent
                                                  .deleteMaterials(
                                                materialIds: [material.id],
                                              ),
                                            );
                                      },
                                      child: const Text('Delete'),
                                    ),
                                  ],
                                );
                              },
                              icon: const Icon(Icons.delete_outline_rounded),
                            ),
                            onLongPress: () {
                              context.read<s.MaterialSelectionBloc>().add(
                                    s.MaterialSelectionEvent.started(
                                      materialId: material.id,
                                    ),
                                  );
                            },
                          );
                      }
                    },
                  );
                },
              ),
            ),
          ],
        );
    }
  }

  void _handleAdd(BuildContext context) {
    showModalBottomSheet(
      clipBehavior: Clip.antiAlias,
      context: context,
      builder: (context1) {
        final theme = Theme.of(context);

        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Add material',
                style: theme.textTheme.titleSmall,
              ),
            ),
            ListTile(
              title: const Text('Create new material'),
              onTap: () {
                Navigator.pop(context1);
                Navigator.of(context1).push(
                  AddMaterialScreen.route(
                    (materialId) {
                      context.read<EditProjectMaterialsBloc>().add(
                            EditProjectMaterialsEvent.addMaterial(
                              materialId: [materialId],
                            ),
                          );
                    },
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Choose from inventory'),
              onTap: () {},
            ),
          ],
        );
      },
    );
  }
}
