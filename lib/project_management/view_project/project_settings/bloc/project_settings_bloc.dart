import 'package:bloc/bloc.dart';
import 'package:craftmate_client/project_management/create_project/blank_project/models/title.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:project_repository/project_repository.dart';

part 'project_settings_event.dart';
part 'project_settings_state.dart';

class ProjectSettingsBloc
    extends Bloc<ProjectSettingsEvent, ProjectSettingsState> {
  ProjectSettingsBloc({
    required ProjectRepository projectRepo,
    required Project project,
  })  : _projectRepo = projectRepo,
        super(
          ProjectSettingsInitial(
            project: project,
            projectTitle: ProjectTitle.dirty(project.title),
            isValid: true,
            visibility: project.visibility,
          ),
        ) {
    on<ProjectSettingsSaved>(_onSaved);
    on<ProjectSettingsTitleChanged>(_onChanged);
    on<ProjectSettingsVisibilityChanged>(_onVisibilityChanged);
    on<ProjectSettingsVisibilitySelectionChanged>(
      _onVisibilitySelectionChanged,
    );
    on<ProjectSettingsProjectDeleted>(_onProjectDeleted);
  }

  final ProjectRepository _projectRepo;

  void _onVisibilitySelectionChanged(
    ProjectSettingsVisibilitySelectionChanged event,
    Emitter<ProjectSettingsState> emit,
  ) {
    emit(
      ProjectSettingsChanged(
        project: state.project.copyWith(),
        projectTitle: ProjectTitle.dirty(state.projectTitle.value),
        isValid: state.isValid,
        visibility: event.visibility,
      ),
    );
  }

  Future<void> _onProjectDeleted(
    ProjectSettingsProjectDeleted event,
    Emitter<ProjectSettingsState> emit,
  ) async {
    emit(
      ProjectSettingsLoading(
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
    ProjectSettingsVisibilityChanged event,
    Emitter<ProjectSettingsState> emit,
  ) async {
    emit(
      ProjectSettingsLoading(
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

  void _onChanged(
    ProjectSettingsTitleChanged event,
    Emitter<ProjectSettingsState> emit,
  ) {
    final projectTitle = ProjectTitle.dirty(event.title);
    final isValid = Formz.validate([projectTitle]);
    emit(
      ProjectSettingsChanged(
        project: state.project.copyWith(),
        projectTitle: projectTitle,
        isValid: isValid,
        visibility: state.visibility,
      ),
    );
  }

  Future<void> _onSaved(
    ProjectSettingsSaved event,
    Emitter<ProjectSettingsState> emit,
  ) async {
    final project = state.project;
    final projectTitle = ProjectTitle.dirty(state.projectTitle.value);
    emit(
      ProjectSettingsLoading(
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
        ProjectSettingsChanged(
          project: state.project.copyWith(),
          projectTitle: state.projectTitle,
          isValid: Formz.validate([state.projectTitle]),
          visibility: state.visibility,
        ),
      );
    }
  }
}
