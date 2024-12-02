// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageNotification _$MessageNotificationFromJson(Map<String, dynamic> json) {
  return _MessageNotification.fromJson(json);
}

/// @nodoc
mixin _$MessageNotification {
  /// Serializes this MessageNotification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageNotificationCopyWith<$Res> {
  factory $MessageNotificationCopyWith(
          MessageNotification value, $Res Function(MessageNotification) then) =
      _$MessageNotificationCopyWithImpl<$Res, MessageNotification>;
}

/// @nodoc
class _$MessageNotificationCopyWithImpl<$Res, $Val extends MessageNotification>
    implements $MessageNotificationCopyWith<$Res> {
  _$MessageNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageNotification
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MessageNotificationImplCopyWith<$Res> {
  factory _$$MessageNotificationImplCopyWith(_$MessageNotificationImpl value,
          $Res Function(_$MessageNotificationImpl) then) =
      __$$MessageNotificationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MessageNotificationImplCopyWithImpl<$Res>
    extends _$MessageNotificationCopyWithImpl<$Res, _$MessageNotificationImpl>
    implements _$$MessageNotificationImplCopyWith<$Res> {
  __$$MessageNotificationImplCopyWithImpl(_$MessageNotificationImpl _value,
      $Res Function(_$MessageNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageNotification
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$MessageNotificationImpl implements _MessageNotification {
  const _$MessageNotificationImpl();

  factory _$MessageNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageNotificationImplFromJson(json);

  @override
  String toString() {
    return 'MessageNotification()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageNotificationImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageNotificationImplToJson(
      this,
    );
  }
}

abstract class _MessageNotification implements MessageNotification {
  const factory _MessageNotification() = _$MessageNotificationImpl;

  factory _MessageNotification.fromJson(Map<String, dynamic> json) =
      _$MessageNotificationImpl.fromJson;
}
