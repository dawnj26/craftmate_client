part of 'project_settings_bloc.dart';

sealed class ProjectSettingsEvent extends Equatable {
  const ProjectSettingsEvent();

  @override
  List<Object> get props => [];
}

final class ProjectSettingsTitleChanged extends ProjectSettingsEvent {
  const ProjectSettingsTitleChanged(this.title);
  final String title;

  @override
  // TODO: implement props
  List<Object> get props => [title];
}

final class ProjectSettingsSaved extends ProjectSettingsEvent {
  const ProjectSettingsSaved([this.tags]);
  final String? tags;
}

final class ProjectSettingsVisibilityChanged extends ProjectSettingsEvent {
  const ProjectSettingsVisibilityChanged(this.visibility);

  final ProjectVisibility visibility;

  @override
  // TODO: implement props
  List<Object> get props => [visibility];
}

final class ProjectSettingsProjectDeleted extends ProjectSettingsEvent {
  const ProjectSettingsProjectDeleted();
}

final class ProjectSettingsVisibilitySelectionChanged
    extends ProjectSettingsEvent {
  const ProjectSettingsVisibilitySelectionChanged(this.visibility);

  final ProjectVisibility visibility;

  @override
  // TODO: implement props
  List<Object> get props => [visibility];
}
