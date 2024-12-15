import 'package:craftmate_client/gen/assets.gen.dart';
import 'package:craftmate_client/helpers/components/empty_message.dart';
import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:craftmate_client/material_inventory/user_materials/bloc/search/material_search_bloc.dart';
import 'package:craftmate_client/material_inventory/user_materials/views/screens/user_materials_screen.dart';
import 'package:craftmate_client/material_inventory/user_materials/views/screens/view_material_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:material_repository/material_repository.dart' as m;

class SearchMaterialScreen extends StatelessWidget {
  const SearchMaterialScreen({
    super.key,
    this.isComparing = false,
    this.query = '',
  });

  final bool isComparing;
  final String query;

  static Route<bool?> route({
    bool isComparing = false,
    String query = '',
  }) {
    return PageTransition.effect.slideFromBottomToTop(
      SearchMaterialScreen(
        isComparing: isComparing,
        query: query,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MaterialSearchBloc(
        materialRepo: context.read<m.MaterialRepository>(),
      )..add(MaterialSearchEvent.searchMaterial(query)),
      child: _SearchBody(isComparing, query),
    );
  }
}

class _SearchBody extends StatefulWidget {
  const _SearchBody(this.isComparing, this.query);

  final bool isComparing;
  final String query;

  @override
  State<_SearchBody> createState() => _SearchBodyState();
}

class _SearchBodyState extends State<_SearchBody> {
  late final TextEditingController _searchController;
  final _focusNode = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    _searchController = TextEditingController(text: widget.query);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _searchController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      floatingActionButton: widget.isComparing
          ? FloatingActionButton.extended(
              onPressed: () {
                Navigator.pop(context, true);
              },
              label: const Text('I have it'),
              icon: const Icon(Icons.check),
            )
          : null,
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          focusNode: _focusNode,
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Search materials',
          ),
          onChanged: (value) {
            context
                .read<MaterialSearchBloc>()
                .add(MaterialSearchEvent.searchMaterial(value));
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              _searchController.clear();
              context
                  .read<MaterialSearchBloc>()
                  .add(const MaterialSearchEvent.clearSearch());
            },
            icon: const Icon(Icons.clear),
          ),
        ],
      ),
      body: Column(
        children: [
          const Divider(),
          Expanded(
            child: BlocBuilder<MaterialSearchBloc, MaterialSearchState>(
              builder: (context, state) {
                switch (state) {
                  case Initial():
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Assets.images.searchFlat.image(
                          height: 120,
                          width: 120,
                        ),
                        const Gap(20.0),
                        Text(
                          'Search for materials',
                          style: theme.textTheme.titleLarge,
                        ),
                      ],
                    );
                  case Loading():
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  case Error(message: final message):
                    return Center(
                      child: Text(message),
                    );
                  case Loaded(materials: final materials)
                      when materials.isEmpty:
                    return const EmptyMessage(
                      emptyMessage: 'No materials found',
                    );
                  default:
                    return MaterialList(
                      materials: state.materials,
                      controller: _searchController,
                    );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MaterialList extends StatelessWidget {
  const MaterialList({
    super.key,
    required this.materials,
    required this.controller,
  });

  final List<m.Material> materials;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Search results',
            style: theme.textTheme.titleLarge,
          ),
          const Gap(12.0),
          Expanded(
            child: ListView.builder(
              itemCount: materials.length,
              itemBuilder: (context, index) {
                final material = materials[index];
                return MaterialCard(
                  material: material,
                  trailing: const SizedBox(
                    width: 8,
                  ),
                  onTap: () {
                    Navigator.of(context)
                        .push(
                      ViewMaterialScreen.route(materialId: material.id),
                    )
                        .then((value) {
                      if (context.mounted) {
                        context.read<MaterialSearchBloc>().add(
                              MaterialSearchEvent.searchMaterial(
                                controller.text,
                              ),
                            );
                      }
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
