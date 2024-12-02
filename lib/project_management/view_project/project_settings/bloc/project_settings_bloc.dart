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
            selectedCategory: project.category!,
            forkable: project.forkable,
          ),
        ) {
    on<ProjectSettingsSaved>(_onSaved);
    on<ProjectSettingsTitleChanged>(_onChanged);
    on<ProjectSettingsVisibilityChanged>(_onVisibilityChanged);
    on<ProjectSettingsVisibilitySelectionChanged>(
      _onVisibilitySelectionChanged,
    );
    on<ProjectSettingsProjectDeleted>(_onProjectDeleted);
    on<ProjectSettingsCategoryLoaded>(_onCategoryLoaded);
    on<ProjectSettingsCategoryChanged>(_onCategoryChanged);
    on<ProjectSettingsForkableChanged>(_onForkableChanged);
  }

  final ProjectRepository _projectRepo;

  void _onForkableChanged(
    ProjectSettingsForkableChanged event,
    Emitter<ProjectSettingsState> emit,
  ) {
    emit(
      ProjectSettingsChanged(
        project: state.project.copyWith(),
        projectTitle: ProjectTitle.dirty(state.projectTitle.value),
        isValid: state.isValid,
        visibility: state.visibility,
        categories: [...state.categories],
        selectedCategory: state.selectedCategory,
        forkable: event.forkable,
      ),
    );
  }

  void _onCategoryChanged(
    ProjectSettingsCategoryChanged event,
    Emitter<ProjectSettingsState> emit,
  ) {
    emit(
      ProjectSettingsChanged(
        project: state.project.copyWith(),
        projectTitle: ProjectTitle.dirty(state.projectTitle.value),
        isValid: state.isValid,
        visibility: state.visibility,
        categories: [...state.categories],
        selectedCategory: event.category,
        forkable: state.forkable,
      ),
    );
  }

  Future<void> _onCategoryLoaded(
    ProjectSettingsCategoryLoaded event,
    Emitter<ProjectSettingsState> emit,
  ) async {
    emit(
      ProjectSettingsLoading(
        project: state.project,
        projectTitle: state.projectTitle,
        isValid: state.isValid,
        visibility: state.visibility,
        categories: [...state.categories],
        selectedCategory: state.selectedCategory,
        forkable: state.forkable,
      ),
    );

    try {
      final categories = await _projectRepo.getProjectCategories();
      emit(
        ProjectSettingsChanged(
          project: state.project.copyWith(),
          projectTitle: ProjectTitle.dirty(state.projectTitle.value),
          isValid: state.isValid,
          visibility: state.visibility,
          categories: categories,
          selectedCategory: state.selectedCategory,
          forkable: state.forkable,
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
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
          forkable: state.forkable,
        ),
      );
    }
  }

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
        categories: [...state.categories],
        selectedCategory: state.selectedCategory,
        forkable: state.forkable,
      ),
    );
  }

  Future<void> _onProjectDeleted(
    ProjectSettingsProjectDeleted event,
    Emitter<ProjectSettingsState> emit,
  ) async {
    emit(
      ProjectSettingsSaving(
        project: state.project.copyWith(),
        projectTitle: ProjectTitle.dirty(state.projectTitle.value),
        isValid: state.isValid,
        visibility: state.visibility,
        categories: [...state.categories],
        selectedCategory: state.selectedCategory,
        forkable: state.forkable,
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
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
          forkable: state.forkable,
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
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
          forkable: state.forkable,
        ),
      );
    }
  }

  Future<void> _onVisibilityChanged(
    ProjectSettingsVisibilityChanged event,
    Emitter<ProjectSettingsState> emit,
  ) async {
    emit(
      ProjectSettingsSaving(
        project: state.project.copyWith(),
        projectTitle: ProjectTitle.dirty(state.projectTitle.value),
        isValid: state.isValid,
        visibility: state.visibility,
        categories: [...state.categories],
        selectedCategory: state.selectedCategory,
        forkable: state.forkable,
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
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
          forkable: state.forkable,
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
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
          forkable: state.forkable,
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
        categories: [...state.categories],
        selectedCategory: state.selectedCategory,
        forkable: state.forkable,
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
      ProjectSettingsSaving(
        project: project.copyWith(),
        projectTitle: projectTitle,
        isValid: Formz.validate([projectTitle]),
        visibility: state.visibility,
        categories: [...state.categories],
        selectedCategory: state.selectedCategory,
        forkable: state.forkable,
      ),
    );

    if (state.isValid) {
      try {
        final updatedProject = await _projectRepo.updateProject(
          state.projectTitle.value,
          project,
          state.selectedCategory,
          state.forkable,
          event.tags,
        );

        emit(
          SettingsSavedSuccess(
            project: updatedProject,
            projectTitle: state.projectTitle,
            isValid: state.isValid,
            visibility: state.visibility,
            categories: [...state.categories],
            selectedCategory: state.selectedCategory,
            forkable: state.forkable,
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
            categories: [...state.categories],
            selectedCategory: state.selectedCategory,
            forkable: state.forkable,
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
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
          forkable: state.forkable,
        ),
      );
    }
  }
}
