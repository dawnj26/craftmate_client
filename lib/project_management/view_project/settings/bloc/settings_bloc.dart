import 'package:bloc/bloc.dart';
import 'package:craftmate_client/project_management/create_project/blank_project/models/title.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:project_repository/project_repository.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc({
    required ProjectRepository projectRepo,
    required Project project,
  })  : _projectRepo = projectRepo,
        super(
          SettingsInitial(
            project: project,
            projectTitle: ProjectTitle.dirty(project.title),
            isValid: true,
            visibility: project.visibility,
          ),
        ) {
    on<SettingsSaved>(_onSaved);
    on<SettingsTitleChanged>(_onChanged);
    on<SettingsVisibilityChanged>(_onVisibilityChanged);
    on<SettingsVisibilitySelectionChanged>(_onVisibilitySelectionChanged);
    on<SettingsProjectDeleted>(_onProjectDeleted);
  }

  final ProjectRepository _projectRepo;

  void _onVisibilitySelectionChanged(
    SettingsVisibilitySelectionChanged event,
    Emitter<SettingsState> emit,
  ) {
    emit(
      SettingsChanged(
        project: state.project.copyWith(),
        projectTitle: ProjectTitle.dirty(state.projectTitle.value),
        isValid: state.isValid,
        visibility: event.visibility,
      ),
    );
  }

  Future<void> _onProjectDeleted(
    SettingsProjectDeleted event,
    Emitter<SettingsState> emit,
  ) async {
    emit(
      SettingsLoading(
        project: state.project.copyWith(),
        projectTitle: ProjectTitle.dirty(state.projectTitle.value),
        isValid: state.isValid,
        visibility: state.visibility,
      ),
    );

    try {
      await _projectRepo.deleteProject(state.project);
      emit(
        SettingsDeleteSuccess(
          project: state.project.copyWith(),
          projectTitle: ProjectTitle.dirty(state.projectTitle.value),
          isValid: state.isValid,
          visibility: state.visibility,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        SettingsFailed(
          project: state.project.copyWith(),
          errMessage: e.message,
          projectTitle: state.projectTitle,
          visibility: state.visibility,
          isValid: state.isValid,
        ),
      );
    }
  }

  Future<void> _onVisibilityChanged(
    SettingsVisibilityChanged event,
    Emitter<SettingsState> emit,
  ) async {
    emit(
      SettingsLoading(
        project: state.project.copyWith(),
        projectTitle: ProjectTitle.dirty(state.projectTitle.value),
        isValid: state.isValid,
        visibility: state.visibility,
      ),
    );

    try {
      final updateProject =
          await _projectRepo.changeVisibilty(state.project, event.visibility);

      emit(
        SettingsSavedSuccess(
          project: updateProject,
          projectTitle: ProjectTitle.dirty(state.projectTitle.value),
          isValid: state.isValid,
          visibility: state.visibility,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        SettingsFailed(
          project: state.project.copyWith(),
          errMessage: e.message,
          projectTitle: state.projectTitle,
          isValid: state.isValid,
          visibility: state.visibility,
        ),
      );
    }
  }

  void _onChanged(SettingsTitleChanged event, Emitter<SettingsState> emit) {
    final projectTitle = ProjectTitle.dirty(event.title);
    final isValid = Formz.validate([projectTitle]);
    emit(
      SettingsChanged(
        project: state.project.copyWith(),
        projectTitle: projectTitle,
        isValid: isValid,
        visibility: state.visibility,
      ),
    );
  }

  Future<void> _onSaved(
    SettingsSaved event,
    Emitter<SettingsState> emit,
  ) async {
    final project = state.project;
    final projectTitle = ProjectTitle.dirty(state.projectTitle.value);
    emit(
      SettingsLoading(
        project: project.copyWith(),
        projectTitle: projectTitle,
        isValid: Formz.validate([projectTitle]),
        visibility: state.visibility,
      ),
    );

    if (state.isValid) {
      try {
        final updatedProject = await _projectRepo.updateProject(
          state.projectTitle.value,
          project,
          event.tags,
        );

        emit(
          SettingsSavedSuccess(
            project: updatedProject,
            projectTitle: state.projectTitle,
            isValid: state.isValid,
            visibility: state.visibility,
          ),
        );
      } on ProjectException catch (e) {
        emit(
          SettingsFailed(
            project: state.project.copyWith(),
            errMessage: e.message,
            projectTitle: state.projectTitle,
            isValid: state.isValid,
            visibility: state.visibility,
          ),
        );
      }
    } else {
      emit(
        SettingsChanged(
          project: state.project.copyWith(),
          projectTitle: state.projectTitle,
          isValid: Formz.validate([state.projectTitle]),
          visibility: state.visibility,
        ),
      );
    }
  }
}
