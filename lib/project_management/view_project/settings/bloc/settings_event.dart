part of 'settings_bloc.dart';

sealed class SettingsEvent extends Equatable {
  const SettingsEvent();

  @override
  List<Object> get props => [];
}

final class SettingsTitleChanged extends SettingsEvent {
  final String title;
  const SettingsTitleChanged(this.title);

  @override
  // TODO: implement props
  List<Object> get props => [title];
}

final class SettingsSaved extends SettingsEvent {
  final String? tags;
  const SettingsSaved([this.tags]);
}

final class SettingsVisibilityChanged extends SettingsEvent {
  const SettingsVisibilityChanged();
}

final class SettingsProjectDeleted extends SettingsEvent {
  const SettingsProjectDeleted();
}
