// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'template_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TemplateNotification _$TemplateNotificationFromJson(Map<String, dynamic> json) {
  return _TemplateNotification.fromJson(json);
}

/// @nodoc
mixin _$TemplateNotification {
  /// Serializes this TemplateNotification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplateNotificationCopyWith<$Res> {
  factory $TemplateNotificationCopyWith(TemplateNotification value,
          $Res Function(TemplateNotification) then) =
      _$TemplateNotificationCopyWithImpl<$Res, TemplateNotification>;
}

/// @nodoc
class _$TemplateNotificationCopyWithImpl<$Res,
        $Val extends TemplateNotification>
    implements $TemplateNotificationCopyWith<$Res> {
  _$TemplateNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TemplateNotification
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TemplateNotificationImplCopyWith<$Res> {
  factory _$$TemplateNotificationImplCopyWith(_$TemplateNotificationImpl value,
          $Res Function(_$TemplateNotificationImpl) then) =
      __$$TemplateNotificationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TemplateNotificationImplCopyWithImpl<$Res>
    extends _$TemplateNotificationCopyWithImpl<$Res, _$TemplateNotificationImpl>
    implements _$$TemplateNotificationImplCopyWith<$Res> {
  __$$TemplateNotificationImplCopyWithImpl(_$TemplateNotificationImpl _value,
      $Res Function(_$TemplateNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of TemplateNotification
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$TemplateNotificationImpl implements _TemplateNotification {
  const _$TemplateNotificationImpl();

  factory _$TemplateNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemplateNotificationImplFromJson(json);

  @override
  String toString() {
    return 'TemplateNotification()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemplateNotificationImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$TemplateNotificationImplToJson(
      this,
    );
  }
}

abstract class _TemplateNotification implements TemplateNotification {
  const factory _TemplateNotification() = _$TemplateNotificationImpl;

  factory _TemplateNotification.fromJson(Map<String, dynamic> json) =
      _$TemplateNotificationImpl.fromJson;
}
