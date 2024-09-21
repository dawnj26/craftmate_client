part of 'settings_bloc.dart';

sealed class SettingsState extends Equatable {
  const SettingsState({
    required this.project,
    this.projectTitle = const ProjectTitle.pure(),
    this.isValid = false,
  });

  final ProjectTitle projectTitle;
  final bool isValid;
  final Project project;

  @override
  List<Object> get props => [projectTitle, isValid, project];
}

final class SettingsInitial extends SettingsState {
  const SettingsInitial({
    required super.project,
    super.projectTitle,
    super.isValid,
  });
}

final class SettingsChanged extends SettingsState {
  const SettingsChanged({
    required super.project,
    super.projectTitle,
    super.isValid,
  });
}

final class SettingsLoading extends SettingsState {
  const SettingsLoading({
    required super.project,
    super.projectTitle,
    super.isValid,
  });
}

final class SettingsSavedSuccess extends SettingsState {
  const SettingsSavedSuccess({
    required super.project,
    super.projectTitle,
    super.isValid,
  });
}

final class SettingsDeleteSuccess extends SettingsState {
  const SettingsDeleteSuccess({
    required super.project,
    super.projectTitle,
    super.isValid,
  });
}

final class SettingsFailed extends SettingsState {
  final String errMessage;

  const SettingsFailed({
    required super.project,
    required this.errMessage,
    super.projectTitle,
    super.isValid,
  });

  @override
  // TODO: implement props
  List<Object> get props => [errMessage];
}
