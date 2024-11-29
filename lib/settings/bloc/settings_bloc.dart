import 'package:bloc/bloc.dart';
import 'package:config_repository/config_repository.dart';
import 'package:craftmate_client/config/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc({
    required AppTheme appTheme,
    required ConfigRepository configRepository,
  })  : _appTheme = appTheme,
        _configRepository = configRepository,
        super(
          _Initial(
            theme: appTheme.theme,
          ),
        ) {
    on<_ThemeModeChanged>(_onThemeModeChanged);
    on<_Started>(_onStarted);
    on<_ThemeColorChanged>(_onThemeColorChanged);
  }

  final AppTheme _appTheme;
  final ConfigRepository _configRepository;

  void _onThemeColorChanged(
    _ThemeColorChanged event,
    Emitter<SettingsState> emit,
  ) {
    emit(
      SettingsState.changed(
        theme: _appTheme.changeThemeColor(event.color, state.theme.brightness),
      ),
    );

    _configRepository.prefs
        .setInt('themeColor', state.theme.colorScheme.primary.value);
    _configRepository.prefs.setInt(
      'themeBrightness',
      Brightness.values.indexOf(state.theme.brightness),
    );
  }

  void _onStarted(
    _Started event,
    Emitter<SettingsState> emit,
  ) {
    final themeColor = _configRepository.prefs.getInt('themeColor');
    final themeBrightness = _configRepository.prefs.getInt('themeBrightness');

    if (themeColor != null && themeBrightness != null) {
      return emit(
        SettingsState.changed(
          theme: _appTheme.changeThemeColor(
            Color(themeColor),
            Brightness.values[themeBrightness],
          ),
        ),
      );
    }

    if (event.brightness == Brightness.dark) {
      emit(
        SettingsState.changed(
          theme: _appTheme.darkTheme,
        ),
      );
    } else {
      emit(
        SettingsState.changed(
          theme: _appTheme.theme,
        ),
      );
    }

    _configRepository.prefs
        .setInt('themeColor', state.theme.colorScheme.primary.value);
    _configRepository.prefs.setInt(
      'themeBrightness',
      Brightness.values.indexOf(state.theme.brightness),
    );
  }

  void _onThemeModeChanged(
    _ThemeModeChanged event,
    Emitter<SettingsState> emit,
  ) {
    if (state.theme.brightness == Brightness.dark) {
      emit(
        SettingsState.changed(
          theme: _appTheme.changeThemeMode(state.theme, Brightness.light),
        ),
      );
    } else {
      emit(
        SettingsState.changed(
          theme: _appTheme.changeThemeMode(state.theme, Brightness.dark),
        ),
      );
    }

    _configRepository.prefs
        .setInt('themeColor', state.theme.colorScheme.primary.value);
    _configRepository.prefs.setInt(
      'themeBrightness',
      Brightness.values.indexOf(state.theme.brightness),
    );
  }
}
