import 'package:craftmate_client/material_inventory/user_materials/bloc/user_material/user_material_bloc.dart';
import 'package:craftmate_client/material_inventory/user_materials/views/screens/user_materials_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_repository/material_repository.dart';

class UserMaterialsPage extends StatelessWidget {
  const UserMaterialsPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const UserMaterialsPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserMaterialBloc(
        materialRepository: context.read<MaterialRepository>(),
      )..add(const UserMaterialEvent.started()),
      child: const UserMaterialsScreen(),
    );
  }
}
