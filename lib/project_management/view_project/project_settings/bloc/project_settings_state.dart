part of 'project_settings_bloc.dart';

sealed class ProjectSettingsState extends Equatable {
  const ProjectSettingsState({
    required this.project,
    this.projectTitle = const ProjectTitle.pure(),
    this.isValid = false,
    this.visibility = ProjectVisibility.public,
  });

  final ProjectTitle projectTitle;
  final bool isValid;
  final Project project;
  final ProjectVisibility visibility;

  @override
  List<Object> get props => [projectTitle, isValid, project, visibility];
}

final class ProjectSettingsInitial extends ProjectSettingsState {
  const ProjectSettingsInitial({
    required super.project,
    super.projectTitle,
    super.isValid,
    super.visibility,
  });
}

final class ProjectSettingsChanged extends ProjectSettingsState {
  const ProjectSettingsChanged({
    required super.project,
    super.projectTitle,
    super.isValid,
    super.visibility,
  });
}

final class ProjectSettingsLoading extends ProjectSettingsState {
  const ProjectSettingsLoading({
    required super.project,
    super.projectTitle,
    super.isValid,
    super.visibility,
  });
}

final class SettingsSavedSuccess extends ProjectSettingsState {
  const SettingsSavedSuccess({
    required super.project,
    super.projectTitle,
    super.isValid,
    super.visibility,
  });
}

final class SettingsDeleteSuccess extends ProjectSettingsState {
  const SettingsDeleteSuccess({
    required super.project,
    super.projectTitle,
    super.isValid,
    super.visibility,
  });
}

final class SettingsFailed extends ProjectSettingsState {
  const SettingsFailed({
    required super.project,
    required this.errMessage,
    super.projectTitle,
    super.isValid,
    super.visibility,
  });
  final String errMessage;

  @override
  // TODO: implement props
  List<Object> get props => [errMessage];
}
