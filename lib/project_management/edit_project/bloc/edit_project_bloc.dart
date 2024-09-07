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
    on<EditProjectDescriptionSaved>(_onDescriptionSaved);
    on<EditProjectStepsSaved>(_onStepsSaved);
  }

  final ProjectRepository _projectRepository;

  void _onProjectChanged(
    EditProjectChanged event,
    Emitter<EditProjectState> emit,
  ) {
    emit(const EditProjectDirty());
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

      emit(EditProjectClean(shouldExit: event.shouldExit));
    } on ProjectException catch (e) {
      logger.warning('Update failed');
      emit(EditProjectFailed(errMessage: e.message));
    }
  }

  Future<void> _onStepsSaved(
    EditProjectStepsSaved event,
    Emitter<EditProjectState> emit,
  ) async {
    emit(const EditProjectLoading());

    try {
      logger.info('Updating Steps');
      await _projectRepository.updateSteps(
        project: event.currentProject,
        newSteps: event.newSteps,
      );

      emit(EditProjectClean(shouldExit: event.shouldExit));
    } on ProjectException catch (e) {
      logger.warning('Update failed');
      emit(EditProjectFailed(errMessage: e.message));
    }
  }
}
