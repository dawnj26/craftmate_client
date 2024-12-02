// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listing_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListingNotification _$ListingNotificationFromJson(Map<String, dynamic> json) {
  return _ListingNotification.fromJson(json);
}

/// @nodoc
mixin _$ListingNotification {
  int get senderId => throw _privateConstructorUsedError;
  String get listingId => throw _privateConstructorUsedError;

  /// Serializes this ListingNotification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListingNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListingNotificationCopyWith<ListingNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingNotificationCopyWith<$Res> {
  factory $ListingNotificationCopyWith(
          ListingNotification value, $Res Function(ListingNotification) then) =
      _$ListingNotificationCopyWithImpl<$Res, ListingNotification>;
  @useResult
  $Res call({int senderId, String listingId});
}

/// @nodoc
class _$ListingNotificationCopyWithImpl<$Res, $Val extends ListingNotification>
    implements $ListingNotificationCopyWith<$Res> {
  _$ListingNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListingNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = null,
    Object? listingId = null,
  }) {
    return _then(_value.copyWith(
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as int,
      listingId: null == listingId
          ? _value.listingId
          : listingId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListingNotificationImplCopyWith<$Res>
    implements $ListingNotificationCopyWith<$Res> {
  factory _$$ListingNotificationImplCopyWith(_$ListingNotificationImpl value,
          $Res Function(_$ListingNotificationImpl) then) =
      __$$ListingNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int senderId, String listingId});
}

/// @nodoc
class __$$ListingNotificationImplCopyWithImpl<$Res>
    extends _$ListingNotificationCopyWithImpl<$Res, _$ListingNotificationImpl>
    implements _$$ListingNotificationImplCopyWith<$Res> {
  __$$ListingNotificationImplCopyWithImpl(_$ListingNotificationImpl _value,
      $Res Function(_$ListingNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListingNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = null,
    Object? listingId = null,
  }) {
    return _then(_$ListingNotificationImpl(
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as int,
      listingId: null == listingId
          ? _value.listingId
          : listingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListingNotificationImpl implements _ListingNotification {
  const _$ListingNotificationImpl({this.senderId = -1, this.listingId = ''});

  factory _$ListingNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListingNotificationImplFromJson(json);

  @override
  @JsonKey()
  final int senderId;
  @override
  @JsonKey()
  final String listingId;

  @override
  String toString() {
    return 'ListingNotification(senderId: $senderId, listingId: $listingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListingNotificationImpl &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.listingId, listingId) ||
                other.listingId == listingId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, senderId, listingId);

  /// Create a copy of ListingNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListingNotificationImplCopyWith<_$ListingNotificationImpl> get copyWith =>
      __$$ListingNotificationImplCopyWithImpl<_$ListingNotificationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListingNotificationImplToJson(
      this,
    );
  }
}

abstract class _ListingNotification implements ListingNotification {
  const factory _ListingNotification(
      {final int senderId, final String listingId}) = _$ListingNotificationImpl;

  factory _ListingNotification.fromJson(Map<String, dynamic> json) =
      _$ListingNotificationImpl.fromJson;

  @override
  int get senderId;
  @override
  String get listingId;

  /// Create a copy of ListingNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListingNotificationImplCopyWith<_$ListingNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
