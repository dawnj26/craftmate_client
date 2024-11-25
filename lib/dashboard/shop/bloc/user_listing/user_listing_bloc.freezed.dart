// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_listing_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserListingEvent {

 int get userId => throw _privateConstructorUsedError;







/// Create a copy of UserListingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$UserListingEventCopyWith<UserListingEvent> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $UserListingEventCopyWith<$Res>  {
  factory $UserListingEventCopyWith(UserListingEvent value, $Res Function(UserListingEvent) then) = _$UserListingEventCopyWithImpl<$Res, UserListingEvent>;
@useResult
$Res call({
 int userId
});



}

/// @nodoc
class _$UserListingEventCopyWithImpl<$Res,$Val extends UserListingEvent> implements $UserListingEventCopyWith<$Res> {
  _$UserListingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of UserListingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,}) {
  return _then(_value.copyWith(
userId: null == userId ? _value.userId : userId // ignore: cast_nullable_to_non_nullable
as int,
  )as $Val);
}

}


/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> implements $UserListingEventCopyWith<$Res> {
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) = __$$StartedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 int userId
});



}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res> extends _$UserListingEventCopyWithImpl<$Res, _$StartedImpl> implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(_$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);


/// Create a copy of UserListingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,}) {
  return _then(_$StartedImpl(
null == userId ? _value.userId : userId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _$StartedImpl  implements _Started {
  const _$StartedImpl(this.userId);

  

@override final  int userId;

@override
String toString() {
  return 'UserListingEvent.started(userId: $userId)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StartedImpl&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

/// Create a copy of UserListingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$StartedImplCopyWith<_$StartedImpl> get copyWith => __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);








}


abstract class _Started implements UserListingEvent {
  const factory _Started(final  int userId) = _$StartedImpl;
  

  

@override int get userId;
/// Create a copy of UserListingEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$StartedImplCopyWith<_$StartedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
mixin _$UserListingState {

 List<QueryProduct> get query => throw _privateConstructorUsedError;







/// Create a copy of UserListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$UserListingStateCopyWith<UserListingState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $UserListingStateCopyWith<$Res>  {
  factory $UserListingStateCopyWith(UserListingState value, $Res Function(UserListingState) then) = _$UserListingStateCopyWithImpl<$Res, UserListingState>;
@useResult
$Res call({
 List<QueryProduct> query
});



}

/// @nodoc
class _$UserListingStateCopyWithImpl<$Res,$Val extends UserListingState> implements $UserListingStateCopyWith<$Res> {
  _$UserListingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of UserListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,}) {
  return _then(_value.copyWith(
query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,
  )as $Val);
}

}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $UserListingStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<QueryProduct> query
});



}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$UserListingStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of UserListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,}) {
  return _then(_$InitialImpl(
query: null == query ? _value._query : query // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl({final  List<QueryProduct> query = const []}): _query = query;

  

 final  List<QueryProduct> _query;
@override@JsonKey() List<QueryProduct> get query {
  if (_query is EqualUnmodifiableListView) return _query;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_query);
}


@override
String toString() {
  return 'UserListingState.initial(query: $query)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&const DeepCollectionEquality().equals(other._query, _query));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_query));

/// Create a copy of UserListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements UserListingState {
  const factory Initial({final  List<QueryProduct> query}) = _$InitialImpl;
  

  

@override List<QueryProduct> get query;
/// Create a copy of UserListingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> implements $UserListingStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl value, $Res Function(_$LoadingImpl) then) = __$$LoadingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<QueryProduct> query
});



}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$UserListingStateCopyWithImpl<$Res, _$LoadingImpl> implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);


/// Create a copy of UserListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,}) {
  return _then(_$LoadingImpl(
query: null == query ? _value._query : query // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,
  ));
}


}

/// @nodoc


class _$LoadingImpl  implements Loading {
  const _$LoadingImpl({final  List<QueryProduct> query = const []}): _query = query;

  

 final  List<QueryProduct> _query;
@override@JsonKey() List<QueryProduct> get query {
  if (_query is EqualUnmodifiableListView) return _query;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_query);
}


@override
String toString() {
  return 'UserListingState.loading(query: $query)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadingImpl&&const DeepCollectionEquality().equals(other._query, _query));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_query));

/// Create a copy of UserListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);








}


abstract class Loading implements UserListingState {
  const factory Loading({final  List<QueryProduct> query}) = _$LoadingImpl;
  

  

@override List<QueryProduct> get query;
/// Create a copy of UserListingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $UserListingStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(_$LoadedImpl value, $Res Function(_$LoadedImpl) then) = __$$LoadedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<QueryProduct> query
});



}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res> extends _$UserListingStateCopyWithImpl<$Res, _$LoadedImpl> implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(_$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);


/// Create a copy of UserListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,}) {
  return _then(_$LoadedImpl(
query: null == query ? _value._query : query // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,
  ));
}


}

/// @nodoc


class _$LoadedImpl  implements Loaded {
  const _$LoadedImpl({final  List<QueryProduct> query = const []}): _query = query;

  

 final  List<QueryProduct> _query;
@override@JsonKey() List<QueryProduct> get query {
  if (_query is EqualUnmodifiableListView) return _query;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_query);
}


@override
String toString() {
  return 'UserListingState.loaded(query: $query)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadedImpl&&const DeepCollectionEquality().equals(other._query, _query));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_query));

/// Create a copy of UserListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);








}


abstract class Loaded implements UserListingState {
  const factory Loaded({final  List<QueryProduct> query}) = _$LoadedImpl;
  

  

@override List<QueryProduct> get query;
/// Create a copy of UserListingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $UserListingStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String message, List<QueryProduct> query
});



}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$UserListingStateCopyWithImpl<$Res, _$ErrorImpl> implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);


/// Create a copy of UserListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? query = null,}) {
  return _then(_$ErrorImpl(
message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,query: null == query ? _value._query : query // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,
  ));
}


}

/// @nodoc


class _$ErrorImpl  implements Error {
  const _$ErrorImpl({required this.message, final  List<QueryProduct> query = const []}): _query = query;

  

@override final  String message;
 final  List<QueryProduct> _query;
@override@JsonKey() List<QueryProduct> get query {
  if (_query is EqualUnmodifiableListView) return _query;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_query);
}


@override
String toString() {
  return 'UserListingState.error(message: $message, query: $query)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ErrorImpl&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._query, _query));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(_query));

/// Create a copy of UserListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);








}


abstract class Error implements UserListingState {
  const factory Error({required final  String message, final  List<QueryProduct> query}) = _$ErrorImpl;
  

  

 String get message;@override List<QueryProduct> get query;
/// Create a copy of UserListingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
