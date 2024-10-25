// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_project_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GenerateProjectEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() materialsLoaded,
    required TResult Function(String type, String difficulty,
            List<String> materials, String additionalInfo)
        generateSuggestions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? materialsLoaded,
    TResult? Function(String type, String difficulty, List<String> materials,
            String additionalInfo)?
        generateSuggestions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? materialsLoaded,
    TResult Function(String type, String difficulty, List<String> materials,
            String additionalInfo)?
        generateSuggestions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MaterialsLoaded value) materialsLoaded,
    required TResult Function(_GenerateSuggestions value) generateSuggestions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MaterialsLoaded value)? materialsLoaded,
    TResult? Function(_GenerateSuggestions value)? generateSuggestions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MaterialsLoaded value)? materialsLoaded,
    TResult Function(_GenerateSuggestions value)? generateSuggestions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerateProjectEventCopyWith<$Res> {
  factory $GenerateProjectEventCopyWith(GenerateProjectEvent value,
          $Res Function(GenerateProjectEvent) then) =
      _$GenerateProjectEventCopyWithImpl<$Res, GenerateProjectEvent>;
}

/// @nodoc
class _$GenerateProjectEventCopyWithImpl<$Res,
        $Val extends GenerateProjectEvent>
    implements $GenerateProjectEventCopyWith<$Res> {
  _$GenerateProjectEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenerateProjectEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$GenerateProjectEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenerateProjectEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'GenerateProjectEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() materialsLoaded,
    required TResult Function(String type, String difficulty,
            List<String> materials, String additionalInfo)
        generateSuggestions,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? materialsLoaded,
    TResult? Function(String type, String difficulty, List<String> materials,
            String additionalInfo)?
        generateSuggestions,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? materialsLoaded,
    TResult Function(String type, String difficulty, List<String> materials,
            String additionalInfo)?
        generateSuggestions,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MaterialsLoaded value) materialsLoaded,
    required TResult Function(_GenerateSuggestions value) generateSuggestions,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MaterialsLoaded value)? materialsLoaded,
    TResult? Function(_GenerateSuggestions value)? generateSuggestions,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MaterialsLoaded value)? materialsLoaded,
    TResult Function(_GenerateSuggestions value)? generateSuggestions,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements GenerateProjectEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$MaterialsLoadedImplCopyWith<$Res> {
  factory _$$MaterialsLoadedImplCopyWith(_$MaterialsLoadedImpl value,
          $Res Function(_$MaterialsLoadedImpl) then) =
      __$$MaterialsLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MaterialsLoadedImplCopyWithImpl<$Res>
    extends _$GenerateProjectEventCopyWithImpl<$Res, _$MaterialsLoadedImpl>
    implements _$$MaterialsLoadedImplCopyWith<$Res> {
  __$$MaterialsLoadedImplCopyWithImpl(
      _$MaterialsLoadedImpl _value, $Res Function(_$MaterialsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenerateProjectEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MaterialsLoadedImpl implements _MaterialsLoaded {
  const _$MaterialsLoadedImpl();

  @override
  String toString() {
    return 'GenerateProjectEvent.materialsLoaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MaterialsLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() materialsLoaded,
    required TResult Function(String type, String difficulty,
            List<String> materials, String additionalInfo)
        generateSuggestions,
  }) {
    return materialsLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? materialsLoaded,
    TResult? Function(String type, String difficulty, List<String> materials,
            String additionalInfo)?
        generateSuggestions,
  }) {
    return materialsLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? materialsLoaded,
    TResult Function(String type, String difficulty, List<String> materials,
            String additionalInfo)?
        generateSuggestions,
    required TResult orElse(),
  }) {
    if (materialsLoaded != null) {
      return materialsLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MaterialsLoaded value) materialsLoaded,
    required TResult Function(_GenerateSuggestions value) generateSuggestions,
  }) {
    return materialsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MaterialsLoaded value)? materialsLoaded,
    TResult? Function(_GenerateSuggestions value)? generateSuggestions,
  }) {
    return materialsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MaterialsLoaded value)? materialsLoaded,
    TResult Function(_GenerateSuggestions value)? generateSuggestions,
    required TResult orElse(),
  }) {
    if (materialsLoaded != null) {
      return materialsLoaded(this);
    }
    return orElse();
  }
}

abstract class _MaterialsLoaded implements GenerateProjectEvent {
  const factory _MaterialsLoaded() = _$MaterialsLoadedImpl;
}

