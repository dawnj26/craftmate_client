import 'package:craftmate_client/helpers/alert/alert.dart';
import 'package:craftmate_client/helpers/components/empty_message.dart';
import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:craftmate_client/material_inventory/user_materials/views/screens/user_materials_screen.dart';
import 'package:craftmate_client/project_management/edit_project/bloc/select_material_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_repository/material_repository.dart' as m;

class SelectMaterialsScreen extends StatelessWidget {
  const SelectMaterialsScreen({super.key, required this.projectId});

  final int projectId;

  static Route<void> route(int projectId) {
    return PageTransition.effect.slideFromRightToLeft(
      SelectMaterialsScreen(
        projectId: projectId,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SelectMaterialBloc(
        materialRepository: context.read(),
        projectId: projectId,
      )..add(
          const SelectMaterialEvent.started(),
        ),
      child: BlocListener<SelectMaterialBloc, SelectMaterialState>(
        listener: (context, state) {
          switch (state) {
            case Adding():
              Modal.instance.showLoadingDialog(context);
            case Added():
              Navigator.pop(context);
              Navigator.pop(context);
              Alert.instance.showSnackbar(context, 'Materials saved');
          }
        },
        child: const Scaffold(
          appBar: _SearchAppBar(),
          body: _SelectMaterialBody(),
        ),
      ),
    );
  }
}

class _SearchAppBar extends StatefulWidget implements PreferredSizeWidget {
  const _SearchAppBar();

  @override
  State<_SearchAppBar> createState() => _SearchAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _SearchAppBarState extends State<_SearchAppBar> {
  final _searchController = TextEditingController();
  final _focusNode = FocusNode();

  @override
  void dispose() {
    // TODO: implement dispose
    _searchController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectMaterialBloc, SelectMaterialState>(
      builder: (context, state) {
        final searching = switch (state) {
          Searching() => true,
          SelectMaterialState() => false
        };

        return AnimatedCrossFade(
          firstChild: AppBar(
            title: const Text('Select Materials'),
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  context.read<SelectMaterialBloc>().add(
                        const SelectMaterialEvent.searchStarted(),
                      );
                },
              ),
            ],
          ),
          secondChild: AppBar(
            automaticallyImplyLeading: false,
            title: TextField(
              controller: _searchController,
              focusNode: _focusNode,
              decoration: const InputDecoration(
                hintText: 'Search materials',
                border: InputBorder.none,
              ),
              onChanged: (value) {
                context.read<SelectMaterialBloc>().add(
                      SelectMaterialEvent.search(value),
                    );
              },
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  _searchController.text = '';
                  context.read<SelectMaterialBloc>().add(
                        const SelectMaterialEvent.searchCanceled(),
                      );
                },
              ),
            ],
          ),
          crossFadeState:
              searching ? CrossFadeState.showSecond : CrossFadeState.showFirst,
          duration: const Duration(milliseconds: 200),
        );
      },
    );
  }
}

class _SelectMaterialBody extends StatelessWidget {
  const _SelectMaterialBody();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectMaterialBloc, SelectMaterialState>(
      builder: (context, state) {
        switch (state) {
          case Initial() || Loading():
            return const Center(
              child: CircularProgressIndicator(),
            );
          case Error():
            return Center(
              child: Text(state.message),
            );
          case Searching(:final materials) when materials.isEmpty:
            final selectedCount = state.selectedMaterials.length;
            final hasSelected = selectedCount == 0;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Expanded(
                  child: EmptyMessage(
                    emptyMessage: 'No materials found',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: FilledButton(
                    onPressed: () {
                      context.read<SelectMaterialBloc>().add(
                            const SelectMaterialEvent.addedMaterials(),
                          );
                    },
                    child: Text(
                      !hasSelected
                          ? 'Save $selectedCount material/s'
                          : 'Save materials',
                    ),
                  ),
                ),
              ],
            );
          default:
            final selectedCount = state.selectedMaterials.length;
            final hasSelected = selectedCount == 0;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Divider(),
                Expanded(
                  child: MaterialList(
                    materials: state.materials,
                    selectedMaterials: state.selectedMaterials,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: FilledButton(
                    onPressed: () {
                      context.read<SelectMaterialBloc>().add(
                            const SelectMaterialEvent.addedMaterials(),
                          );
                    },
                    child: Text(
                      !hasSelected
                          ? 'Save $selectedCount material/s'
                          : 'Save materials',
                    ),
                  ),
                ),
              ],
            );
        }
      },
    );
  }
}

class MaterialList extends StatelessWidget {
  const MaterialList({
    super.key,
    required this.materials,
    required this.selectedMaterials,
  });

  final List<m.Material> materials;
  final List<m.Material> selectedMaterials;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(12.0),
      itemCount: materials.length,
      itemBuilder: (context, index) {
        final material = materials[index];
        final isSelected = selectedMaterials
            .any((selectedMaterial) => material.id == selectedMaterial.id);

        return MaterialCard(
          material: material,
          trailing: Checkbox(
            value: isSelected,
            onChanged: (value) async {
              if (!isSelected) {
                return _showQuantityDialog(
                  context,
                  (quantity) {
                    context.read<SelectMaterialBloc>().add(
                          SelectMaterialEvent.materialSelected(
                            material,
                            isSelected,
                            quantity,
                          ),
                        );
                  },
                  material,
                );
              }

              context.read<SelectMaterialBloc>().add(
                    SelectMaterialEvent.materialSelected(material, isSelected),
                  );
            },
          ),
          onTap: () async {
            if (!isSelected) {
              return _showQuantityDialog(
                context,
                (quantity) {
                  context.read<SelectMaterialBloc>().add(
                        SelectMaterialEvent.materialSelected(
                          material,
                          isSelected,
                          quantity,
                        ),
                      );
                },
                material,
              );
            }

            context.read<SelectMaterialBloc>().add(
                  SelectMaterialEvent.materialSelected(material, isSelected),
                );
          },
        );
      },
    );
  }

  Future<void> _showQuantityDialog(
    BuildContext context,
    void Function(int quantity) onSave,
    m.Material material,
  ) async {
    final controller = TextEditingController(text: '1');
    bool isValid = true;

    await Modal.instance.showConfirmationModal(
      key: const ValueKey('select_quantity_dialog'),
      context: context,
      content: StatefulBuilder(
        builder: (context, setState) {
          return TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: 'Enter quantity',
              border: const OutlineInputBorder(),
              errorText: !isValid
                  ? 'Quantity cannot exceed ${material.quantity}'
                  : null,
            ),
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              FilteringTextInputFormatter.deny(
                RegExp('^0+'),
              ),
            ],
            onChanged: (value) {
              setState(() {
                isValid =
                    value.isEmpty || int.parse(value) <= material.quantity;
              });
            },
          );
        },
      ),
      title: 'Quantity (${material.quantity})',
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: () {
            Navigator.of(context).pop();
            onSave(int.tryParse(controller.text) ?? 1);
          },
          child: const Text('Add'),
        ),
      ],
    );
  }
}
