import 'package:bloc/bloc.dart';
import 'package:craftmate_client/globals.dart';
import 'package:equatable/equatable.dart';
import 'package:project_repository/project_repository.dart';

part 'edit_project_event.dart';
part 'edit_project_state.dart';

class EditProjectBloc extends Bloc<EditProjectEvent, EditProjectState> {
  EditProjectBloc({required ProjectRepository projectRepo})
      : _projectRepository = projectRepo,
        super(const EditProjectInitial()) {
    on<EditProjectChanged>(_onProjectChanged);
    on<EditProjectDescriptionSavedOnExit>(_onDescriptionSavedOnExit);
    on<EditProjectDescriptionSaved>(_onDescriptionSaved);
  }

  final ProjectRepository _projectRepository;

  void _onProjectChanged(
    EditProjectChanged event,
    Emitter<EditProjectState> emit,
  ) {
    emit(const EditProjectDirty());
  }

  Future<void> _onDescriptionSavedOnExit(
    EditProjectDescriptionSavedOnExit event,
    Emitter<EditProjectState> emit,
  ) async {
    emit(const EditProjectLoading());

    try {
      logger.info('Updating description');
      await _projectRepository.updateDescription(
        project: event.currentProject,
        newDescription: event.newDescription,
      );

      emit(const EditProjectSuccess());
    } on ProjectException catch (e) {
      logger.warning('Update failed');
      emit(EditProjectFailed(errMessage: e.message));
    }
  }

  Future<void> _onDescriptionSaved(
    EditProjectDescriptionSaved event,
    Emitter<EditProjectState> emit,
  ) async {
    emit(const EditProjectLoading());

    try {
      logger.info('Updating description');
      await _projectRepository.updateDescription(
        project: event.currentProject,
        newDescription: event.newDescription,
      );

      emit(const EditProjectClean());
    } on ProjectException catch (e) {
      logger.warning('Update failed');
      emit(EditProjectFailed(errMessage: e.message));
    }
  }
}
