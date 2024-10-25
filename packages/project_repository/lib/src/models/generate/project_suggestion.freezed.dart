// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_suggestion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectSuggestion _$ProjectSuggestionFromJson(Map<String, dynamic> json) {
  return _ProjectSuggestion.fromJson(json);
}

/// @nodoc
mixin _$ProjectSuggestion {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String>? get steps => throw _privateConstructorUsedError;
  List<Material> get materials => throw _privateConstructorUsedError;

  /// Serializes this ProjectSuggestion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectSuggestionCopyWith<ProjectSuggestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectSuggestionCopyWith<$Res> {
  factory $ProjectSuggestionCopyWith(
          ProjectSuggestion value, $Res Function(ProjectSuggestion) then) =
      _$ProjectSuggestionCopyWithImpl<$Res, ProjectSuggestion>;
  @useResult
  $Res call(
      {String title,
      String description,
      List<String>? steps,
      List<Material> materials});
}

/// @nodoc
class _$ProjectSuggestionCopyWithImpl<$Res, $Val extends ProjectSuggestion>
    implements $ProjectSuggestionCopyWith<$Res> {
  _$ProjectSuggestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? steps = freezed,
    Object? materials = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      steps: freezed == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      materials: null == materials
          ? _value.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<Material>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectSuggestionImplCopyWith<$Res>
    implements $ProjectSuggestionCopyWith<$Res> {
  factory _$$ProjectSuggestionImplCopyWith(_$ProjectSuggestionImpl value,
          $Res Function(_$ProjectSuggestionImpl) then) =
      __$$ProjectSuggestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      List<String>? steps,
      List<Material> materials});
}

/// @nodoc
class __$$ProjectSuggestionImplCopyWithImpl<$Res>
    extends _$ProjectSuggestionCopyWithImpl<$Res, _$ProjectSuggestionImpl>
    implements _$$ProjectSuggestionImplCopyWith<$Res> {
  __$$ProjectSuggestionImplCopyWithImpl(_$ProjectSuggestionImpl _value,
      $Res Function(_$ProjectSuggestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? steps = freezed,
    Object? materials = null,
  }) {
    return _then(_$ProjectSuggestionImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      steps: freezed == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      materials: null == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<Material>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectSuggestionImpl implements _ProjectSuggestion {
  _$ProjectSuggestionImpl(
      {this.title = '',
      this.description = '',
      final List<String>? steps,
      final List<Material> materials = const []})
      : _steps = steps,
        _materials = materials;

  factory _$ProjectSuggestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectSuggestionImplFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  final List<String>? _steps;
  @override
  List<String>? get steps {
    final value = _steps;
    if (value == null) return null;
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
    return 'ProjectSuggestion(title: $title, description: $description, steps: $steps, materials: $materials)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectSuggestionImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      const DeepCollectionEquality().hash(_steps),
      const DeepCollectionEquality().hash(_materials));

  /// Create a copy of ProjectSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectSuggestionImplCopyWith<_$ProjectSuggestionImpl> get copyWith =>
      __$$ProjectSuggestionImplCopyWithImpl<_$ProjectSuggestionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectSuggestionImplToJson(
      this,
    );
  }
}

abstract class _ProjectSuggestion implements ProjectSuggestion {
  factory _ProjectSuggestion(
      {final String title,
      final String description,
      final List<String>? steps,
      final List<Material> materials}) = _$ProjectSuggestionImpl;

  factory _ProjectSuggestion.fromJson(Map<String, dynamic> json) =
      _$ProjectSuggestionImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  List<String>? get steps;
  @override
  List<Material> get materials;

  /// Create a copy of ProjectSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectSuggestionImplCopyWith<_$ProjectSuggestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
