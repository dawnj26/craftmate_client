// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditProfileEvent {










}

/// @nodoc
abstract class $EditProfileEventCopyWith<$Res>  {
  factory $EditProfileEventCopyWith(EditProfileEvent value, $Res Function(EditProfileEvent) then) = _$EditProfileEventCopyWithImpl<$Res, EditProfileEvent>;



}

/// @nodoc
class _$EditProfileEventCopyWithImpl<$Res,$Val extends EditProfileEvent> implements $EditProfileEventCopyWith<$Res> {
  _$EditProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of EditProfileEvent
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$UserChangedImplCopyWith<$Res>  {
  factory _$$UserChangedImplCopyWith(_$UserChangedImpl value, $Res Function(_$UserChangedImpl) then) = __$$UserChangedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 User user
});


$UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserChangedImplCopyWithImpl<$Res> extends _$EditProfileEventCopyWithImpl<$Res, _$UserChangedImpl> implements _$$UserChangedImplCopyWith<$Res> {
  __$$UserChangedImplCopyWithImpl(_$UserChangedImpl _value, $Res Function(_$UserChangedImpl) _then)
      : super(_value, _then);


/// Create a copy of EditProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,}) {
  return _then(_$UserChangedImpl(
user: null == user ? _value.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}

/// Create a copy of EditProfileEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_value.user, (value) {
    return _then(_value.copyWith(user: value) );
  });
}
}

/// @nodoc


class _$UserChangedImpl  implements _UserChanged {
  const _$UserChangedImpl({required this.user});

  

@override final  User user;

@override
String toString() {
  return 'EditProfileEvent.userChanged(user: $user)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$UserChangedImpl&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

/// Create a copy of EditProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$UserChangedImplCopyWith<_$UserChangedImpl> get copyWith => __$$UserChangedImplCopyWithImpl<_$UserChangedImpl>(this, _$identity);








}


abstract class _UserChanged implements EditProfileEvent {
  const factory _UserChanged({required final  User user}) = _$UserChangedImpl;
  

  

 User get user;
/// Create a copy of EditProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$UserChangedImplCopyWith<_$UserChangedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$PhotoUploadedImplCopyWith<$Res>  {
  factory _$$PhotoUploadedImplCopyWith(_$PhotoUploadedImpl value, $Res Function(_$PhotoUploadedImpl) then) = __$$PhotoUploadedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String filePath
});



}

/// @nodoc
class __$$PhotoUploadedImplCopyWithImpl<$Res> extends _$EditProfileEventCopyWithImpl<$Res, _$PhotoUploadedImpl> implements _$$PhotoUploadedImplCopyWith<$Res> {
  __$$PhotoUploadedImplCopyWithImpl(_$PhotoUploadedImpl _value, $Res Function(_$PhotoUploadedImpl) _then)
      : super(_value, _then);


/// Create a copy of EditProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? filePath = null,}) {
  return _then(_$PhotoUploadedImpl(
filePath: null == filePath ? _value.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$PhotoUploadedImpl  implements _PhotoUploaded {
  const _$PhotoUploadedImpl({required this.filePath});

  

@override final  String filePath;

@override
String toString() {
  return 'EditProfileEvent.photoUploaded(filePath: $filePath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$PhotoUploadedImpl&&(identical(other.filePath, filePath) || other.filePath == filePath));
}


@override
int get hashCode => Object.hash(runtimeType,filePath);

/// Create a copy of EditProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$PhotoUploadedImplCopyWith<_$PhotoUploadedImpl> get copyWith => __$$PhotoUploadedImplCopyWithImpl<_$PhotoUploadedImpl>(this, _$identity);








}


abstract class _PhotoUploaded implements EditProfileEvent {
  const factory _PhotoUploaded({required final  String filePath}) = _$PhotoUploadedImpl;
  

  

 String get filePath;
/// Create a copy of EditProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$PhotoUploadedImplCopyWith<_$PhotoUploadedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
mixin _$EditProfileState {

 User get user => throw _privateConstructorUsedError;







/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$EditProfileStateCopyWith<EditProfileState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $EditProfileStateCopyWith<$Res>  {
  factory $EditProfileStateCopyWith(EditProfileState value, $Res Function(EditProfileState) then) = _$EditProfileStateCopyWithImpl<$Res, EditProfileState>;
@useResult
$Res call({
 User user
});


$UserCopyWith<$Res> get user;
}

/// @nodoc
class _$EditProfileStateCopyWithImpl<$Res,$Val extends EditProfileState> implements $EditProfileStateCopyWith<$Res> {
  _$EditProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,}) {
  return _then(_value.copyWith(
user: null == user ? _value.user : user // ignore: cast_nullable_to_non_nullable
as User,
  )as $Val);
}
/// Create a copy of EditProfileState
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
abstract class _$$InitialImplCopyWith<$Res> implements $EditProfileStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 User user
});


@override $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$EditProfileStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of EditProfileState
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
  return 'EditProfileState.initial(user: $user)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements EditProfileState {
  const factory Initial({final  User user}) = _$InitialImpl;
  

  

@override User get user;
/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> implements $EditProfileStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl value, $Res Function(_$LoadingImpl) then) = __$$LoadingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 User user
});


