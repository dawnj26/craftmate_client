import 'package:bloc/bloc.dart';
import 'package:craftmate_client/globals.dart';
import 'package:craftmate_client/project_management/text_editor/models/text_editor_controller.dart';
import 'package:equatable/equatable.dart';
import 'package:project_repository/project_repository.dart';

part 'edit_project_event.dart';
part 'edit_project_state.dart';

class EditProjectBloc extends Bloc<EditProjectEvent, EditProjectState> {
  EditProjectBloc({required ProjectRepository projectRepo})
      : _projectRepository = projectRepo,
        super(const EditProjectInitial()) {
    on<EditProjectChanged>(_onProjectChanged);
    on<EditProjectRecipeSaved>(_onRecipeSaved);
  }

  final ProjectRepository _projectRepository;

  void _onProjectChanged(
    EditProjectChanged event,
    Emitter<EditProjectState> emit,
  ) {
    emit(const EditProjectDirty());
  }

  Future<void> _onRecipeSaved(
    EditProjectRecipeSaved event,
    Emitter<EditProjectState> emit,
  ) async {
    emit(const EditProjectLoading());

    try {
      logger.info('Updating');
      final newDescription =
          event.newDescription.quillController.document.toDelta().toJson();
      final newSteps = event.newSteps
          .map((e) => e.quillController.document.toDelta().toJson())
          .toList();

      await _projectRepository.updateDescription(
        project: event.currentProject,
        newDescription: newDescription,
      );
      await _projectRepository.updateSteps(
        project: event.currentProject,
        newSteps: newSteps,
      );

      emit(EditProjectClean(shouldExit: event.shouldExit));
    } on ProjectException catch (e) {
      logger.warning('Update failed');
      emit(EditProjectFailed(errMessage: e.message));
    }
  }
}