/// @nodoc
abstract class _$$GenerateSuggestionsImplCopyWith<$Res> {
  factory _$$GenerateSuggestionsImplCopyWith(_$GenerateSuggestionsImpl value,
          $Res Function(_$GenerateSuggestionsImpl) then) =
      __$$GenerateSuggestionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String type,
      String difficulty,
      List<String> materials,
      String additionalInfo});
}

/// @nodoc
class __$$GenerateSuggestionsImplCopyWithImpl<$Res>
    extends _$GenerateProjectEventCopyWithImpl<$Res, _$GenerateSuggestionsImpl>
    implements _$$GenerateSuggestionsImplCopyWith<$Res> {
  __$$GenerateSuggestionsImplCopyWithImpl(_$GenerateSuggestionsImpl _value,
      $Res Function(_$GenerateSuggestionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenerateProjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? difficulty = null,
    Object? materials = null,
    Object? additionalInfo = null,
  }) {
    return _then(_$GenerateSuggestionsImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      materials: null == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<String>,
      additionalInfo: null == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GenerateSuggestionsImpl implements _GenerateSuggestions {
  const _$GenerateSuggestionsImpl(
      {required this.type,
      required this.difficulty,
      required final List<String> materials,
      this.additionalInfo = ''})
      : _materials = materials;

  @override
  final String type;
  @override
  final String difficulty;
  final List<String> _materials;
  @override
  List<String> get materials {
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_materials);
  }

  @override
  @JsonKey()
  final String additionalInfo;

  @override
  String toString() {
    return 'GenerateProjectEvent.generateSuggestions(type: $type, difficulty: $difficulty, materials: $materials, additionalInfo: $additionalInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateSuggestionsImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials) &&
            (identical(other.additionalInfo, additionalInfo) ||
                other.additionalInfo == additionalInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, difficulty,
      const DeepCollectionEquality().hash(_materials), additionalInfo);

  /// Create a copy of GenerateProjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateSuggestionsImplCopyWith<_$GenerateSuggestionsImpl> get copyWith =>
      __$$GenerateSuggestionsImplCopyWithImpl<_$GenerateSuggestionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() materialsLoaded,
    required TResult Function(String type, String difficulty,
            List<String> materials, String additionalInfo)
        generateSuggestions,
  }) {
    return generateSuggestions(type, difficulty, materials, additionalInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? materialsLoaded,
    TResult? Function(String type, String difficulty, List<String> materials,
            String additionalInfo)?
        generateSuggestions,
  }) {
    return generateSuggestions?.call(
        type, difficulty, materials, additionalInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? materialsLoaded,
    TResult Function(String type, String difficulty, List<String> materials,
            String additionalInfo)?
        generateSuggestions,
    required TResult orElse(),
  }) {
    if (generateSuggestions != null) {
      return generateSuggestions(type, difficulty, materials, additionalInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MaterialsLoaded value) materialsLoaded,
    required TResult Function(_GenerateSuggestions value) generateSuggestions,
  }) {
    return generateSuggestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MaterialsLoaded value)? materialsLoaded,
    TResult? Function(_GenerateSuggestions value)? generateSuggestions,
  }) {
    return generateSuggestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MaterialsLoaded value)? materialsLoaded,
    TResult Function(_GenerateSuggestions value)? generateSuggestions,
    required TResult orElse(),
  }) {
    if (generateSuggestions != null) {
      return generateSuggestions(this);
    }
    return orElse();
  }
}

abstract class _GenerateSuggestions implements GenerateProjectEvent {
  const factory _GenerateSuggestions(
      {required final String type,
      required final String difficulty,
      required final List<String> materials,
      final String additionalInfo}) = _$GenerateSuggestionsImpl;

  String get type;
  String get difficulty;
  List<String> get materials;
  String get additionalInfo;

