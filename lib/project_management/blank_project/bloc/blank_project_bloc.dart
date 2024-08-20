import 'package:bloc/bloc.dart';
import 'package:craftmate_client/project_management/blank_project/models/title.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:project_repository/project_repository.dart';

part 'blank_project_event.dart';
part 'blank_project_state.dart';

class BlankProjectBloc extends Bloc<BlankProjectEvent, BlankProjectState> {
  BlankProjectBloc({required ProjectRepository projectRepo})
      : _projectRepo = projectRepo,
        super(const BlankProjectInitial()) {
    on<BlankProjectTitleChange>(_onTitleChange);
    on<BlankProjectToggleVisibility>(_onToggleVisibility);
    on<BlankProjectCreate>(_onCreate);
  }

  final ProjectRepository _projectRepo;

  void _onTitleChange(
    BlankProjectTitleChange event,
    Emitter<BlankProjectState> emit,
  ) {
    final projectTitle = ProjectTitle.dirty(event.title);
    final isValid = Formz.validate([projectTitle]);

    emit(
      BlankProjectModified(
        projectTitle: projectTitle,
        valid: isValid,
        isPulic: state.isPulic,
      ),
    );
  }

  void _onToggleVisibility(
    BlankProjectToggleVisibility event,
    Emitter<BlankProjectState> emit,
  ) {
    emit(
      BlankProjectModified(
        isPulic: event.isPulic,
        projectTitle: state.projectTitle,
        valid: state.valid,
      ),
    );
  }

  Future<void> _onCreate(
    BlankProjectCreate event,
    Emitter<BlankProjectState> emit,
  ) async {
    if (state.valid) {
      emit(
        BlankProjectInProgress(
          projectTitle: state.projectTitle,
          valid: state.valid,
          isPulic: state.isPulic,
        ),
      );

      try {
        await _projectRepo.tryCreateProject(
          state.projectTitle.value,
          state.isPulic,
          event.tags,
        );
        emit(
          BlankProjectSuccess(
            isPulic: state.isPulic,
            projectTitle: state.projectTitle,
            valid: state.valid,
          ),
        );
      } on ProjectException catch (e) {
        emit(
          BlankProjectFailed(
            errorMsg: e.message,
            projectTitle: state.projectTitle,
            valid: state.valid,
            isPulic: state.isPulic,
          ),
        );
      }
    } else {
      final projectTitle = ProjectTitle.dirty(state.projectTitle.value);
      final isValid = Formz.validate([projectTitle]);

      emit(
        BlankProjectInvalid(
          projectTitle: projectTitle,
          valid: isValid,
          isPulic: state.isPulic,
        ),
      );
    }
  }
}
