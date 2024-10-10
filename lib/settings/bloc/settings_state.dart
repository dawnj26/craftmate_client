part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial({
    @Default(ThemeMode.light) ThemeMode themeMode,
  }) = _Initial;

  const factory SettingsState.changed({
    required ThemeMode themeMode,
  }) = _Changed;
}