  /// Create a copy of GenerateProjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenerateSuggestionsImplCopyWith<_$GenerateSuggestionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GenerateProjectState {
  List<Material> get materials => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Material> materials) initial,
    required TResult Function(List<Material> materials) loadingMaterials,
    required TResult Function(List<Material> materials) loadedMaterials,
    required TResult Function(List<Material> materials) loadingSuggestions,
    required TResult Function(List<Material> materials,
            List<ProjectSuggestion> suggestions, Prompt prompt)
        loadedSuggestions,
    required TResult Function(List<Material> materials, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Material> materials)? initial,
    TResult? Function(List<Material> materials)? loadingMaterials,
    TResult? Function(List<Material> materials)? loadedMaterials,
    TResult? Function(List<Material> materials)? loadingSuggestions,
    TResult? Function(List<Material> materials,
            List<ProjectSuggestion> suggestions, Prompt prompt)?
        loadedSuggestions,
    TResult? Function(List<Material> materials, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Material> materials)? initial,
    TResult Function(List<Material> materials)? loadingMaterials,
    TResult Function(List<Material> materials)? loadedMaterials,
    TResult Function(List<Material> materials)? loadingSuggestions,
    TResult Function(List<Material> materials,
            List<ProjectSuggestion> suggestions, Prompt prompt)?
        loadedSuggestions,
    TResult Function(List<Material> materials, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadingMaterials value) loadingMaterials,
    required TResult Function(LoadedMaterials value) loadedMaterials,
    required TResult Function(LoadingSuggestions value) loadingSuggestions,
    required TResult Function(LoadedSuggestions value) loadedSuggestions,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoadingMaterials value)? loadingMaterials,
    TResult? Function(LoadedMaterials value)? loadedMaterials,
    TResult? Function(LoadingSuggestions value)? loadingSuggestions,
    TResult? Function(LoadedSuggestions value)? loadedSuggestions,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadingMaterials value)? loadingMaterials,
    TResult Function(LoadedMaterials value)? loadedMaterials,
    TResult Function(LoadingSuggestions value)? loadingSuggestions,
    TResult Function(LoadedSuggestions value)? loadedSuggestions,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of GenerateProjectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenerateProjectStateCopyWith<GenerateProjectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerateProjectStateCopyWith<$Res> {
  factory $GenerateProjectStateCopyWith(GenerateProjectState value,
          $Res Function(GenerateProjectState) then) =
      _$GenerateProjectStateCopyWithImpl<$Res, GenerateProjectState>;
  @useResult
  $Res call({List<Material> materials});
}

/// @nodoc
class _$GenerateProjectStateCopyWithImpl<$Res,
        $Val extends GenerateProjectState>
    implements $GenerateProjectStateCopyWith<$Res> {
  _$GenerateProjectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenerateProjectState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materials = null,
  }) {
    return _then(_value.copyWith(
      materials: null == materials
          ? _value.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<Material>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $GenerateProjectStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Material> materials});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$GenerateProjectStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenerateProjectState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materials = null,
  }) {
    return _then(_$InitialImpl(
      materials: null == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<Material>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl({final List<Material> materials = const []})
      : _materials = materials;

  final List<Material> _materials;
  @override
  @JsonKey()
  List<Material> get materials {
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_materials);
  }

  @override
  String toString() {
    return 'GenerateProjectState.initial(materials: $materials)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_materials));

  /// Create a copy of GenerateProjectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Material> materials) initial,
    required TResult Function(List<Material> materials) loadingMaterials,
    required TResult Function(List<Material> materials) loadedMaterials,
    required TResult Function(List<Material> materials) loadingSuggestions,
    required TResult Function(List<Material> materials,
            List<ProjectSuggestion> suggestions, Prompt prompt)
        loadedSuggestions,
    required TResult Function(List<Material> materials, String message) error,
  }) {
    return initial(materials);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Material> materials)? initial,
    TResult? Function(List<Material> materials)? loadingMaterials,
    TResult? Function(List<Material> materials)? loadedMaterials,
    TResult? Function(List<Material> materials)? loadingSuggestions,
    TResult? Function(List<Material> materials,
            List<ProjectSuggestion> suggestions, Prompt prompt)?
        loadedSuggestions,
    TResult? Function(List<Material> materials, String message)? error,
  }) {
    return initial?.call(materials);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Material> materials)? initial,
    TResult Function(List<Material> materials)? loadingMaterials,
    TResult Function(List<Material> materials)? loadedMaterials,
    TResult Function(List<Material> materials)? loadingSuggestions,
    TResult Function(List<Material> materials,
            List<ProjectSuggestion> suggestions, Prompt prompt)?
        loadedSuggestions,
    TResult Function(List<Material> materials, String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(materials);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadingMaterials value) loadingMaterials,
    required TResult Function(LoadedMaterials value) loadedMaterials,
    required TResult Function(LoadingSuggestions value) loadingSuggestions,
    required TResult Function(LoadedSuggestions value) loadedSuggestions,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoadingMaterials value)? loadingMaterials,
    TResult? Function(LoadedMaterials value)? loadedMaterials,
    TResult? Function(LoadingSuggestions value)? loadingSuggestions,
    TResult? Function(LoadedSuggestions value)? loadedSuggestions,
    TResult? Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadingMaterials value)? loadingMaterials,
    TResult Function(LoadedMaterials value)? loadedMaterials,
    TResult Function(LoadingSuggestions value)? loadingSuggestions,
    TResult Function(LoadedSuggestions value)? loadedSuggestions,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements GenerateProjectState {
  const factory Initial({final List<Material> materials}) = _$InitialImpl;

  @override
  List<Material> get materials;

  /// Create a copy of GenerateProjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingMaterialsImplCopyWith<$Res>
    implements $GenerateProjectStateCopyWith<$Res> {
  factory _$$LoadingMaterialsImplCopyWith(_$LoadingMaterialsImpl value,
          $Res Function(_$LoadingMaterialsImpl) then) =
      __$$LoadingMaterialsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Material> materials});
}

