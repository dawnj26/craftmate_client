// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_suggestion_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ViewSuggestionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProjectSuggestion suggestion) started,
    required TResult Function() suggestionSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProjectSuggestion suggestion)? started,
    TResult? Function()? suggestionSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProjectSuggestion suggestion)? started,
    TResult Function()? suggestionSaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SuggestionSaved value) suggestionSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SuggestionSaved value)? suggestionSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SuggestionSaved value)? suggestionSaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewSuggestionEventCopyWith<$Res> {
  factory $ViewSuggestionEventCopyWith(
          ViewSuggestionEvent value, $Res Function(ViewSuggestionEvent) then) =
      _$ViewSuggestionEventCopyWithImpl<$Res, ViewSuggestionEvent>;
}

/// @nodoc
class _$ViewSuggestionEventCopyWithImpl<$Res, $Val extends ViewSuggestionEvent>
    implements $ViewSuggestionEventCopyWith<$Res> {
  _$ViewSuggestionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ViewSuggestionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProjectSuggestion suggestion});

  $ProjectSuggestionCopyWith<$Res> get suggestion;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ViewSuggestionEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ViewSuggestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestion = null,
  }) {
    return _then(_$StartedImpl(
      suggestion: null == suggestion
          ? _value.suggestion
          : suggestion // ignore: cast_nullable_to_non_nullable
              as ProjectSuggestion,
    ));
  }

  /// Create a copy of ViewSuggestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectSuggestionCopyWith<$Res> get suggestion {
    return $ProjectSuggestionCopyWith<$Res>(_value.suggestion, (value) {
      return _then(_value.copyWith(suggestion: value));
    });
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl({required this.suggestion});

  @override
  final ProjectSuggestion suggestion;

  @override
  String toString() {
    return 'ViewSuggestionEvent.started(suggestion: $suggestion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.suggestion, suggestion) ||
                other.suggestion == suggestion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, suggestion);

  /// Create a copy of ViewSuggestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProjectSuggestion suggestion) started,
    required TResult Function() suggestionSaved,
  }) {
    return started(suggestion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProjectSuggestion suggestion)? started,
    TResult? Function()? suggestionSaved,
  }) {
    return started?.call(suggestion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProjectSuggestion suggestion)? started,
    TResult Function()? suggestionSaved,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(suggestion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SuggestionSaved value) suggestionSaved,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SuggestionSaved value)? suggestionSaved,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SuggestionSaved value)? suggestionSaved,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ViewSuggestionEvent {
  const factory _Started({required final ProjectSuggestion suggestion}) =
      _$StartedImpl;

  ProjectSuggestion get suggestion;

  /// Create a copy of ViewSuggestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuggestionSavedImplCopyWith<$Res> {
  factory _$$SuggestionSavedImplCopyWith(_$SuggestionSavedImpl value,
          $Res Function(_$SuggestionSavedImpl) then) =
      __$$SuggestionSavedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuggestionSavedImplCopyWithImpl<$Res>
    extends _$ViewSuggestionEventCopyWithImpl<$Res, _$SuggestionSavedImpl>
    implements _$$SuggestionSavedImplCopyWith<$Res> {
  __$$SuggestionSavedImplCopyWithImpl(
      _$SuggestionSavedImpl _value, $Res Function(_$SuggestionSavedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ViewSuggestionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuggestionSavedImpl implements _SuggestionSaved {
  const _$SuggestionSavedImpl();

  @override
  String toString() {
    return 'ViewSuggestionEvent.suggestionSaved()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuggestionSavedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProjectSuggestion suggestion) started,
    required TResult Function() suggestionSaved,
  }) {
    return suggestionSaved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProjectSuggestion suggestion)? started,
    TResult? Function()? suggestionSaved,
  }) {
    return suggestionSaved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProjectSuggestion suggestion)? started,
    TResult Function()? suggestionSaved,
    required TResult orElse(),
  }) {
    if (suggestionSaved != null) {
      return suggestionSaved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SuggestionSaved value) suggestionSaved,
  }) {
    return suggestionSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SuggestionSaved value)? suggestionSaved,
  }) {
    return suggestionSaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SuggestionSaved value)? suggestionSaved,
    required TResult orElse(),
  }) {
    if (suggestionSaved != null) {
      return suggestionSaved(this);
    }
    return orElse();
  }
}

