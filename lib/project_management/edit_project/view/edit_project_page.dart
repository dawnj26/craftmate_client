import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:craftmate_client/material_inventory/user_materials/bloc/selection/material_selection_bloc.dart';
import 'package:craftmate_client/project_management/edit_project/bloc/materials/edit_project_materials_bloc.dart';
import 'package:craftmate_client/project_management/edit_project/bloc/recipe/edit_project_bloc.dart';
import 'package:craftmate_client/project_management/edit_project/view/screens/edit_project_materials_screen.dart';
import 'package:craftmate_client/project_management/edit_project/view/screens/edit_recipe_screen.dart';
import 'package:craftmate_client/project_management/text_editor/bloc/text_editor_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_repository/material_repository.dart' as m;
import 'package:project_repository/project_repository.dart';

enum EditProjectType { recipe, materials }

class EditProjectPage extends StatelessWidget {
  const EditProjectPage({
    super.key,
    required this.project,
  });

  final Project project;

  static Route<void> route(
    Project project,
  ) {
    return PageTransition.effect.slideFromRightToLeft(
      EditProjectPage(
        project: project,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return EditRecipePage(project: project);
  }
}

class EditRecipePage extends StatelessWidget {
  const EditRecipePage({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TextEditorBloc(
            projectRepository: context.read<ProjectRepository>(),
          )..add(
              TextEditorEvent.initialized(project: project),
            ),
        ),
        BlocProvider(
          create: (context) => EditProjectBloc(
            projectRepo: context.read<ProjectRepository>(),
          ),
        ),
      ],
      child: EditRecipeScreen(
        project: project,
      ),
    );
  }
}

class EditProjectMaterialsPage extends StatelessWidget {
  const EditProjectMaterialsPage({
    super.key,
    required this.materials,
    required this.projectId,
  });

  final List<m.Material> materials;
  final int projectId;

  static Route<void> route(List<m.Material> materials, int projectId) {
    return PageTransition.effect.slideFromRightToLeft(
      EditProjectMaterialsPage(
        materials: materials,
        projectId: projectId,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => EditProjectMaterialsBloc(
            materialRepo: context.read<m.MaterialRepository>(),
            projectId: projectId,
          )..add(EditProjectMaterialsEvent.started(materials: materials)),
        ),
        BlocProvider(
          create: (context) => MaterialSelectionBloc(),
        ),
      ],
      child: BlocListener<EditProjectMaterialsBloc, EditProjectMaterialsState>(
        listener: (context, state) {
          switch (state) {
            case Deleting():
              Modal.instance.showLoadingDialog(context);
            case Deleted():
              context.read<MaterialSelectionBloc>().add(
                    const MaterialSelectionEvent.clear(),
                  );
              Navigator.of(context).pop();
              Modal.instance.showConfirmationModal(
                context: context,
                content: const Text('Materials deleted successfully'),
                title: 'Material Deleted',
                actions: [
                  FilledButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('OK'),
                  ),
                ],
              );
          }
        },
        child: const EditProjectMaterialsScreen(),
      ),
    );
  }
}
