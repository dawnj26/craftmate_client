// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_fork.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectFork _$ProjectForkFromJson(Map<String, dynamic> json) {
  return _ProjectFork.fromJson(json);
}

/// @nodoc
mixin _$ProjectFork {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Serializes this ProjectFork to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectFork
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectForkCopyWith<ProjectFork> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectForkCopyWith<$Res> {
  factory $ProjectForkCopyWith(
          ProjectFork value, $Res Function(ProjectFork) then) =
      _$ProjectForkCopyWithImpl<$Res, ProjectFork>;
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class _$ProjectForkCopyWithImpl<$Res, $Val extends ProjectFork>
    implements $ProjectForkCopyWith<$Res> {
  _$ProjectForkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectFork
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectForkImplCopyWith<$Res>
    implements $ProjectForkCopyWith<$Res> {
  factory _$$ProjectForkImplCopyWith(
          _$ProjectForkImpl value, $Res Function(_$ProjectForkImpl) then) =
      __$$ProjectForkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class __$$ProjectForkImplCopyWithImpl<$Res>
    extends _$ProjectForkCopyWithImpl<$Res, _$ProjectForkImpl>
    implements _$$ProjectForkImplCopyWith<$Res> {
  __$$ProjectForkImplCopyWithImpl(
      _$ProjectForkImpl _value, $Res Function(_$ProjectForkImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectFork
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_$ProjectForkImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectForkImpl implements _ProjectFork {
  const _$ProjectForkImpl({this.id = 0, this.title = ''});

  factory _$ProjectForkImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectForkImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;

  @override
  String toString() {
    return 'ProjectFork(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectForkImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  /// Create a copy of ProjectFork
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectForkImplCopyWith<_$ProjectForkImpl> get copyWith =>
      __$$ProjectForkImplCopyWithImpl<_$ProjectForkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectForkImplToJson(
      this,
    );
  }
}

abstract class _ProjectFork implements ProjectFork {
  const factory _ProjectFork({final int id, final String title}) =
      _$ProjectForkImpl;

  factory _ProjectFork.fromJson(Map<String, dynamic> json) =
      _$ProjectForkImpl.fromJson;

  @override
  int get id;
  @override
  String get title;

  /// Create a copy of ProjectFork
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectForkImplCopyWith<_$ProjectForkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
