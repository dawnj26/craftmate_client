import 'package:craftmate_client/material_inventory/user_materials/views/screens/screens.dart';
import 'package:craftmate_client/material_inventory/user_materials/views/screens/user_materials_screen.dart';
import 'package:flutter/material.dart';

import 'package:material_repository/material_repository.dart' as m;

class CompareScreen extends StatelessWidget {
  const CompareScreen({super.key, required this.materials, this.onStarted});

  static Route<void> route({
    required List<m.Material> materials,
    void Function()? onStarted,
  }) {
    return MaterialPageRoute<void>(
      builder: (_) => CompareScreen(
        materials: materials,
        onStarted: onStarted,
      ),
    );
  }

  final List<m.Material> materials;
  final void Function()? onStarted;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Compare materials'),
      ),
      body: _Screen(
        materials: materials,
        onStarted: onStarted,
      ),
    );
  }
}

class _Screen extends StatefulWidget {
  const _Screen({
    required this.materials,
    this.onStarted,
  });

  final List<m.Material> materials;
  final void Function()? onStarted;

  @override
  State<_Screen> createState() => _ScreenState();
}

class _ScreenState extends State<_Screen> {
  late final List<bool> _selected;

  @override
  void initState() {
    // TODO: implement initState
    _selected = List.generate(widget.materials.length, (index) => false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bool isAllSelected = _selected.every((element) => element);
    final theme = Theme.of(context);

    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: theme.colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.info_outline,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Note',
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  'Starting this project will automatically template this project.',
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: widget.materials.length,
              itemBuilder: (context, index) {
                final material = widget.materials[index];
                return MaterialCard(
                  material: material,
                  trailing: Row(
                    children: [
                      Checkbox(
                        value: _selected[index],
                        onChanged: (value) {
                          setState(() {
                            _selected[index] = value!;
                          });
                        },
                      ),
                      IconButton(
                        onPressed: () async {
                          final isFound = await Navigator.of(context).push(
                                SearchMaterialScreen.route(
                                  isComparing: true,
                                  query: material.name,
                                ),
                              ) ??
                              false;

                          setState(() {
                            _selected[index] = isFound;
                          });
                        },
                        icon: const Icon(Icons.search),
                      ),
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      _selected[index] = !_selected[index];
                    });
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: FilledButton(
              onPressed: isAllSelected
                  ? () {
                      Navigator.pop(context);
                      widget.onStarted?.call();
                    }
                  : null,
              child: const Text('Start project'),
            ),
          ),
        ],
      ),
    );
  }
}
