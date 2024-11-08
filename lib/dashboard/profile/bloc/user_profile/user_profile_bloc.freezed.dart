// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserProfileEvent {










}

/// @nodoc
abstract class $UserProfileEventCopyWith<$Res>  {
  factory $UserProfileEventCopyWith(UserProfileEvent value, $Res Function(UserProfileEvent) then) = _$UserProfileEventCopyWithImpl<$Res, UserProfileEvent>;



}

/// @nodoc
class _$UserProfileEventCopyWithImpl<$Res,$Val extends UserProfileEvent> implements $UserProfileEventCopyWith<$Res> {
  _$UserProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of UserProfileEvent
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$LoadedProfileImplCopyWith<$Res>  {
  factory _$$LoadedProfileImplCopyWith(_$LoadedProfileImpl value, $Res Function(_$LoadedProfileImpl) then) = __$$LoadedProfileImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$LoadedProfileImplCopyWithImpl<$Res> extends _$UserProfileEventCopyWithImpl<$Res, _$LoadedProfileImpl> implements _$$LoadedProfileImplCopyWith<$Res> {
  __$$LoadedProfileImplCopyWithImpl(_$LoadedProfileImpl _value, $Res Function(_$LoadedProfileImpl) _then)
      : super(_value, _then);


/// Create a copy of UserProfileEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$LoadedProfileImpl  implements _LoadedProfile {
  const _$LoadedProfileImpl();

  



@override
String toString() {
  return 'UserProfileEvent.loadedProfile()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadedProfileImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _LoadedProfile implements UserProfileEvent {
  const factory _LoadedProfile() = _$LoadedProfileImpl;
  

  



}

/// @nodoc
mixin _$UserProfileState {

 User get user => throw _privateConstructorUsedError;







/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$UserProfileStateCopyWith<UserProfileState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $UserProfileStateCopyWith<$Res>  {
  factory $UserProfileStateCopyWith(UserProfileState value, $Res Function(UserProfileState) then) = _$UserProfileStateCopyWithImpl<$Res, UserProfileState>;
@useResult
$Res call({
 User user
});


$UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserProfileStateCopyWithImpl<$Res,$Val extends UserProfileState> implements $UserProfileStateCopyWith<$Res> {
  _$UserProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,}) {
  return _then(_value.copyWith(
user: null == user ? _value.user : user // ignore: cast_nullable_to_non_nullable
as User,
  )as $Val);
}
/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_value.user, (value) {
    return _then(_value.copyWith(user: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $UserProfileStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 User user
});


@override $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$UserProfileStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,}) {
  return _then(_$InitialImpl(
user: null == user ? _value.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl({this.user = const User()});

  

@override@JsonKey() final  User user;

@override
String toString() {
  return 'UserProfileState.initial(user: $user)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements UserProfileState {
  const factory Initial({final  User user}) = _$InitialImpl;
  

  

@override User get user;
/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> implements $UserProfileStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl value, $Res Function(_$LoadingImpl) then) = __$$LoadingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 User user
});


@override $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$UserProfileStateCopyWithImpl<$Res, _$LoadingImpl> implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);


/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,}) {
  return _then(_$LoadingImpl(
user: null == user ? _value.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}


}

/// @nodoc


class _$LoadingImpl  implements Loading {
  const _$LoadingImpl({this.user = const User()});

  

@override@JsonKey() final  User user;

@override
String toString() {
  return 'UserProfileState.loading(user: $user)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadingImpl&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);








}


abstract class Loading implements UserProfileState {
  const factory Loading({final  User user}) = _$LoadingImpl;
  

  

@override User get user;
/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $UserProfileStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(_$LoadedImpl value, $Res Function(_$LoadedImpl) then) = __$$LoadedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 User user
});


@override $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res> extends _$UserProfileStateCopyWithImpl<$Res, _$LoadedImpl> implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(_$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);


/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,}) {
  return _then(_$LoadedImpl(
user: null == user ? _value.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}


}

/// @nodoc


class _$LoadedImpl  implements Loaded {
  const _$LoadedImpl({this.user = const User()});

  

@override@JsonKey() final  User user;

@override
String toString() {
  return 'UserProfileState.loaded(user: $user)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadedImpl&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);








}


abstract class Loaded implements UserProfileState {
  const factory Loaded({final  User user}) = _$LoadedImpl;
  

  

@override User get user;
/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $UserProfileStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 User user, String message
});


@override $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$UserProfileStateCopyWithImpl<$Res, _$ErrorImpl> implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);


/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,Object? message = null,}) {
  return _then(_$ErrorImpl(
user: null == user ? _value.user : user // ignore: cast_nullable_to_non_nullable
as User,message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$ErrorImpl  implements Error {
  const _$ErrorImpl({this.user = const User(), required this.message});

  

@override@JsonKey() final  User user;
@override final  String message;

@override
String toString() {
  return 'UserProfileState.error(user: $user, message: $message)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ErrorImpl&&(identical(other.user, user) || other.user == user)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,user,message);

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);








}


abstract class Error implements UserProfileState {
  const factory Error({final  User user, required final  String message}) = _$ErrorImpl;
  

  

@override User get user; String get message;
/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