/// @nodoc
class __$$LoadingMaterialsImplCopyWithImpl<$Res>
    extends _$GenerateProjectStateCopyWithImpl<$Res, _$LoadingMaterialsImpl>
    implements _$$LoadingMaterialsImplCopyWith<$Res> {
  __$$LoadingMaterialsImplCopyWithImpl(_$LoadingMaterialsImpl _value,
      $Res Function(_$LoadingMaterialsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenerateProjectState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materials = null,
  }) {
    return _then(_$LoadingMaterialsImpl(
      materials: null == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<Material>,
    ));
  }
}

/// @nodoc

class _$LoadingMaterialsImpl implements LoadingMaterials {
  const _$LoadingMaterialsImpl({final List<Material> materials = const []})
      : _materials = materials;

  final List<Material> _materials;
  @override
  @JsonKey()
  List<Material> get materials {
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_materials);
  }

  @override
  String toString() {
    return 'GenerateProjectState.loadingMaterials(materials: $materials)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingMaterialsImpl &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_materials));

  /// Create a copy of GenerateProjectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingMaterialsImplCopyWith<_$LoadingMaterialsImpl> get copyWith =>
      __$$LoadingMaterialsImplCopyWithImpl<_$LoadingMaterialsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Material> materials) initial,
    required TResult Function(List<Material> materials) loadingMaterials,
    required TResult Function(List<Material> materials) loadedMaterials,
    required TResult Function(List<Material> materials) loadingSuggestions,
    required TResult Function(List<Material> materials,
            List<ProjectSuggestion> suggestions, Prompt prompt)
        loadedSuggestions,
    required TResult Function(List<Material> materials, String message) error,
  }) {
    return loadingMaterials(materials);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Material> materials)? initial,
    TResult? Function(List<Material> materials)? loadingMaterials,
    TResult? Function(List<Material> materials)? loadedMaterials,
    TResult? Function(List<Material> materials)? loadingSuggestions,
    TResult? Function(List<Material> materials,
            List<ProjectSuggestion> suggestions, Prompt prompt)?
        loadedSuggestions,
    TResult? Function(List<Material> materials, String message)? error,
  }) {
    return loadingMaterials?.call(materials);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Material> materials)? initial,
    TResult Function(List<Material> materials)? loadingMaterials,
    TResult Function(List<Material> materials)? loadedMaterials,
    TResult Function(List<Material> materials)? loadingSuggestions,
    TResult Function(List<Material> materials,
            List<ProjectSuggestion> suggestions, Prompt prompt)?
        loadedSuggestions,
    TResult Function(List<Material> materials, String message)? error,
    required TResult orElse(),
  }) {
    if (loadingMaterials != null) {
      return loadingMaterials(materials);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadingMaterials value) loadingMaterials,
    required TResult Function(LoadedMaterials value) loadedMaterials,
    required TResult Function(LoadingSuggestions value) loadingSuggestions,
    required TResult Function(LoadedSuggestions value) loadedSuggestions,
    required TResult Function(Error value) error,
  }) {
    return loadingMaterials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoadingMaterials value)? loadingMaterials,
    TResult? Function(LoadedMaterials value)? loadedMaterials,
    TResult? Function(LoadingSuggestions value)? loadingSuggestions,
    TResult? Function(LoadedSuggestions value)? loadedSuggestions,
    TResult? Function(Error value)? error,
  }) {
    return loadingMaterials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadingMaterials value)? loadingMaterials,
    TResult Function(LoadedMaterials value)? loadedMaterials,
    TResult Function(LoadingSuggestions value)? loadingSuggestions,
    TResult Function(LoadedSuggestions value)? loadedSuggestions,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loadingMaterials != null) {
      return loadingMaterials(this);
    }
    return orElse();
  }
}