abstract class _SuggestionSaved implements ViewSuggestionEvent {
  const factory _SuggestionSaved() = _$SuggestionSavedImpl;
}

/// @nodoc
mixin _$ViewSuggestionState {
  ProjectSuggestion get pSuggestion => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProjectSuggestion pSuggestion) initial,
    required TResult Function(ProjectSuggestion pSuggestion) loading,
    required TResult Function(ProjectSuggestion pSuggestion) loaded,
    required TResult Function(ProjectSuggestion pSuggestion) saving,
    required TResult Function(ProjectSuggestion pSuggestion) saved,
    required TResult Function(ProjectSuggestion pSuggestion, String message)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProjectSuggestion pSuggestion)? initial,
    TResult? Function(ProjectSuggestion pSuggestion)? loading,
    TResult? Function(ProjectSuggestion pSuggestion)? loaded,
    TResult? Function(ProjectSuggestion pSuggestion)? saving,
    TResult? Function(ProjectSuggestion pSuggestion)? saved,
    TResult? Function(ProjectSuggestion pSuggestion, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProjectSuggestion pSuggestion)? initial,
    TResult Function(ProjectSuggestion pSuggestion)? loading,
    TResult Function(ProjectSuggestion pSuggestion)? loaded,
    TResult Function(ProjectSuggestion pSuggestion)? saving,
    TResult Function(ProjectSuggestion pSuggestion)? saved,
    TResult Function(ProjectSuggestion pSuggestion, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Saving value) saving,
    required TResult Function(Saved value) saved,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Saving value)? saving,
    TResult? Function(Saved value)? saved,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Saving value)? saving,
    TResult Function(Saved value)? saved,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ViewSuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ViewSuggestionStateCopyWith<ViewSuggestionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewSuggestionStateCopyWith<$Res> {
  factory $ViewSuggestionStateCopyWith(
          ViewSuggestionState value, $Res Function(ViewSuggestionState) then) =
      _$ViewSuggestionStateCopyWithImpl<$Res, ViewSuggestionState>;
  @useResult
  $Res call({ProjectSuggestion pSuggestion});

  $ProjectSuggestionCopyWith<$Res> get pSuggestion;
}

