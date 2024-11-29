// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsEvent {










}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res>  {
  factory $SettingsEventCopyWith(SettingsEvent value, $Res Function(SettingsEvent) then) = _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;



}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res,$Val extends SettingsEvent> implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$ThemeModeChangedImplCopyWith<$Res>  {
  factory _$$ThemeModeChangedImplCopyWith(_$ThemeModeChangedImpl value, $Res Function(_$ThemeModeChangedImpl) then) = __$$ThemeModeChangedImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$ThemeModeChangedImplCopyWithImpl<$Res> extends _$SettingsEventCopyWithImpl<$Res, _$ThemeModeChangedImpl> implements _$$ThemeModeChangedImplCopyWith<$Res> {
  __$$ThemeModeChangedImplCopyWithImpl(_$ThemeModeChangedImpl _value, $Res Function(_$ThemeModeChangedImpl) _then)
      : super(_value, _then);


/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$ThemeModeChangedImpl  implements _ThemeModeChanged {
  const _$ThemeModeChangedImpl();

  



@override
String toString() {
  return 'SettingsEvent.themeModeChanged()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ThemeModeChangedImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _ThemeModeChanged implements SettingsEvent {
  const factory _ThemeModeChanged() = _$ThemeModeChangedImpl;
  

  



}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>  {
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) = __$$StartedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 Brightness brightness
});



}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res> extends _$SettingsEventCopyWithImpl<$Res, _$StartedImpl> implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(_$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);


/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? brightness = null,}) {
  return _then(_$StartedImpl(
null == brightness ? _value.brightness : brightness // ignore: cast_nullable_to_non_nullable
as Brightness,
  ));
}


}

/// @nodoc


class _$StartedImpl  implements _Started {
  const _$StartedImpl(this.brightness);

  

@override final  Brightness brightness;

@override
String toString() {
  return 'SettingsEvent.started(brightness: $brightness)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StartedImpl&&(identical(other.brightness, brightness) || other.brightness == brightness));
}


@override
int get hashCode => Object.hash(runtimeType,brightness);

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$StartedImplCopyWith<_$StartedImpl> get copyWith => __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);








}


abstract class _Started implements SettingsEvent {
  const factory _Started(final  Brightness brightness) = _$StartedImpl;
  

  

 Brightness get brightness;
/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$StartedImplCopyWith<_$StartedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ThemeColorChangedImplCopyWith<$Res>  {
  factory _$$ThemeColorChangedImplCopyWith(_$ThemeColorChangedImpl value, $Res Function(_$ThemeColorChangedImpl) then) = __$$ThemeColorChangedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 Color color
});



}

/// @nodoc
class __$$ThemeColorChangedImplCopyWithImpl<$Res> extends _$SettingsEventCopyWithImpl<$Res, _$ThemeColorChangedImpl> implements _$$ThemeColorChangedImplCopyWith<$Res> {
  __$$ThemeColorChangedImplCopyWithImpl(_$ThemeColorChangedImpl _value, $Res Function(_$ThemeColorChangedImpl) _then)
      : super(_value, _then);


/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? color = null,}) {
  return _then(_$ThemeColorChangedImpl(
null == color ? _value.color : color // ignore: cast_nullable_to_non_nullable
as Color,
  ));
}


}

/// @nodoc


class _$ThemeColorChangedImpl  implements _ThemeColorChanged {
  const _$ThemeColorChangedImpl(this.color);

  

@override final  Color color;

@override
String toString() {
  return 'SettingsEvent.themeColorChanged(color: $color)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ThemeColorChangedImpl&&(identical(other.color, color) || other.color == color));
}


@override
int get hashCode => Object.hash(runtimeType,color);

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ThemeColorChangedImplCopyWith<_$ThemeColorChangedImpl> get copyWith => __$$ThemeColorChangedImplCopyWithImpl<_$ThemeColorChangedImpl>(this, _$identity);








}


abstract class _ThemeColorChanged implements SettingsEvent {
  const factory _ThemeColorChanged(final  Color color) = _$ThemeColorChangedImpl;
  

  

 Color get color;
/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$ThemeColorChangedImplCopyWith<_$ThemeColorChangedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
mixin _$SettingsState {

 ThemeData get theme => throw _privateConstructorUsedError;







/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$SettingsStateCopyWith<SettingsState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res>  {
  factory $SettingsStateCopyWith(SettingsState value, $Res Function(SettingsState) then) = _$SettingsStateCopyWithImpl<$Res, SettingsState>;
@useResult
$Res call({
 ThemeData theme
});



}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res,$Val extends SettingsState> implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? theme = null,}) {
  return _then(_value.copyWith(
theme: null == theme ? _value.theme : theme // ignore: cast_nullable_to_non_nullable
as ThemeData,
  )as $Val);
}

}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 ThemeData theme
});



}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$SettingsStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? theme = null,}) {
  return _then(_$InitialImpl(
theme: null == theme ? _value.theme : theme // ignore: cast_nullable_to_non_nullable
as ThemeData,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements _Initial {
  const _$InitialImpl({required this.theme});

  

@override final  ThemeData theme;

@override
String toString() {
  return 'SettingsState.initial(theme: $theme)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&(identical(other.theme, theme) || other.theme == theme));
}


@override
int get hashCode => Object.hash(runtimeType,theme);

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class _Initial implements SettingsState {
  const factory _Initial({required final  ThemeData theme}) = _$InitialImpl;
  

  

@override ThemeData get theme;
/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ChangedImplCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory _$$ChangedImplCopyWith(_$ChangedImpl value, $Res Function(_$ChangedImpl) then) = __$$ChangedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 ThemeData theme
});



}

/// @nodoc
class __$$ChangedImplCopyWithImpl<$Res> extends _$SettingsStateCopyWithImpl<$Res, _$ChangedImpl> implements _$$ChangedImplCopyWith<$Res> {
  __$$ChangedImplCopyWithImpl(_$ChangedImpl _value, $Res Function(_$ChangedImpl) _then)
      : super(_value, _then);


/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? theme = null,}) {
  return _then(_$ChangedImpl(
theme: null == theme ? _value.theme : theme // ignore: cast_nullable_to_non_nullable
as ThemeData,
  ));
}


}

/// @nodoc


class _$ChangedImpl  implements _Changed {
  const _$ChangedImpl({required this.theme});

  

@override final  ThemeData theme;

@override
String toString() {
  return 'SettingsState.changed(theme: $theme)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ChangedImpl&&(identical(other.theme, theme) || other.theme == theme));
}


@override
int get hashCode => Object.hash(runtimeType,theme);

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ChangedImplCopyWith<_$ChangedImpl> get copyWith => __$$ChangedImplCopyWithImpl<_$ChangedImpl>(this, _$identity);








}


abstract class _Changed implements SettingsState {
  const factory _Changed({required final  ThemeData theme}) = _$ChangedImpl;
  

  

@override ThemeData get theme;
/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ChangedImplCopyWith<_$ChangedImpl> get copyWith => throw _privateConstructorUsedError;

}
