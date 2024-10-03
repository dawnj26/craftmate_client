part of 'settings_bloc.dart';

sealed class SettingsEvent extends Equatable {
  const SettingsEvent();

  @override
  List<Object> get props => [];
}

final class SettingsTitleChanged extends SettingsEvent {
  const SettingsTitleChanged(this.title);
  final String title;

  @override
  // TODO: implement props
  List<Object> get props => [title];
}

final class SettingsSaved extends SettingsEvent {
  const SettingsSaved([this.tags]);
  final String? tags;
}

final class SettingsVisibilityChanged extends SettingsEvent {
  const SettingsVisibilityChanged(this.visibility);

  final ProjectVisibility visibility;

  @override
  // TODO: implement props
  List<Object> get props => [visibility];
}

final class SettingsProjectDeleted extends SettingsEvent {
  const SettingsProjectDeleted();
}

final class SettingsVisibilitySelectionChanged extends SettingsEvent {
  const SettingsVisibilitySelectionChanged(this.visibility);

  final ProjectVisibility visibility;

  @override
  // TODO: implement props
  List<Object> get props => [visibility];
}