abstract class LoadingMaterials implements GenerateProjectState {
  const factory LoadingMaterials({final List<Material> materials}) =
      _$LoadingMaterialsImpl;

  @override
  List<Material> get materials;

  /// Create a copy of GenerateProjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingMaterialsImplCopyWith<_$LoadingMaterialsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedMaterialsImplCopyWith<$Res>
    implements $GenerateProjectStateCopyWith<$Res> {
  factory _$$LoadedMaterialsImplCopyWith(_$LoadedMaterialsImpl value,
          $Res Function(_$LoadedMaterialsImpl) then) =
      __$$LoadedMaterialsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Material> materials});
}

/// @nodoc
class __$$LoadedMaterialsImplCopyWithImpl<$Res>
    extends _$GenerateProjectStateCopyWithImpl<$Res, _$LoadedMaterialsImpl>
    implements _$$LoadedMaterialsImplCopyWith<$Res> {
  __$$LoadedMaterialsImplCopyWithImpl(
      _$LoadedMaterialsImpl _value, $Res Function(_$LoadedMaterialsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenerateProjectState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materials = null,
  }) {
    return _then(_$LoadedMaterialsImpl(
      materials: null == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<Material>,
    ));
  }
}

/// @nodoc

class _$LoadedMaterialsImpl implements LoadedMaterials {
  const _$LoadedMaterialsImpl({final List<Material> materials = const []})
      : _materials = materials;

  final List<Material> _materials;
  @override
  @JsonKey()
  List<Material> get materials {
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_materials);
  }

  @override
  String toString() {
    return 'GenerateProjectState.loadedMaterials(materials: $materials)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedMaterialsImpl &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_materials));

  /// Create a copy of GenerateProjectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedMaterialsImplCopyWith<_$LoadedMaterialsImpl> get copyWith =>
      __$$LoadedMaterialsImplCopyWithImpl<_$LoadedMaterialsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Material> materials) initial,
    required TResult Function(List<Material> materials) loadingMaterials,
    required TResult Function(List<Material> materials) loadedMaterials,
    required TResult Function(List<Material> materials) loadingSuggestions,
    required TResult Function(List<Material> materials,
            List<ProjectSuggestion> suggestions, Prompt prompt)
        loadedSuggestions,
    required TResult Function(List<Material> materials, String message) error,
  }) {
    return loadedMaterials(materials);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Material> materials)? initial,
    TResult? Function(List<Material> materials)? loadingMaterials,
    TResult? Function(List<Material> materials)? loadedMaterials,
    TResult? Function(List<Material> materials)? loadingSuggestions,
    TResult? Function(List<Material> materials,
            List<ProjectSuggestion> suggestions, Prompt prompt)?
        loadedSuggestions,
    TResult? Function(List<Material> materials, String message)? error,
  }) {
    return loadedMaterials?.call(materials);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Material> materials)? initial,
    TResult Function(List<Material> materials)? loadingMaterials,
    TResult Function(List<Material> materials)? loadedMaterials,
    TResult Function(List<Material> materials)? loadingSuggestions,
    TResult Function(List<Material> materials,
            List<ProjectSuggestion> suggestions, Prompt prompt)?
        loadedSuggestions,
    TResult Function(List<Material> materials, String message)? error,
    required TResult orElse(),
  }) {
    if (loadedMaterials != null) {
      return loadedMaterials(materials);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadingMaterials value) loadingMaterials,
    required TResult Function(LoadedMaterials value) loadedMaterials,
    required TResult Function(LoadingSuggestions value) loadingSuggestions,
    required TResult Function(LoadedSuggestions value) loadedSuggestions,
    required TResult Function(Error value) error,
  }) {
    return loadedMaterials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoadingMaterials value)? loadingMaterials,
    TResult? Function(LoadedMaterials value)? loadedMaterials,
    TResult? Function(LoadingSuggestions value)? loadingSuggestions,
    TResult? Function(LoadedSuggestions value)? loadedSuggestions,
    TResult? Function(Error value)? error,
  }) {
    return loadedMaterials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadingMaterials value)? loadingMaterials,
    TResult Function(LoadedMaterials value)? loadedMaterials,
    TResult Function(LoadingSuggestions value)? loadingSuggestions,
    TResult Function(LoadedSuggestions value)? loadedSuggestions,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedMaterials != null) {
      return loadedMaterials(this);
    }
    return orElse();
  }
}

