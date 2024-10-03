part of 'settings_bloc.dart';

sealed class SettingsState extends Equatable {
  const SettingsState({
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

final class SettingsInitial extends SettingsState {
  const SettingsInitial({
    required super.project,
    super.projectTitle,
    super.isValid,
    super.visibility,
  });
}

final class SettingsChanged extends SettingsState {
  const SettingsChanged({
    required super.project,
    super.projectTitle,
    super.isValid,
    super.visibility,
  });
}

final class SettingsLoading extends SettingsState {
  const SettingsLoading({
    required super.project,
    super.projectTitle,
    super.isValid,
    super.visibility,
  });
}

final class SettingsSavedSuccess extends SettingsState {
  const SettingsSavedSuccess({
    required super.project,
    super.projectTitle,
    super.isValid,
    super.visibility,
  });
}

final class SettingsDeleteSuccess extends SettingsState {
  const SettingsDeleteSuccess({
    required super.project,
    super.projectTitle,
    super.isValid,
    super.visibility,
  });
}

final class SettingsFailed extends SettingsState {
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
