// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationEvent {










}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res>  {
  factory $NotificationEventCopyWith(NotificationEvent value, $Res Function(NotificationEvent) then) = _$NotificationEventCopyWithImpl<$Res, NotificationEvent>;



}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res,$Val extends NotificationEvent> implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>  {
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) = __$$StartedImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res> extends _$NotificationEventCopyWithImpl<$Res, _$StartedImpl> implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(_$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);


/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$StartedImpl  implements _Started {
  const _$StartedImpl();

  



@override
String toString() {
  return 'NotificationEvent.started()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StartedImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _Started implements NotificationEvent {
  const factory _Started() = _$StartedImpl;
  

  



}

/// @nodoc
abstract class _$$FetchNotificationsImplCopyWith<$Res>  {
  factory _$$FetchNotificationsImplCopyWith(_$FetchNotificationsImpl value, $Res Function(_$FetchNotificationsImpl) then) = __$$FetchNotificationsImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$FetchNotificationsImplCopyWithImpl<$Res> extends _$NotificationEventCopyWithImpl<$Res, _$FetchNotificationsImpl> implements _$$FetchNotificationsImplCopyWith<$Res> {
  __$$FetchNotificationsImplCopyWithImpl(_$FetchNotificationsImpl _value, $Res Function(_$FetchNotificationsImpl) _then)
      : super(_value, _then);


/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$FetchNotificationsImpl  implements _FetchNotifications {
  const _$FetchNotificationsImpl();

  



@override
String toString() {
  return 'NotificationEvent.fetchNotifications()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$FetchNotificationsImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _FetchNotifications implements NotificationEvent {
  const factory _FetchNotifications() = _$FetchNotificationsImpl;
  

  



}

/// @nodoc
abstract class _$$NotificationChangedImplCopyWith<$Res>  {
  factory _$$NotificationChangedImplCopyWith(_$NotificationChangedImpl value, $Res Function(_$NotificationChangedImpl) then) = __$$NotificationChangedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 List<CNotification> notifications
});



}

/// @nodoc
class __$$NotificationChangedImplCopyWithImpl<$Res> extends _$NotificationEventCopyWithImpl<$Res, _$NotificationChangedImpl> implements _$$NotificationChangedImplCopyWith<$Res> {
  __$$NotificationChangedImplCopyWithImpl(_$NotificationChangedImpl _value, $Res Function(_$NotificationChangedImpl) _then)
      : super(_value, _then);


/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? notifications = null,}) {
  return _then(_$NotificationChangedImpl(
null == notifications ? _value._notifications : notifications // ignore: cast_nullable_to_non_nullable
as List<CNotification>,
  ));
}


}

/// @nodoc


class _$NotificationChangedImpl  implements _NotificationChanged {
  const _$NotificationChangedImpl(final  List<CNotification> notifications): _notifications = notifications;

  

 final  List<CNotification> _notifications;
@override List<CNotification> get notifications {
  if (_notifications is EqualUnmodifiableListView) return _notifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notifications);
}


@override
String toString() {
  return 'NotificationEvent.notificationChanged(notifications: $notifications)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$NotificationChangedImpl&&const DeepCollectionEquality().equals(other._notifications, _notifications));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_notifications));

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$NotificationChangedImplCopyWith<_$NotificationChangedImpl> get copyWith => __$$NotificationChangedImplCopyWithImpl<_$NotificationChangedImpl>(this, _$identity);








}


abstract class _NotificationChanged implements NotificationEvent {
  const factory _NotificationChanged(final  List<CNotification> notifications) = _$NotificationChangedImpl;
  

  

 List<CNotification> get notifications;
/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$NotificationChangedImplCopyWith<_$NotificationChangedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$MarkNotificationAsReadImplCopyWith<$Res>  {
  factory _$$MarkNotificationAsReadImplCopyWith(_$MarkNotificationAsReadImpl value, $Res Function(_$MarkNotificationAsReadImpl) then) = __$$MarkNotificationAsReadImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String notificationId
});



}