abstract class LoadedMaterials implements GenerateProjectState {
  const factory LoadedMaterials({final List<Material> materials}) =
      _$LoadedMaterialsImpl;

  @override
  List<Material> get materials;

  /// Create a copy of GenerateProjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedMaterialsImplCopyWith<_$LoadedMaterialsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingSuggestionsImplCopyWith<$Res>
    implements $GenerateProjectStateCopyWith<$Res> {
  factory _$$LoadingSuggestionsImplCopyWith(_$LoadingSuggestionsImpl value,
          $Res Function(_$LoadingSuggestionsImpl) then) =
      __$$LoadingSuggestionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Material> materials});
}

/// @nodoc
class __$$LoadingSuggestionsImplCopyWithImpl<$Res>
    extends _$GenerateProjectStateCopyWithImpl<$Res, _$LoadingSuggestionsImpl>
    implements _$$LoadingSuggestionsImplCopyWith<$Res> {
  __$$LoadingSuggestionsImplCopyWithImpl(_$LoadingSuggestionsImpl _value,
      $Res Function(_$LoadingSuggestionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenerateProjectState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materials = null,
  }) {
    return _then(_$LoadingSuggestionsImpl(
      materials: null == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<Material>,
    ));
  }
}

/// @nodoc

class _$LoadingSuggestionsImpl implements LoadingSuggestions {
  const _$LoadingSuggestionsImpl({final List<Material> materials = const []})
      : _materials = materials;

  final List<Material> _materials;
  @override
  @JsonKey()
  List<Material> get materials {
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_materials);
  }

  @override
  String toString() {
    return 'GenerateProjectState.loadingSuggestions(materials: $materials)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingSuggestionsImpl &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_materials));

  /// Create a copy of GenerateProjectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingSuggestionsImplCopyWith<_$LoadingSuggestionsImpl> get copyWith =>
      __$$LoadingSuggestionsImplCopyWithImpl<_$LoadingSuggestionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Material> materials) initial,
    required TResult Function(List<Material> materials) loadingMaterials,
    required TResult Function(List<Material> materials) loadedMaterials,
    required TResult Function(List<Material> materials) loadingSuggestions,
    required TResult Function(List<Material> materials,
            List<ProjectSuggestion> suggestions, Prompt prompt)
        loadedSuggestions,
    required TResult Function(List<Material> materials, String message) error,
  }) {
    return loadingSuggestions(materials);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Material> materials)? initial,
    TResult? Function(List<Material> materials)? loadingMaterials,
    TResult? Function(List<Material> materials)? loadedMaterials,
    TResult? Function(List<Material> materials)? loadingSuggestions,
    TResult? Function(List<Material> materials,
            List<ProjectSuggestion> suggestions, Prompt prompt)?
        loadedSuggestions,
    TResult? Function(List<Material> materials, String message)? error,
  }) {
    return loadingSuggestions?.call(materials);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Material> materials)? initial,
    TResult Function(List<Material> materials)? loadingMaterials,
    TResult Function(List<Material> materials)? loadedMaterials,
    TResult Function(List<Material> materials)? loadingSuggestions,
    TResult Function(List<Material> materials,
            List<ProjectSuggestion> suggestions, Prompt prompt)?
        loadedSuggestions,
    TResult Function(List<Material> materials, String message)? error,
    required TResult orElse(),
  }) {
    if (loadingSuggestions != null) {
      return loadingSuggestions(materials);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadingMaterials value) loadingMaterials,
    required TResult Function(LoadedMaterials value) loadedMaterials,
    required TResult Function(LoadingSuggestions value) loadingSuggestions,
    required TResult Function(LoadedSuggestions value) loadedSuggestions,
    required TResult Function(Error value) error,
  }) {
    return loadingSuggestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoadingMaterials value)? loadingMaterials,
    TResult? Function(LoadedMaterials value)? loadedMaterials,
    TResult? Function(LoadingSuggestions value)? loadingSuggestions,
    TResult? Function(LoadedSuggestions value)? loadedSuggestions,
    TResult? Function(Error value)? error,
  }) {
    return loadingSuggestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadingMaterials value)? loadingMaterials,
    TResult Function(LoadedMaterials value)? loadedMaterials,
    TResult Function(LoadingSuggestions value)? loadingSuggestions,
    TResult Function(LoadedSuggestions value)? loadedSuggestions,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loadingSuggestions != null) {
      return loadingSuggestions(this);
    }
    return orElse();
  }
}