/// @nodoc
class _$ViewSuggestionStateCopyWithImpl<$Res, $Val extends ViewSuggestionState>
    implements $ViewSuggestionStateCopyWith<$Res> {
  _$ViewSuggestionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ViewSuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pSuggestion = null,
  }) {
    return _then(_value.copyWith(
      pSuggestion: null == pSuggestion
          ? _value.pSuggestion
          : pSuggestion // ignore: cast_nullable_to_non_nullable
              as ProjectSuggestion,
    ) as $Val);
  }

  /// Create a copy of ViewSuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectSuggestionCopyWith<$Res> get pSuggestion {
    return $ProjectSuggestionCopyWith<$Res>(_value.pSuggestion, (value) {
      return _then(_value.copyWith(pSuggestion: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ViewSuggestionStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProjectSuggestion pSuggestion});

  @override
  $ProjectSuggestionCopyWith<$Res> get pSuggestion;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ViewSuggestionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ViewSuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pSuggestion = null,
  }) {
    return _then(_$InitialImpl(
      pSuggestion: null == pSuggestion
          ? _value.pSuggestion
          : pSuggestion // ignore: cast_nullable_to_non_nullable
              as ProjectSuggestion,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl({this.pSuggestion = const ProjectSuggestion()});

  @override
  @JsonKey()
  final ProjectSuggestion pSuggestion;

  @override
  String toString() {
    return 'ViewSuggestionState.initial(pSuggestion: $pSuggestion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.pSuggestion, pSuggestion) ||
                other.pSuggestion == pSuggestion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pSuggestion);

  /// Create a copy of ViewSuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProjectSuggestion pSuggestion) initial,
    required TResult Function(ProjectSuggestion pSuggestion) loading,
    required TResult Function(ProjectSuggestion pSuggestion) loaded,
    required TResult Function(ProjectSuggestion pSuggestion) saving,
    required TResult Function(ProjectSuggestion pSuggestion) saved,
    required TResult Function(ProjectSuggestion pSuggestion, String message)
        error,
  }) {
    return initial(pSuggestion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProjectSuggestion pSuggestion)? initial,
    TResult? Function(ProjectSuggestion pSuggestion)? loading,
    TResult? Function(ProjectSuggestion pSuggestion)? loaded,
    TResult? Function(ProjectSuggestion pSuggestion)? saving,
    TResult? Function(ProjectSuggestion pSuggestion)? saved,
    TResult? Function(ProjectSuggestion pSuggestion, String message)? error,
  }) {
    return initial?.call(pSuggestion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProjectSuggestion pSuggestion)? initial,
    TResult Function(ProjectSuggestion pSuggestion)? loading,
    TResult Function(ProjectSuggestion pSuggestion)? loaded,
    TResult Function(ProjectSuggestion pSuggestion)? saving,
    TResult Function(ProjectSuggestion pSuggestion)? saved,
    TResult Function(ProjectSuggestion pSuggestion, String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(pSuggestion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Saving value) saving,
    required TResult Function(Saved value) saved,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Saving value)? saving,
    TResult? Function(Saved value)? saved,
    TResult? Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Saving value)? saving,
    TResult Function(Saved value)? saved,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ViewSuggestionState {
  const factory Initial({final ProjectSuggestion pSuggestion}) = _$InitialImpl;

  @override
  ProjectSuggestion get pSuggestion;

  /// Create a copy of ViewSuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $ViewSuggestionStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProjectSuggestion pSuggestion});

  @override
  $ProjectSuggestionCopyWith<$Res> get pSuggestion;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ViewSuggestionStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ViewSuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pSuggestion = null,
  }) {
    return _then(_$LoadingImpl(
      pSuggestion: null == pSuggestion
          ? _value.pSuggestion
          : pSuggestion // ignore: cast_nullable_to_non_nullable
              as ProjectSuggestion,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl({this.pSuggestion = const ProjectSuggestion()});

  @override
  @JsonKey()
  final ProjectSuggestion pSuggestion;

  @override
  String toString() {
    return 'ViewSuggestionState.loading(pSuggestion: $pSuggestion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.pSuggestion, pSuggestion) ||
                other.pSuggestion == pSuggestion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pSuggestion);

  /// Create a copy of ViewSuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProjectSuggestion pSuggestion) initial,
    required TResult Function(ProjectSuggestion pSuggestion) loading,
    required TResult Function(ProjectSuggestion pSuggestion) loaded,
    required TResult Function(ProjectSuggestion pSuggestion) saving,
    required TResult Function(ProjectSuggestion pSuggestion) saved,
    required TResult Function(ProjectSuggestion pSuggestion, String message)
        error,
  }) {
    return loading(pSuggestion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProjectSuggestion pSuggestion)? initial,
    TResult? Function(ProjectSuggestion pSuggestion)? loading,
    TResult? Function(ProjectSuggestion pSuggestion)? loaded,
    TResult? Function(ProjectSuggestion pSuggestion)? saving,
    TResult? Function(ProjectSuggestion pSuggestion)? saved,
    TResult? Function(ProjectSuggestion pSuggestion, String message)? error,
  }) {
    return loading?.call(pSuggestion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProjectSuggestion pSuggestion)? initial,
    TResult Function(ProjectSuggestion pSuggestion)? loading,
    TResult Function(ProjectSuggestion pSuggestion)? loaded,
    TResult Function(ProjectSuggestion pSuggestion)? saving,
    TResult Function(ProjectSuggestion pSuggestion)? saved,
    TResult Function(ProjectSuggestion pSuggestion, String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(pSuggestion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Saving value) saving,
    required TResult Function(Saved value) saved,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Saving value)? saving,
    TResult? Function(Saved value)? saved,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Saving value)? saving,
    TResult Function(Saved value)? saved,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ViewSuggestionState {
  const factory Loading({final ProjectSuggestion pSuggestion}) = _$LoadingImpl;

  @override
  ProjectSuggestion get pSuggestion;

  /// Create a copy of ViewSuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res>
    implements $ViewSuggestionStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProjectSuggestion pSuggestion});

  @override
  $ProjectSuggestionCopyWith<$Res> get pSuggestion;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ViewSuggestionStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ViewSuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pSuggestion = null,
  }) {
    return _then(_$LoadedImpl(
      pSuggestion: null == pSuggestion
          ? _value.pSuggestion
          : pSuggestion // ignore: cast_nullable_to_non_nullable
              as ProjectSuggestion,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements Loaded {
  const _$LoadedImpl({this.pSuggestion = const ProjectSuggestion()});

  @override
  @JsonKey()
  final ProjectSuggestion pSuggestion;

  @override
  String toString() {
    return 'ViewSuggestionState.loaded(pSuggestion: $pSuggestion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.pSuggestion, pSuggestion) ||
                other.pSuggestion == pSuggestion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pSuggestion);

  /// Create a copy of ViewSuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProjectSuggestion pSuggestion) initial,
    required TResult Function(ProjectSuggestion pSuggestion) loading,
    required TResult Function(ProjectSuggestion pSuggestion) loaded,
    required TResult Function(ProjectSuggestion pSuggestion) saving,
    required TResult Function(ProjectSuggestion pSuggestion) saved,
    required TResult Function(ProjectSuggestion pSuggestion, String message)
        error,
  }) {
    return loaded(pSuggestion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProjectSuggestion pSuggestion)? initial,
    TResult? Function(ProjectSuggestion pSuggestion)? loading,
    TResult? Function(ProjectSuggestion pSuggestion)? loaded,
    TResult? Function(ProjectSuggestion pSuggestion)? saving,
    TResult? Function(ProjectSuggestion pSuggestion)? saved,
    TResult? Function(ProjectSuggestion pSuggestion, String message)? error,
  }) {
    return loaded?.call(pSuggestion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProjectSuggestion pSuggestion)? initial,
    TResult Function(ProjectSuggestion pSuggestion)? loading,
    TResult Function(ProjectSuggestion pSuggestion)? loaded,
    TResult Function(ProjectSuggestion pSuggestion)? saving,
    TResult Function(ProjectSuggestion pSuggestion)? saved,
    TResult Function(ProjectSuggestion pSuggestion, String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(pSuggestion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Saving value) saving,
    required TResult Function(Saved value) saved,
    required TResult Function(Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Saving value)? saving,
    TResult? Function(Saved value)? saved,
    TResult? Function(Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Saving value)? saving,
    TResult Function(Saved value)? saved,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements ViewSuggestionState {
  const factory Loaded({final ProjectSuggestion pSuggestion}) = _$LoadedImpl;

  @override
  ProjectSuggestion get pSuggestion;

  /// Create a copy of ViewSuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavingImplCopyWith<$Res>
    implements $ViewSuggestionStateCopyWith<$Res> {
  factory _$$SavingImplCopyWith(
          _$SavingImpl value, $Res Function(_$SavingImpl) then) =
      __$$SavingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProjectSuggestion pSuggestion});

  @override
  $ProjectSuggestionCopyWith<$Res> get pSuggestion;
}

/// @nodoc
class __$$SavingImplCopyWithImpl<$Res>
    extends _$ViewSuggestionStateCopyWithImpl<$Res, _$SavingImpl>
    implements _$$SavingImplCopyWith<$Res> {
  __$$SavingImplCopyWithImpl(
      _$SavingImpl _value, $Res Function(_$SavingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ViewSuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pSuggestion = null,
  }) {
    return _then(_$SavingImpl(
      pSuggestion: null == pSuggestion
          ? _value.pSuggestion
          : pSuggestion // ignore: cast_nullable_to_non_nullable
              as ProjectSuggestion,
    ));
  }
}

/// @nodoc

class _$SavingImpl implements Saving {
  const _$SavingImpl({this.pSuggestion = const ProjectSuggestion()});

  @override
  @JsonKey()
  final ProjectSuggestion pSuggestion;

  @override
  String toString() {
    return 'ViewSuggestionState.saving(pSuggestion: $pSuggestion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavingImpl &&
            (identical(other.pSuggestion, pSuggestion) ||
                other.pSuggestion == pSuggestion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pSuggestion);

  /// Create a copy of ViewSuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SavingImplCopyWith<_$SavingImpl> get copyWith =>
      __$$SavingImplCopyWithImpl<_$SavingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProjectSuggestion pSuggestion) initial,
    required TResult Function(ProjectSuggestion pSuggestion) loading,
    required TResult Function(ProjectSuggestion pSuggestion) loaded,
    required TResult Function(ProjectSuggestion pSuggestion) saving,
    required TResult Function(ProjectSuggestion pSuggestion) saved,
    required TResult Function(ProjectSuggestion pSuggestion, String message)
        error,
  }) {
    return saving(pSuggestion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProjectSuggestion pSuggestion)? initial,
    TResult? Function(ProjectSuggestion pSuggestion)? loading,
    TResult? Function(ProjectSuggestion pSuggestion)? loaded,
    TResult? Function(ProjectSuggestion pSuggestion)? saving,
    TResult? Function(ProjectSuggestion pSuggestion)? saved,
    TResult? Function(ProjectSuggestion pSuggestion, String message)? error,
  }) {
    return saving?.call(pSuggestion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProjectSuggestion pSuggestion)? initial,
    TResult Function(ProjectSuggestion pSuggestion)? loading,
    TResult Function(ProjectSuggestion pSuggestion)? loaded,
    TResult Function(ProjectSuggestion pSuggestion)? saving,
    TResult Function(ProjectSuggestion pSuggestion)? saved,
    TResult Function(ProjectSuggestion pSuggestion, String message)? error,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving(pSuggestion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Saving value) saving,
    required TResult Function(Saved value) saved,
    required TResult Function(Error value) error,
  }) {
    return saving(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Saving value)? saving,
    TResult? Function(Saved value)? saved,
    TResult? Function(Error value)? error,
  }) {
    return saving?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Saving value)? saving,
    TResult Function(Saved value)? saved,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving(this);
    }
    return orElse();
  }
}

