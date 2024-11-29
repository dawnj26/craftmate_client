part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.themeModeChanged() = _ThemeModeChanged;
  const factory SettingsEvent.started(Brightness brightness) = _Started;
  const factory SettingsEvent.themeColorChanged(Color color) =
      _ThemeColorChanged;
}