abstract class LoadingSuggestions implements GenerateProjectState {
  const factory LoadingSuggestions({final List<Material> materials}) =
      _$LoadingSuggestionsImpl;

  @override
  List<Material> get materials;

  /// Create a copy of GenerateProjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingSuggestionsImplCopyWith<_$LoadingSuggestionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedSuggestionsImplCopyWith<$Res>
    implements $GenerateProjectStateCopyWith<$Res> {
  factory _$$LoadedSuggestionsImplCopyWith(_$LoadedSuggestionsImpl value,
          $Res Function(_$LoadedSuggestionsImpl) then) =
      __$$LoadedSuggestionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Material> materials,
      List<ProjectSuggestion> suggestions,
      Prompt prompt});

  $PromptCopyWith<$Res> get prompt;
}

/// @nodoc
class __$$LoadedSuggestionsImplCopyWithImpl<$Res>
    extends _$GenerateProjectStateCopyWithImpl<$Res, _$LoadedSuggestionsImpl>
    implements _$$LoadedSuggestionsImplCopyWith<$Res> {
  __$$LoadedSuggestionsImplCopyWithImpl(_$LoadedSuggestionsImpl _value,
      $Res Function(_$LoadedSuggestionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenerateProjectState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materials = null,
    Object? suggestions = null,
    Object? prompt = null,
  }) {
    return _then(_$LoadedSuggestionsImpl(
      materials: null == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<Material>,
      suggestions: null == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<ProjectSuggestion>,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as Prompt,
    ));
  }

  /// Create a copy of GenerateProjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PromptCopyWith<$Res> get prompt {
    return $PromptCopyWith<$Res>(_value.prompt, (value) {
      return _then(_value.copyWith(prompt: value));
    });
  }
}

/// @nodoc

class _$LoadedSuggestionsImpl implements LoadedSuggestions {
  const _$LoadedSuggestionsImpl(
      {final List<Material> materials = const [],
      required final List<ProjectSuggestion> suggestions,
      required this.prompt})
      : _materials = materials,
        _suggestions = suggestions;

  final List<Material> _materials;
  @override
  @JsonKey()
  List<Material> get materials {
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_materials);
  }

  final List<ProjectSuggestion> _suggestions;
  @override
  List<ProjectSuggestion> get suggestions {
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  @override
  final Prompt prompt;

  @override
  String toString() {
    return 'GenerateProjectState.loadedSuggestions(materials: $materials, suggestions: $suggestions, prompt: $prompt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedSuggestionsImpl &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials) &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions) &&
            (identical(other.prompt, prompt) || other.prompt == prompt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_materials),
      const DeepCollectionEquality().hash(_suggestions),
      prompt);

  /// Create a copy of GenerateProjectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedSuggestionsImplCopyWith<_$LoadedSuggestionsImpl> get copyWith =>
      __$$LoadedSuggestionsImplCopyWithImpl<_$LoadedSuggestionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Material> materials) initial,
    required TResult Function(List<Material> materials) loadingMaterials,
    required TResult Function(List<Material> materials) loadedMaterials,
    required TResult Function(List<Material> materials) loadingSuggestions,
    required TResult Function(List<Material> materials,
            List<ProjectSuggestion> suggestions, Prompt prompt)
        loadedSuggestions,
    required TResult Function(List<Material> materials, String message) error,
  }) {
    return loadedSuggestions(materials, suggestions, prompt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Material> materials)? initial,
    TResult? Function(List<Material> materials)? loadingMaterials,
    TResult? Function(List<Material> materials)? loadedMaterials,
    TResult? Function(List<Material> materials)? loadingSuggestions,
    TResult? Function(List<Material> materials,
            List<ProjectSuggestion> suggestions, Prompt prompt)?
        loadedSuggestions,
    TResult? Function(List<Material> materials, String message)? error,
  }) {
    return loadedSuggestions?.call(materials, suggestions, prompt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Material> materials)? initial,
    TResult Function(List<Material> materials)? loadingMaterials,
    TResult Function(List<Material> materials)? loadedMaterials,
    TResult Function(List<Material> materials)? loadingSuggestions,
    TResult Function(List<Material> materials,
            List<ProjectSuggestion> suggestions, Prompt prompt)?
        loadedSuggestions,
    TResult Function(List<Material> materials, String message)? error,
    required TResult orElse(),
  }) {
    if (loadedSuggestions != null) {
      return loadedSuggestions(materials, suggestions, prompt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadingMaterials value) loadingMaterials,
    required TResult Function(LoadedMaterials value) loadedMaterials,
    required TResult Function(LoadingSuggestions value) loadingSuggestions,
    required TResult Function(LoadedSuggestions value) loadedSuggestions,
    required TResult Function(Error value) error,
  }) {
    return loadedSuggestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoadingMaterials value)? loadingMaterials,
    TResult? Function(LoadedMaterials value)? loadedMaterials,
    TResult? Function(LoadingSuggestions value)? loadingSuggestions,
    TResult? Function(LoadedSuggestions value)? loadedSuggestions,
    TResult? Function(Error value)? error,
  }) {
    return loadedSuggestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadingMaterials value)? loadingMaterials,
    TResult Function(LoadedMaterials value)? loadedMaterials,
    TResult Function(LoadingSuggestions value)? loadingSuggestions,
    TResult Function(LoadedSuggestions value)? loadedSuggestions,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedSuggestions != null) {
      return loadedSuggestions(this);
    }
    return orElse();
  }
}