abstract class Saving implements ViewSuggestionState {
  const factory Saving({final ProjectSuggestion pSuggestion}) = _$SavingImpl;

  @override
  ProjectSuggestion get pSuggestion;

  /// Create a copy of ViewSuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SavingImplCopyWith<_$SavingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedImplCopyWith<$Res>
    implements $ViewSuggestionStateCopyWith<$Res> {
  factory _$$SavedImplCopyWith(
          _$SavedImpl value, $Res Function(_$SavedImpl) then) =
      __$$SavedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProjectSuggestion pSuggestion});

  @override
  $ProjectSuggestionCopyWith<$Res> get pSuggestion;
}

/// @nodoc
class __$$SavedImplCopyWithImpl<$Res>
    extends _$ViewSuggestionStateCopyWithImpl<$Res, _$SavedImpl>
    implements _$$SavedImplCopyWith<$Res> {
  __$$SavedImplCopyWithImpl(
      _$SavedImpl _value, $Res Function(_$SavedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ViewSuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pSuggestion = null,
  }) {
    return _then(_$SavedImpl(
      pSuggestion: null == pSuggestion
          ? _value.pSuggestion
          : pSuggestion // ignore: cast_nullable_to_non_nullable
              as ProjectSuggestion,
    ));
  }
}