/// @nodoc
class __$$MarkNotificationAsReadImplCopyWithImpl<$Res> extends _$NotificationEventCopyWithImpl<$Res, _$MarkNotificationAsReadImpl> implements _$$MarkNotificationAsReadImplCopyWith<$Res> {
  __$$MarkNotificationAsReadImplCopyWithImpl(_$MarkNotificationAsReadImpl _value, $Res Function(_$MarkNotificationAsReadImpl) _then)
      : super(_value, _then);


/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? notificationId = null,}) {
  return _then(_$MarkNotificationAsReadImpl(
null == notificationId ? _value.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$MarkNotificationAsReadImpl  implements _MarkNotificationAsRead {
  const _$MarkNotificationAsReadImpl(this.notificationId);

  

@override final  String notificationId;

@override
String toString() {
  return 'NotificationEvent.markNotificationAsRead(notificationId: $notificationId)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$MarkNotificationAsReadImpl&&(identical(other.notificationId, notificationId) || other.notificationId == notificationId));
}


@override
int get hashCode => Object.hash(runtimeType,notificationId);

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$MarkNotificationAsReadImplCopyWith<_$MarkNotificationAsReadImpl> get copyWith => __$$MarkNotificationAsReadImplCopyWithImpl<_$MarkNotificationAsReadImpl>(this, _$identity);








}


abstract class _MarkNotificationAsRead implements NotificationEvent {
  const factory _MarkNotificationAsRead(final  String notificationId) = _$MarkNotificationAsReadImpl;
  

  

 String get notificationId;
/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$MarkNotificationAsReadImplCopyWith<_$MarkNotificationAsReadImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$FilterChangedImplCopyWith<$Res>  {
  factory _$$FilterChangedImplCopyWith(_$FilterChangedImpl value, $Res Function(_$FilterChangedImpl) then) = __$$FilterChangedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 NotificationDateFilter filter
});



}

/// @nodoc
class __$$FilterChangedImplCopyWithImpl<$Res> extends _$NotificationEventCopyWithImpl<$Res, _$FilterChangedImpl> implements _$$FilterChangedImplCopyWith<$Res> {
  __$$FilterChangedImplCopyWithImpl(_$FilterChangedImpl _value, $Res Function(_$FilterChangedImpl) _then)
      : super(_value, _then);


/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? filter = null,}) {
  return _then(_$FilterChangedImpl(
null == filter ? _value.filter : filter // ignore: cast_nullable_to_non_nullable
as NotificationDateFilter,
  ));
}


}

/// @nodoc


class _$FilterChangedImpl  implements _FilterChanged {
  const _$FilterChangedImpl(this.filter);

  

@override final  NotificationDateFilter filter;

@override
String toString() {
  return 'NotificationEvent.filterChanged(filter: $filter)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$FilterChangedImpl&&(identical(other.filter, filter) || other.filter == filter));
}


@override
int get hashCode => Object.hash(runtimeType,filter);

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$FilterChangedImplCopyWith<_$FilterChangedImpl> get copyWith => __$$FilterChangedImplCopyWithImpl<_$FilterChangedImpl>(this, _$identity);








}


abstract class _FilterChanged implements NotificationEvent {
  const factory _FilterChanged(final  NotificationDateFilter filter) = _$FilterChangedImpl;
  

  

