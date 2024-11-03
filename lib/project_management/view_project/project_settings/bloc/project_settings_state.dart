part of 'project_settings_bloc.dart';

sealed class ProjectSettingsState extends Equatable {
  const ProjectSettingsState({
    required this.project,
    this.projectTitle = const ProjectTitle.pure(),
    this.isValid = false,
    this.visibility = ProjectVisibility.public,
    this.categories = const [],
    this.selectedCategory = const ProjectCategory(),
  });

  final ProjectTitle projectTitle;
  final bool isValid;
  final Project project;
  final ProjectVisibility visibility;
  final List<ProjectCategory> categories;
  final ProjectCategory selectedCategory;

  @override
  List<Object> get props => [
        projectTitle,
        isValid,
        project,
        visibility,
        categories,
        selectedCategory,
      ];
}

final class ProjectSettingsInitial extends ProjectSettingsState {
  const ProjectSettingsInitial({
    required super.project,
    super.projectTitle,
    super.isValid,
    super.visibility,
    super.selectedCategory,
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
  });
  final String errMessage;

  @override
  // TODO: implement props
  List<Object> get props => [errMessage];
}
