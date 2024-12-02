part of 'project_settings_bloc.dart';

sealed class ProjectSettingsState extends Equatable {
  const ProjectSettingsState({
    required this.project,
    this.projectTitle = const ProjectTitle.pure(),
    this.isValid = false,
    this.visibility = ProjectVisibility.public,
    this.categories = const [],
    this.selectedCategory = const ProjectCategory(),
    this.forkable = false,
  });

  final ProjectTitle projectTitle;
  final bool isValid;
  final Project project;
  final ProjectVisibility visibility;
  final List<ProjectCategory> categories;
  final ProjectCategory selectedCategory;
  final bool forkable;

  @override
  List<Object> get props => [
        projectTitle,
        isValid,
        project,
        visibility,
        categories,
        selectedCategory,
        forkable,
      ];
}

final class ProjectSettingsInitial extends ProjectSettingsState {
  const ProjectSettingsInitial({
    required super.project,
    super.projectTitle,
    super.isValid,
    super.visibility,
    super.selectedCategory,
    super.forkable,
  });
}

final class ProjectSettingsLoading extends ProjectSettingsState {
  const ProjectSettingsLoading({
    required super.project,
    super.projectTitle,
    super.isValid,
    super.visibility,
    super.categories,
    super.selectedCategory,
    super.forkable,
  });
}

final class ProjectSettingsChanged extends ProjectSettingsState {
  const ProjectSettingsChanged({
    required super.project,
    super.projectTitle,
    super.isValid,
    super.visibility,
    super.categories,
    super.selectedCategory,
    super.forkable,
  });
}

final class ProjectSettingsSaving extends ProjectSettingsState {
  const ProjectSettingsSaving({
    required super.project,
    super.projectTitle,
    super.isValid,
    super.visibility,
    super.categories,
    super.selectedCategory,
    super.forkable,
  });
}

final class SettingsSavedSuccess extends ProjectSettingsState {
  const SettingsSavedSuccess({
    required super.project,
    super.projectTitle,
    super.isValid,
    super.visibility,
    super.categories,
    super.selectedCategory,
    super.forkable,
  });
}

final class SettingsDeleteSuccess extends ProjectSettingsState {
  const SettingsDeleteSuccess({
    required super.project,
    super.projectTitle,
    super.isValid,
    super.visibility,
    super.categories,
    super.selectedCategory,
    super.forkable,
  });
}

final class SettingsFailed extends ProjectSettingsState {
  const SettingsFailed({
    required super.project,
    required this.errMessage,
    super.projectTitle,
    super.isValid,
    super.visibility,
    super.categories,
    super.selectedCategory,
    super.forkable,
  });
  final String errMessage;

  @override
  // TODO: implement props
  List<Object> get props => [errMessage];
}
