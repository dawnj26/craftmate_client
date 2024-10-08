import 'package:craftmate_client/helpers/alert/alert.dart';
import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/project_management/edit_project/bloc/edit_project_bloc.dart';
import 'package:craftmate_client/project_management/text_editor/bloc/text_editor_bloc.dart';
import 'package:craftmate_client/project_management/text_editor/view/text_editor_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_repository/project_repository.dart';

class EditRecipeScreen extends StatefulWidget {
  const EditRecipeScreen({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  State<EditRecipeScreen> createState() => _EditRecipeScreenState();
}

class _EditRecipeScreenState extends State<EditRecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<EditProjectBloc, EditProjectState>(
      listenWhen: (previous, current) => current is! EditProjectDirty,
      listener: _editDescriptionListener,
      child: PopScope(
        canPop: false,
        onPopInvokedWithResult: _handlePop,
        child: Scaffold(
          floatingActionButton: BlocBuilder<EditProjectBloc, EditProjectState>(
            buildWhen: (previous, current) => current is EditProjectDirty,
            builder: (context, state) {
              if (state is EditProjectDirty) {
                return FloatingActionButton(
                  onPressed: _handleSave,
                  child: const Icon(Icons.save),
                );
              }
              return const FloatingActionButton(
                onPressed: null,
                child: Icon(Icons.save_outlined),
              );
            },
          ),