abstract class LoadedSuggestions implements GenerateProjectState {
  const factory LoadedSuggestions(
      {final List<Material> materials,
      required final List<ProjectSuggestion> suggestions,
      required final Prompt prompt}) = _$LoadedSuggestionsImpl;

  @override
  List<Material> get materials;
  List<ProjectSuggestion> get suggestions;
  Prompt get prompt;

  /// Create a copy of GenerateProjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedSuggestionsImplCopyWith<_$LoadedSuggestionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res>
    implements $GenerateProjectStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Material> materials, String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$GenerateProjectStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenerateProjectState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materials = null,
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      materials: null == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<Material>,
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
      {final List<Material> materials = const [], required this.message})
      : _materials = materials;

  final List<Material> _materials;
  @override
  @JsonKey()
  List<Material> get materials {
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_materials);
  }

  @override
  final String message;

  @override
  String toString() {
    return 'GenerateProjectState.error(materials: $materials, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_materials), message);

  /// Create a copy of GenerateProjectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Material> materials) initial,
    required TResult Function(List<Material> materials) loadingMaterials,
    required TResult Function(List<Material> materials) loadedMaterials,
    required TResult Function(List<Material> materials) loadingSuggestions,
    required TResult Function(List<Material> materials,
            List<ProjectSuggestion> suggestions, Prompt prompt)
        loadedSuggestions,
    required TResult Function(List<Material> materials, String message) error,
  }) {
    return error(materials, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Material> materials)? initial,
    TResult? Function(List<Material> materials)? loadingMaterials,
    TResult? Function(List<Material> materials)? loadedMaterials,
    TResult? Function(List<Material> materials)? loadingSuggestions,
    TResult? Function(List<Material> materials,
            List<ProjectSuggestion> suggestions, Prompt prompt)?
        loadedSuggestions,
    TResult? Function(List<Material> materials, String message)? error,
  }) {
    return error?.call(materials, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Material> materials)? initial,
    TResult Function(List<Material> materials)? loadingMaterials,
    TResult Function(List<Material> materials)? loadedMaterials,
    TResult Function(List<Material> materials)? loadingSuggestions,
    TResult Function(List<Material> materials,
            List<ProjectSuggestion> suggestions, Prompt prompt)?
        loadedSuggestions,
    TResult Function(List<Material> materials, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(materials, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadingMaterials value) loadingMaterials,
    required TResult Function(LoadedMaterials value) loadedMaterials,
    required TResult Function(LoadingSuggestions value) loadingSuggestions,
    required TResult Function(LoadedSuggestions value) loadedSuggestions,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoadingMaterials value)? loadingMaterials,
    TResult? Function(LoadedMaterials value)? loadedMaterials,
    TResult? Function(LoadingSuggestions value)? loadingSuggestions,
    TResult? Function(LoadedSuggestions value)? loadedSuggestions,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadingMaterials value)? loadingMaterials,
    TResult Function(LoadedMaterials value)? loadedMaterials,
    TResult Function(LoadingSuggestions value)? loadingSuggestions,
    TResult Function(LoadedSuggestions value)? loadedSuggestions,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements GenerateProjectState {
  const factory Error(
      {final List<Material> materials,
      required final String message}) = _$ErrorImpl;

  @override
  List<Material> get materials;
  String get message;

  /// Create a copy of GenerateProjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
