import 'package:bloc/bloc.dart';
import 'package:craftmate_client/config/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc({
    required AppTheme appTheme,
  })  : _appTheme = appTheme,
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
  bool _isDarkMode = false;

  void _onThemeColorChanged(
    _ThemeColorChanged event,
    Emitter<SettingsState> emit,
  ) {
    emit(
      SettingsState.changed(
        theme: _appTheme.changeThemeColor(state.theme, event.color),
      ),
    );
  }

  void _onStarted(
    _Started event,
    Emitter<SettingsState> emit,
  ) {
    if (event.brightness == Brightness.dark) {
      _isDarkMode = true;
      emit(
        SettingsState.changed(
          theme: _appTheme.darkTheme,
        ),
      );
    } else {
      _isDarkMode = false;
      emit(
        SettingsState.changed(
          theme: _appTheme.theme,
        ),
      );
    }
  }

  void _onThemeModeChanged(
    _ThemeModeChanged event,
    Emitter<SettingsState> emit,
  ) {
    if (_isDarkMode) {
      _isDarkMode = false;
      emit(
        SettingsState.changed(
          theme: _appTheme.theme,
        ),
      );
    } else {
      _isDarkMode = true;
      emit(
        SettingsState.changed(
          theme: _appTheme.darkTheme,
        ),
      );
    }
  }
}
