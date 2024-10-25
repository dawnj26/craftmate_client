// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prompt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Prompt {
  String get type => throw _privateConstructorUsedError;
  String get difficulty => throw _privateConstructorUsedError;
  List<String> get materials => throw _privateConstructorUsedError;
  String get additionalInfo => throw _privateConstructorUsedError;

  /// Create a copy of Prompt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PromptCopyWith<Prompt> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromptCopyWith<$Res> {
  factory $PromptCopyWith(Prompt value, $Res Function(Prompt) then) =
      _$PromptCopyWithImpl<$Res, Prompt>;
  @useResult
  $Res call(
      {String type,
      String difficulty,
      List<String> materials,
      String additionalInfo});
}

/// @nodoc
class _$PromptCopyWithImpl<$Res, $Val extends Prompt>
    implements $PromptCopyWith<$Res> {
  _$PromptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Prompt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? difficulty = null,
    Object? materials = null,
    Object? additionalInfo = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      materials: null == materials
          ? _value.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<String>,
      additionalInfo: null == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromptImplCopyWith<$Res> implements $PromptCopyWith<$Res> {
  factory _$$PromptImplCopyWith(
          _$PromptImpl value, $Res Function(_$PromptImpl) then) =
      __$$PromptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String difficulty,
      List<String> materials,
      String additionalInfo});
}

/// @nodoc
class __$$PromptImplCopyWithImpl<$Res>
    extends _$PromptCopyWithImpl<$Res, _$PromptImpl>
    implements _$$PromptImplCopyWith<$Res> {
  __$$PromptImplCopyWithImpl(
      _$PromptImpl _value, $Res Function(_$PromptImpl) _then)
      : super(_value, _then);

  /// Create a copy of Prompt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? difficulty = null,
    Object? materials = null,
    Object? additionalInfo = null,
  }) {
    return _then(_$PromptImpl(
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

class _$PromptImpl extends _Prompt {
  const _$PromptImpl(
      {required this.type,
      required this.difficulty,
      required final List<String> materials,
      this.additionalInfo = ''})
      : _materials = materials,
        super._();

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
    return 'Prompt(type: $type, difficulty: $difficulty, materials: $materials, additionalInfo: $additionalInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromptImpl &&
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

  /// Create a copy of Prompt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PromptImplCopyWith<_$PromptImpl> get copyWith =>
      __$$PromptImplCopyWithImpl<_$PromptImpl>(this, _$identity);
}

abstract class _Prompt extends Prompt {
  const factory _Prompt(
      {required final String type,
      required final String difficulty,
      required final List<String> materials,
      final String additionalInfo}) = _$PromptImpl;
  const _Prompt._() : super._();

  @override
  String get type;
  @override
  String get difficulty;
  @override
  List<String> get materials;
  @override
  String get additionalInfo;

  /// Create a copy of Prompt
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PromptImplCopyWith<_$PromptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