 NotificationDateFilter get filter;
/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$FilterChangedImplCopyWith<_$FilterChangedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
mixin _$NotificationState {

 List<CNotification> get notifications => throw _privateConstructorUsedError; NotificationDateFilter get filter => throw _privateConstructorUsedError; bool get hasPermission => throw _privateConstructorUsedError;







/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$NotificationStateCopyWith<NotificationState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res>  {
  factory $NotificationStateCopyWith(NotificationState value, $Res Function(NotificationState) then) = _$NotificationStateCopyWithImpl<$Res, NotificationState>;
@useResult
$Res call({
 List<CNotification> notifications, NotificationDateFilter filter, bool hasPermission
});



}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res,$Val extends NotificationState> implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? notifications = null,Object? filter = null,Object? hasPermission = null,}) {
  return _then(_value.copyWith(
notifications: null == notifications ? _value.notifications : notifications // ignore: cast_nullable_to_non_nullable
as List<CNotification>,filter: null == filter ? _value.filter : filter // ignore: cast_nullable_to_non_nullable
as NotificationDateFilter,hasPermission: null == hasPermission ? _value.hasPermission : hasPermission // ignore: cast_nullable_to_non_nullable
as bool,
  )as $Val);
}

}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $NotificationStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<CNotification> notifications, NotificationDateFilter filter, bool hasPermission
});



}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$NotificationStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? notifications = null,Object? filter = null,Object? hasPermission = null,}) {
  return _then(_$InitialImpl(
notifications: null == notifications ? _value._notifications : notifications // ignore: cast_nullable_to_non_nullable
as List<CNotification>,filter: null == filter ? _value.filter : filter // ignore: cast_nullable_to_non_nullable
as NotificationDateFilter,hasPermission: null == hasPermission ? _value.hasPermission : hasPermission // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl({final  List<CNotification> notifications = const [], this.filter = NotificationDateFilter.today, this.hasPermission = false}): _notifications = notifications;

  

 final  List<CNotification> _notifications;
@override@JsonKey() List<CNotification> get notifications {
  if (_notifications is EqualUnmodifiableListView) return _notifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notifications);
}

@override@JsonKey() final  NotificationDateFilter filter;
@override@JsonKey() final  bool hasPermission;

@override
String toString() {
  return 'NotificationState.initial(notifications: $notifications, filter: $filter, hasPermission: $hasPermission)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&const DeepCollectionEquality().equals(other._notifications, _notifications)&&(identical(other.filter, filter) || other.filter == filter)&&(identical(other.hasPermission, hasPermission) || other.hasPermission == hasPermission));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_notifications),filter,hasPermission);

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements NotificationState {
  const factory Initial({final  List<CNotification> notifications, final  NotificationDateFilter filter, final  bool hasPermission}) = _$InitialImpl;
  

  

@override List<CNotification> get notifications;@override NotificationDateFilter get filter;@override bool get hasPermission;
/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> implements $NotificationStateCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(_$InitializedImpl value, $Res Function(_$InitializedImpl) then) = __$$InitializedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<CNotification> notifications, NotificationDateFilter filter, bool hasPermission
});



}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res> extends _$NotificationStateCopyWithImpl<$Res, _$InitializedImpl> implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(_$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);


/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? notifications = null,Object? filter = null,Object? hasPermission = null,}) {
  return _then(_$InitializedImpl(
notifications: null == notifications ? _value._notifications : notifications // ignore: cast_nullable_to_non_nullable
as List<CNotification>,filter: null == filter ? _value.filter : filter // ignore: cast_nullable_to_non_nullable
as NotificationDateFilter,hasPermission: null == hasPermission ? _value.hasPermission : hasPermission // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _$InitializedImpl  implements Initialized {
  const _$InitializedImpl({final  List<CNotification> notifications = const [], this.filter = NotificationDateFilter.today, required this.hasPermission}): _notifications = notifications;

  

 final  List<CNotification> _notifications;
@override@JsonKey() List<CNotification> get notifications {
  if (_notifications is EqualUnmodifiableListView) return _notifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notifications);
}

@override@JsonKey() final  NotificationDateFilter filter;
@override final  bool hasPermission;

@override
String toString() {
  return 'NotificationState.initialized(notifications: $notifications, filter: $filter, hasPermission: $hasPermission)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitializedImpl&&const DeepCollectionEquality().equals(other._notifications, _notifications)&&(identical(other.filter, filter) || other.filter == filter)&&(identical(other.hasPermission, hasPermission) || other.hasPermission == hasPermission));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_notifications),filter,hasPermission);

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitializedImplCopyWith<_$InitializedImpl> get copyWith => __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);








}


abstract class Initialized implements NotificationState {
  const factory Initialized({final  List<CNotification> notifications, final  NotificationDateFilter filter, required final  bool hasPermission}) = _$InitializedImpl;
  

  

@override List<CNotification> get notifications;@override NotificationDateFilter get filter;@override bool get hasPermission;
/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitializedImplCopyWith<_$InitializedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> implements $NotificationStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl value, $Res Function(_$LoadingImpl) then) = __$$LoadingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<CNotification> notifications, NotificationDateFilter filter, bool hasPermission
});



}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$NotificationStateCopyWithImpl<$Res, _$LoadingImpl> implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);


/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? notifications = null,Object? filter = null,Object? hasPermission = null,}) {
  return _then(_$LoadingImpl(
notifications: null == notifications ? _value._notifications : notifications // ignore: cast_nullable_to_non_nullable
as List<CNotification>,filter: null == filter ? _value.filter : filter // ignore: cast_nullable_to_non_nullable
as NotificationDateFilter,hasPermission: null == hasPermission ? _value.hasPermission : hasPermission // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _$LoadingImpl  implements Loading {
  const _$LoadingImpl({final  List<CNotification> notifications = const [], this.filter = NotificationDateFilter.today, this.hasPermission = false}): _notifications = notifications;

  

 final  List<CNotification> _notifications;
@override@JsonKey() List<CNotification> get notifications {
  if (_notifications is EqualUnmodifiableListView) return _notifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notifications);
}

@override@JsonKey() final  NotificationDateFilter filter;
@override@JsonKey() final  bool hasPermission;

@override
String toString() {
  return 'NotificationState.loading(notifications: $notifications, filter: $filter, hasPermission: $hasPermission)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadingImpl&&const DeepCollectionEquality().equals(other._notifications, _notifications)&&(identical(other.filter, filter) || other.filter == filter)&&(identical(other.hasPermission, hasPermission) || other.hasPermission == hasPermission));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_notifications),filter,hasPermission);

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);








}


abstract class Loading implements NotificationState {
  const factory Loading({final  List<CNotification> notifications, final  NotificationDateFilter filter, final  bool hasPermission}) = _$LoadingImpl;
  

  

@override List<CNotification> get notifications;@override NotificationDateFilter get filter;@override bool get hasPermission;
/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $NotificationStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(_$LoadedImpl value, $Res Function(_$LoadedImpl) then) = __$$LoadedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<CNotification> notifications, NotificationDateFilter filter, bool hasPermission
});



}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res> extends _$NotificationStateCopyWithImpl<$Res, _$LoadedImpl> implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(_$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);