@override $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$EditProfileStateCopyWithImpl<$Res, _$LoadingImpl> implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);


/// Create a copy of EditProfileState
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
  return 'EditProfileState.loading(user: $user)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadingImpl&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);








}


abstract class Loading implements EditProfileState {
  const factory Loading({final  User user}) = _$LoadingImpl;
  

  

@override User get user;
/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $EditProfileStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(_$LoadedImpl value, $Res Function(_$LoadedImpl) then) = __$$LoadedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 User user
});


@override $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res> extends _$EditProfileStateCopyWithImpl<$Res, _$LoadedImpl> implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(_$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);


/// Create a copy of EditProfileState
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
  const _$LoadedImpl({required this.user});

  

@override final  User user;

@override
String toString() {
  return 'EditProfileState.loaded(user: $user)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadedImpl&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);








}


abstract class Loaded implements EditProfileState {
  const factory Loaded({required final  User user}) = _$LoadedImpl;
  

  

@override User get user;
/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$UploadingImplCopyWith<$Res> implements $EditProfileStateCopyWith<$Res> {
  factory _$$UploadingImplCopyWith(_$UploadingImpl value, $Res Function(_$UploadingImpl) then) = __$$UploadingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 User user
});


@override $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UploadingImplCopyWithImpl<$Res> extends _$EditProfileStateCopyWithImpl<$Res, _$UploadingImpl> implements _$$UploadingImplCopyWith<$Res> {
  __$$UploadingImplCopyWithImpl(_$UploadingImpl _value, $Res Function(_$UploadingImpl) _then)
      : super(_value, _then);


/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,}) {
  return _then(_$UploadingImpl(
user: null == user ? _value.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}


}

/// @nodoc


class _$UploadingImpl  implements Uploading {
  const _$UploadingImpl({this.user = const User()});

  

@override@JsonKey() final  User user;

@override
String toString() {
  return 'EditProfileState.uploading(user: $user)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$UploadingImpl&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$UploadingImplCopyWith<_$UploadingImpl> get copyWith => __$$UploadingImplCopyWithImpl<_$UploadingImpl>(this, _$identity);








}


abstract class Uploading implements EditProfileState {
  const factory Uploading({final  User user}) = _$UploadingImpl;
  

  

@override User get user;
/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$UploadingImplCopyWith<_$UploadingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$UploadedImplCopyWith<$Res> implements $EditProfileStateCopyWith<$Res> {
  factory _$$UploadedImplCopyWith(_$UploadedImpl value, $Res Function(_$UploadedImpl) then) = __$$UploadedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 User user
});


@override $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UploadedImplCopyWithImpl<$Res> extends _$EditProfileStateCopyWithImpl<$Res, _$UploadedImpl> implements _$$UploadedImplCopyWith<$Res> {
  __$$UploadedImplCopyWithImpl(_$UploadedImpl _value, $Res Function(_$UploadedImpl) _then)
      : super(_value, _then);


/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,}) {
  return _then(_$UploadedImpl(
user: null == user ? _value.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}


}

/// @nodoc


class _$UploadedImpl  implements Uploaded {
  const _$UploadedImpl({required this.user});

  

@override final  User user;

@override
String toString() {
  return 'EditProfileState.uploaded(user: $user)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$UploadedImpl&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$UploadedImplCopyWith<_$UploadedImpl> get copyWith => __$$UploadedImplCopyWithImpl<_$UploadedImpl>(this, _$identity);








}


abstract class Uploaded implements EditProfileState {
  const factory Uploaded({required final  User user}) = _$UploadedImpl;
  

  

@override User get user;
/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$UploadedImplCopyWith<_$UploadedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $EditProfileStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String message, User user
});


@override $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$EditProfileStateCopyWithImpl<$Res, _$ErrorImpl> implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);


/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? user = null,}) {
  return _then(_$ErrorImpl(
message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _value.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}


}

/// @nodoc


class _$ErrorImpl  implements Error {
  const _$ErrorImpl({required this.message, this.user = const User()});

  

@override final  String message;
@override@JsonKey() final  User user;

@override
String toString() {
  return 'EditProfileState.error(message: $message, user: $user)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ErrorImpl&&(identical(other.message, message) || other.message == message)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,message,user);

/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);








}


abstract class Error implements EditProfileState {
  const factory Error({required final  String message, final  User user}) = _$ErrorImpl;
  

  

 String get message;@override User get user;
/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
