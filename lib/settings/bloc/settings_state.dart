part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial({
    required ThemeData theme,
  }) = _Initial;

  const factory SettingsState.changed({
    required ThemeData theme,
  }) = _Changed;
}