/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? notifications = null,Object? filter = null,Object? hasPermission = null,}) {
  return _then(_$LoadedImpl(
notifications: null == notifications ? _value._notifications : notifications // ignore: cast_nullable_to_non_nullable
as List<CNotification>,filter: null == filter ? _value.filter : filter // ignore: cast_nullable_to_non_nullable
as NotificationDateFilter,hasPermission: null == hasPermission ? _value.hasPermission : hasPermission // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _$LoadedImpl  implements Loaded {
  const _$LoadedImpl({required final  List<CNotification> notifications, this.filter = NotificationDateFilter.today, this.hasPermission = false}): _notifications = notifications;

  

 final  List<CNotification> _notifications;
@override List<CNotification> get notifications {
  if (_notifications is EqualUnmodifiableListView) return _notifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notifications);
}

@override@JsonKey() final  NotificationDateFilter filter;
@override@JsonKey() final  bool hasPermission;

@override
String toString() {
  return 'NotificationState.loaded(notifications: $notifications, filter: $filter, hasPermission: $hasPermission)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadedImpl&&const DeepCollectionEquality().equals(other._notifications, _notifications)&&(identical(other.filter, filter) || other.filter == filter)&&(identical(other.hasPermission, hasPermission) || other.hasPermission == hasPermission));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_notifications),filter,hasPermission);

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);








}


abstract class Loaded implements NotificationState {
  const factory Loaded({required final  List<CNotification> notifications, final  NotificationDateFilter filter, final  bool hasPermission}) = _$LoadedImpl;
  

  

@override List<CNotification> get notifications;@override NotificationDateFilter get filter;@override bool get hasPermission;
/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $NotificationStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String message, List<CNotification> notifications, NotificationDateFilter filter, bool hasPermission
});



}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$NotificationStateCopyWithImpl<$Res, _$ErrorImpl> implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);


/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? notifications = null,Object? filter = null,Object? hasPermission = null,}) {
  return _then(_$ErrorImpl(
message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,notifications: null == notifications ? _value._notifications : notifications // ignore: cast_nullable_to_non_nullable
as List<CNotification>,filter: null == filter ? _value.filter : filter // ignore: cast_nullable_to_non_nullable
as NotificationDateFilter,hasPermission: null == hasPermission ? _value.hasPermission : hasPermission // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _$ErrorImpl  implements Error {
  const _$ErrorImpl({required this.message, final  List<CNotification> notifications = const [], this.filter = NotificationDateFilter.today, this.hasPermission = false}): _notifications = notifications;

  

@override final  String message;
 final  List<CNotification> _notifications;
@override@JsonKey() List<CNotification> get notifications {
  if (_notifications is EqualUnmodifiableListView) return _notifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notifications);
}

@override@JsonKey() final  NotificationDateFilter filter;
@override@JsonKey() final  bool hasPermission;

@override
String toString() {
  return 'NotificationState.error(message: $message, notifications: $notifications, filter: $filter, hasPermission: $hasPermission)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ErrorImpl&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._notifications, _notifications)&&(identical(other.filter, filter) || other.filter == filter)&&(identical(other.hasPermission, hasPermission) || other.hasPermission == hasPermission));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(_notifications),filter,hasPermission);

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);








}


abstract class Error implements NotificationState {
  const factory Error({required final  String message, final  List<CNotification> notifications, final  NotificationDateFilter filter, final  bool hasPermission}) = _$ErrorImpl;
  

  

 String get message;@override List<CNotification> get notifications;@override NotificationDateFilter get filter;@override bool get hasPermission;
/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