/// @nodoc

class _$SavedImpl implements Saved {
  const _$SavedImpl({this.pSuggestion = const ProjectSuggestion()});

  @override
  @JsonKey()
  final ProjectSuggestion pSuggestion;

  @override
  String toString() {
    return 'ViewSuggestionState.saved(pSuggestion: $pSuggestion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedImpl &&
            (identical(other.pSuggestion, pSuggestion) ||
                other.pSuggestion == pSuggestion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pSuggestion);

  /// Create a copy of ViewSuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedImplCopyWith<_$SavedImpl> get copyWith =>
      __$$SavedImplCopyWithImpl<_$SavedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProjectSuggestion pSuggestion) initial,
    required TResult Function(ProjectSuggestion pSuggestion) loading,
    required TResult Function(ProjectSuggestion pSuggestion) loaded,
    required TResult Function(ProjectSuggestion pSuggestion) saving,
    required TResult Function(ProjectSuggestion pSuggestion) saved,
    required TResult Function(ProjectSuggestion pSuggestion, String message)
        error,
  }) {
    return saved(pSuggestion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProjectSuggestion pSuggestion)? initial,
    TResult? Function(ProjectSuggestion pSuggestion)? loading,
    TResult? Function(ProjectSuggestion pSuggestion)? loaded,
    TResult? Function(ProjectSuggestion pSuggestion)? saving,
    TResult? Function(ProjectSuggestion pSuggestion)? saved,
    TResult? Function(ProjectSuggestion pSuggestion, String message)? error,
  }) {
    return saved?.call(pSuggestion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProjectSuggestion pSuggestion)? initial,
    TResult Function(ProjectSuggestion pSuggestion)? loading,
    TResult Function(ProjectSuggestion pSuggestion)? loaded,
    TResult Function(ProjectSuggestion pSuggestion)? saving,
    TResult Function(ProjectSuggestion pSuggestion)? saved,
    TResult Function(ProjectSuggestion pSuggestion, String message)? error,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(pSuggestion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Saving value) saving,
    required TResult Function(Saved value) saved,
    required TResult Function(Error value) error,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Saving value)? saving,
    TResult? Function(Saved value)? saved,
    TResult? Function(Error value)? error,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Saving value)? saving,
    TResult Function(Saved value)? saved,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class Saved implements ViewSuggestionState {
  const factory Saved({final ProjectSuggestion pSuggestion}) = _$SavedImpl;

  @override
  ProjectSuggestion get pSuggestion;

  /// Create a copy of ViewSuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SavedImplCopyWith<_$SavedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res>
    implements $ViewSuggestionStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProjectSuggestion pSuggestion, String message});

  @override
  $ProjectSuggestionCopyWith<$Res> get pSuggestion;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ViewSuggestionStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ViewSuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pSuggestion = null,
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      pSuggestion: null == pSuggestion
          ? _value.pSuggestion
          : pSuggestion // ignore: cast_nullable_to_non_nullable
              as ProjectSuggestion,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl(
      {this.pSuggestion = const ProjectSuggestion(), required this.message});

  @override
  @JsonKey()
  final ProjectSuggestion pSuggestion;
  @override
  final String message;

  @override
  String toString() {
    return 'ViewSuggestionState.error(pSuggestion: $pSuggestion, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.pSuggestion, pSuggestion) ||
                other.pSuggestion == pSuggestion) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pSuggestion, message);

  /// Create a copy of ViewSuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProjectSuggestion pSuggestion) initial,
    required TResult Function(ProjectSuggestion pSuggestion) loading,
    required TResult Function(ProjectSuggestion pSuggestion) loaded,
    required TResult Function(ProjectSuggestion pSuggestion) saving,
    required TResult Function(ProjectSuggestion pSuggestion) saved,
    required TResult Function(ProjectSuggestion pSuggestion, String message)
        error,
  }) {
    return error(pSuggestion, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProjectSuggestion pSuggestion)? initial,
    TResult? Function(ProjectSuggestion pSuggestion)? loading,
    TResult? Function(ProjectSuggestion pSuggestion)? loaded,
    TResult? Function(ProjectSuggestion pSuggestion)? saving,
    TResult? Function(ProjectSuggestion pSuggestion)? saved,
    TResult? Function(ProjectSuggestion pSuggestion, String message)? error,
  }) {
    return error?.call(pSuggestion, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProjectSuggestion pSuggestion)? initial,
    TResult Function(ProjectSuggestion pSuggestion)? loading,
    TResult Function(ProjectSuggestion pSuggestion)? loaded,
    TResult Function(ProjectSuggestion pSuggestion)? saving,
    TResult Function(ProjectSuggestion pSuggestion)? saved,
    TResult Function(ProjectSuggestion pSuggestion, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(pSuggestion, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Saving value) saving,
    required TResult Function(Saved value) saved,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Saving value)? saving,
    TResult? Function(Saved value)? saved,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Saving value)? saving,
    TResult Function(Saved value)? saved,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements ViewSuggestionState {
  const factory Error(
      {final ProjectSuggestion pSuggestion,
      required final String message}) = _$ErrorImpl;

  @override
  ProjectSuggestion get pSuggestion;
  String get message;

  /// Create a copy of ViewSuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
