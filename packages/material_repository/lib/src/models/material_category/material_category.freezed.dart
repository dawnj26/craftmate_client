// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'material_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MaterialCategory _$MaterialCategoryFromJson(Map<String, dynamic> json) {
  return _MaterialCategory.fromJson(json);
}

/// @nodoc
mixin _$MaterialCategory {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get hexColor => throw _privateConstructorUsedError;

  /// Serializes this MaterialCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MaterialCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MaterialCategoryCopyWith<MaterialCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialCategoryCopyWith<$Res> {
  factory $MaterialCategoryCopyWith(
          MaterialCategory value, $Res Function(MaterialCategory) then) =
      _$MaterialCategoryCopyWithImpl<$Res, MaterialCategory>;
  @useResult
  $Res call({int id, String name, String description, int hexColor});
}

/// @nodoc
class _$MaterialCategoryCopyWithImpl<$Res, $Val extends MaterialCategory>
    implements $MaterialCategoryCopyWith<$Res> {
  _$MaterialCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MaterialCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? hexColor = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      hexColor: null == hexColor
          ? _value.hexColor
          : hexColor // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MaterialCategoryImplCopyWith<$Res>
    implements $MaterialCategoryCopyWith<$Res> {
  factory _$$MaterialCategoryImplCopyWith(_$MaterialCategoryImpl value,
          $Res Function(_$MaterialCategoryImpl) then) =
      __$$MaterialCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String description, int hexColor});
}

/// @nodoc
class __$$MaterialCategoryImplCopyWithImpl<$Res>
    extends _$MaterialCategoryCopyWithImpl<$Res, _$MaterialCategoryImpl>
    implements _$$MaterialCategoryImplCopyWith<$Res> {
  __$$MaterialCategoryImplCopyWithImpl(_$MaterialCategoryImpl _value,
      $Res Function(_$MaterialCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of MaterialCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? hexColor = null,
  }) {
    return _then(_$MaterialCategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      hexColor: null == hexColor
          ? _value.hexColor
          : hexColor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MaterialCategoryImpl implements _MaterialCategory {
  const _$MaterialCategoryImpl(
      {this.id = 0, this.name = '', this.description = '', this.hexColor = 0});

  factory _$MaterialCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$MaterialCategoryImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final int hexColor;

  @override
  String toString() {
    return 'MaterialCategory(id: $id, name: $name, description: $description, hexColor: $hexColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.hexColor, hexColor) ||
                other.hexColor == hexColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, hexColor);

  /// Create a copy of MaterialCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MaterialCategoryImplCopyWith<_$MaterialCategoryImpl> get copyWith =>
      __$$MaterialCategoryImplCopyWithImpl<_$MaterialCategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MaterialCategoryImplToJson(
      this,
    );
  }
}

abstract class _MaterialCategory implements MaterialCategory {
  const factory _MaterialCategory(
      {final int id,
      final String name,
      final String description,
      final int hexColor}) = _$MaterialCategoryImpl;

  factory _MaterialCategory.fromJson(Map<String, dynamic> json) =
      _$MaterialCategoryImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  int get hexColor;

  /// Create a copy of MaterialCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MaterialCategoryImplCopyWith<_$MaterialCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
