// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'c_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CNotification _$CNotificationFromJson(Map<String, dynamic> json) {
  return _CNotification.fromJson(json);
}

/// @nodoc
mixin _$CNotification {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  bool get read => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this CNotification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CNotificationCopyWith<CNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CNotificationCopyWith<$Res> {
  factory $CNotificationCopyWith(
          CNotification value, $Res Function(CNotification) then) =
      _$CNotificationCopyWithImpl<$Res, CNotification>;
  @useResult
  $Res call(
      {String id,
      String title,
      String body,
      String type,
      Map<String, dynamic> data,
      bool read,
      DateTime createdAt});
}

/// @nodoc
class _$CNotificationCopyWithImpl<$Res, $Val extends CNotification>
    implements $CNotificationCopyWith<$Res> {
  _$CNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? type = null,
    Object? data = null,
    Object? read = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CNotificationImplCopyWith<$Res>
    implements $CNotificationCopyWith<$Res> {
  factory _$$CNotificationImplCopyWith(
          _$CNotificationImpl value, $Res Function(_$CNotificationImpl) then) =
      __$$CNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String body,
      String type,
      Map<String, dynamic> data,
      bool read,
      DateTime createdAt});
}

/// @nodoc
class __$$CNotificationImplCopyWithImpl<$Res>
    extends _$CNotificationCopyWithImpl<$Res, _$CNotificationImpl>
    implements _$$CNotificationImplCopyWith<$Res> {
  __$$CNotificationImplCopyWithImpl(
      _$CNotificationImpl _value, $Res Function(_$CNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of CNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? type = null,
    Object? data = null,
    Object? read = null,
    Object? createdAt = null,
  }) {
    return _then(_$CNotificationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CNotificationImpl implements _CNotification {
  const _$CNotificationImpl(
      {this.id = '',
      this.title = '',
      this.body = '',
      this.type = '',
      required final Map<String, dynamic> data,
      this.read = false,
      required this.createdAt})
      : _data = data;

  factory _$CNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CNotificationImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String body;
  @override
  @JsonKey()
  final String type;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  @JsonKey()
  final bool read;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'CNotification(id: $id, title: $title, body: $body, type: $type, data: $data, read: $read, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CNotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.read, read) || other.read == read) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, body, type,
      const DeepCollectionEquality().hash(_data), read, createdAt);

  /// Create a copy of CNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CNotificationImplCopyWith<_$CNotificationImpl> get copyWith =>
      __$$CNotificationImplCopyWithImpl<_$CNotificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CNotificationImplToJson(
      this,
    );
  }
}

abstract class _CNotification implements CNotification {
  const factory _CNotification(
      {final String id,
      final String title,
      final String body,
      final String type,
      required final Map<String, dynamic> data,
      final bool read,
      required final DateTime createdAt}) = _$CNotificationImpl;

  factory _CNotification.fromJson(Map<String, dynamic> json) =
      _$CNotificationImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get body;
  @override
  String get type;
  @override
  Map<String, dynamic> get data;
  @override
  bool get read;
  @override
  DateTime get createdAt;

  /// Create a copy of CNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CNotificationImplCopyWith<_$CNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
