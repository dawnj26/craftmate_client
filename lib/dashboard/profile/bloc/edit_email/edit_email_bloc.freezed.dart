// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_email_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditEmailEvent {










}

/// @nodoc
abstract class $EditEmailEventCopyWith<$Res>  {
  factory $EditEmailEventCopyWith(EditEmailEvent value, $Res Function(EditEmailEvent) then) = _$EditEmailEventCopyWithImpl<$Res, EditEmailEvent>;



}

/// @nodoc
class _$EditEmailEventCopyWithImpl<$Res,$Val extends EditEmailEvent> implements $EditEmailEventCopyWith<$Res> {
  _$EditEmailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of EditEmailEvent
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$EmailChangedImplCopyWith<$Res>  {
  factory _$$EmailChangedImplCopyWith(_$EmailChangedImpl value, $Res Function(_$EmailChangedImpl) then) = __$$EmailChangedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String email
});



}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res> extends _$EditEmailEventCopyWithImpl<$Res, _$EmailChangedImpl> implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(_$EmailChangedImpl _value, $Res Function(_$EmailChangedImpl) _then)
      : super(_value, _then);


/// Create a copy of EditEmailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,}) {
  return _then(_$EmailChangedImpl(
null == email ? _value.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$EmailChangedImpl  implements _EmailChanged {
  const _$EmailChangedImpl(this.email);

  

@override final  String email;

@override
String toString() {
  return 'EditEmailEvent.emailChanged(email: $email)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$EmailChangedImpl&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

/// Create a copy of EditEmailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith => __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);








}


abstract class _EmailChanged implements EditEmailEvent {
  const factory _EmailChanged(final  String email) = _$EmailChangedImpl;
  

  

 String get email;
/// Create a copy of EditEmailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$EmailSavedImplCopyWith<$Res>  {
  factory _$$EmailSavedImplCopyWith(_$EmailSavedImpl value, $Res Function(_$EmailSavedImpl) then) = __$$EmailSavedImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$EmailSavedImplCopyWithImpl<$Res> extends _$EditEmailEventCopyWithImpl<$Res, _$EmailSavedImpl> implements _$$EmailSavedImplCopyWith<$Res> {
  __$$EmailSavedImplCopyWithImpl(_$EmailSavedImpl _value, $Res Function(_$EmailSavedImpl) _then)
      : super(_value, _then);


/// Create a copy of EditEmailEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$EmailSavedImpl  implements _EmailSaved {
  const _$EmailSavedImpl();

  



@override
String toString() {
  return 'EditEmailEvent.emailSaved()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$EmailSavedImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _EmailSaved implements EditEmailEvent {
  const factory _EmailSaved() = _$EmailSavedImpl;
  

  



}

/// @nodoc
mixin _$EditEmailState {

 String get email => throw _privateConstructorUsedError; bool get isEmailValid => throw _privateConstructorUsedError; bool get isEmailChanged => throw _privateConstructorUsedError;







/// Create a copy of EditEmailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$EditEmailStateCopyWith<EditEmailState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $EditEmailStateCopyWith<$Res>  {
  factory $EditEmailStateCopyWith(EditEmailState value, $Res Function(EditEmailState) then) = _$EditEmailStateCopyWithImpl<$Res, EditEmailState>;
@useResult
$Res call({
 String email, bool isEmailValid, bool isEmailChanged
});



}

/// @nodoc
class _$EditEmailStateCopyWithImpl<$Res,$Val extends EditEmailState> implements $EditEmailStateCopyWith<$Res> {
  _$EditEmailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of EditEmailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? isEmailValid = null,Object? isEmailChanged = null,}) {
  return _then(_value.copyWith(
email: null == email ? _value.email : email // ignore: cast_nullable_to_non_nullable
as String,isEmailValid: null == isEmailValid ? _value.isEmailValid : isEmailValid // ignore: cast_nullable_to_non_nullable
as bool,isEmailChanged: null == isEmailChanged ? _value.isEmailChanged : isEmailChanged // ignore: cast_nullable_to_non_nullable
as bool,
  )as $Val);
}

}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $EditEmailStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String email, bool isEmailValid, bool isEmailChanged
});



}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$EditEmailStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of EditEmailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? isEmailValid = null,Object? isEmailChanged = null,}) {
  return _then(_$InitialImpl(
email: null == email ? _value.email : email // ignore: cast_nullable_to_non_nullable
as String,isEmailValid: null == isEmailValid ? _value.isEmailValid : isEmailValid // ignore: cast_nullable_to_non_nullable
as bool,isEmailChanged: null == isEmailChanged ? _value.isEmailChanged : isEmailChanged // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl({this.email = '', this.isEmailValid = true, this.isEmailChanged = false});

  

@override@JsonKey() final  String email;
@override@JsonKey() final  bool isEmailValid;
@override@JsonKey() final  bool isEmailChanged;

@override
String toString() {
  return 'EditEmailState.initial(email: $email, isEmailValid: $isEmailValid, isEmailChanged: $isEmailChanged)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&(identical(other.email, email) || other.email == email)&&(identical(other.isEmailValid, isEmailValid) || other.isEmailValid == isEmailValid)&&(identical(other.isEmailChanged, isEmailChanged) || other.isEmailChanged == isEmailChanged));
}


@override
int get hashCode => Object.hash(runtimeType,email,isEmailValid,isEmailChanged);

/// Create a copy of EditEmailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements EditEmailState {
  const factory Initial({final  String email, final  bool isEmailValid, final  bool isEmailChanged}) = _$InitialImpl;
  

  

@override String get email;@override bool get isEmailValid;@override bool get isEmailChanged;
/// Create a copy of EditEmailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$SavingImplCopyWith<$Res> implements $EditEmailStateCopyWith<$Res> {
  factory _$$SavingImplCopyWith(_$SavingImpl value, $Res Function(_$SavingImpl) then) = __$$SavingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String email, bool isEmailValid, bool isEmailChanged
});



}

/// @nodoc
class __$$SavingImplCopyWithImpl<$Res> extends _$EditEmailStateCopyWithImpl<$Res, _$SavingImpl> implements _$$SavingImplCopyWith<$Res> {
  __$$SavingImplCopyWithImpl(_$SavingImpl _value, $Res Function(_$SavingImpl) _then)
      : super(_value, _then);


/// Create a copy of EditEmailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? isEmailValid = null,Object? isEmailChanged = null,}) {
  return _then(_$SavingImpl(
email: null == email ? _value.email : email // ignore: cast_nullable_to_non_nullable
as String,isEmailValid: null == isEmailValid ? _value.isEmailValid : isEmailValid // ignore: cast_nullable_to_non_nullable
as bool,isEmailChanged: null == isEmailChanged ? _value.isEmailChanged : isEmailChanged // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _$SavingImpl  implements Saving {
  const _$SavingImpl({this.email = '', this.isEmailValid = true, this.isEmailChanged = false});

  

@override@JsonKey() final  String email;
@override@JsonKey() final  bool isEmailValid;
@override@JsonKey() final  bool isEmailChanged;

@override
String toString() {
  return 'EditEmailState.saving(email: $email, isEmailValid: $isEmailValid, isEmailChanged: $isEmailChanged)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SavingImpl&&(identical(other.email, email) || other.email == email)&&(identical(other.isEmailValid, isEmailValid) || other.isEmailValid == isEmailValid)&&(identical(other.isEmailChanged, isEmailChanged) || other.isEmailChanged == isEmailChanged));
}


@override
int get hashCode => Object.hash(runtimeType,email,isEmailValid,isEmailChanged);

/// Create a copy of EditEmailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$SavingImplCopyWith<_$SavingImpl> get copyWith => __$$SavingImplCopyWithImpl<_$SavingImpl>(this, _$identity);








}


abstract class Saving implements EditEmailState {
  const factory Saving({final  String email, final  bool isEmailValid, final  bool isEmailChanged}) = _$SavingImpl;
  

  

@override String get email;@override bool get isEmailValid;@override bool get isEmailChanged;
/// Create a copy of EditEmailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$SavingImplCopyWith<_$SavingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$SavedImplCopyWith<$Res> implements $EditEmailStateCopyWith<$Res> {
  factory _$$SavedImplCopyWith(_$SavedImpl value, $Res Function(_$SavedImpl) then) = __$$SavedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String email, bool isEmailValid, bool isEmailChanged, User user
});


$UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$SavedImplCopyWithImpl<$Res> extends _$EditEmailStateCopyWithImpl<$Res, _$SavedImpl> implements _$$SavedImplCopyWith<$Res> {
  __$$SavedImplCopyWithImpl(_$SavedImpl _value, $Res Function(_$SavedImpl) _then)
      : super(_value, _then);


/// Create a copy of EditEmailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? isEmailValid = null,Object? isEmailChanged = null,Object? user = null,}) {
  return _then(_$SavedImpl(
email: null == email ? _value.email : email // ignore: cast_nullable_to_non_nullable
as String,isEmailValid: null == isEmailValid ? _value.isEmailValid : isEmailValid // ignore: cast_nullable_to_non_nullable
as bool,isEmailChanged: null == isEmailChanged ? _value.isEmailChanged : isEmailChanged // ignore: cast_nullable_to_non_nullable
as bool,user: null == user ? _value.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}

/// Create a copy of EditEmailState
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


class _$SavedImpl  implements Saved {
  const _$SavedImpl({this.email = '', this.isEmailValid = true, this.isEmailChanged = false, required this.user});

  

@override@JsonKey() final  String email;
@override@JsonKey() final  bool isEmailValid;
@override@JsonKey() final  bool isEmailChanged;
@override final  User user;

@override
String toString() {
  return 'EditEmailState.saved(email: $email, isEmailValid: $isEmailValid, isEmailChanged: $isEmailChanged, user: $user)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SavedImpl&&(identical(other.email, email) || other.email == email)&&(identical(other.isEmailValid, isEmailValid) || other.isEmailValid == isEmailValid)&&(identical(other.isEmailChanged, isEmailChanged) || other.isEmailChanged == isEmailChanged)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,email,isEmailValid,isEmailChanged,user);

/// Create a copy of EditEmailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$SavedImplCopyWith<_$SavedImpl> get copyWith => __$$SavedImplCopyWithImpl<_$SavedImpl>(this, _$identity);








}


abstract class Saved implements EditEmailState {
  const factory Saved({final  String email, final  bool isEmailValid, final  bool isEmailChanged, required final  User user}) = _$SavedImpl;
  

  

@override String get email;@override bool get isEmailValid;@override bool get isEmailChanged; User get user;
/// Create a copy of EditEmailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$SavedImplCopyWith<_$SavedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $EditEmailStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String message, String email, bool isEmailValid, bool isEmailChanged
});



}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$EditEmailStateCopyWithImpl<$Res, _$ErrorImpl> implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);


/// Create a copy of EditEmailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? email = null,Object? isEmailValid = null,Object? isEmailChanged = null,}) {
  return _then(_$ErrorImpl(
message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _value.email : email // ignore: cast_nullable_to_non_nullable
as String,isEmailValid: null == isEmailValid ? _value.isEmailValid : isEmailValid // ignore: cast_nullable_to_non_nullable
as bool,isEmailChanged: null == isEmailChanged ? _value.isEmailChanged : isEmailChanged // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _$ErrorImpl  implements Error {
  const _$ErrorImpl({required this.message, this.email = '', this.isEmailValid = true, this.isEmailChanged = false});

  

@override final  String message;
@override@JsonKey() final  String email;
@override@JsonKey() final  bool isEmailValid;
@override@JsonKey() final  bool isEmailChanged;

@override
String toString() {
  return 'EditEmailState.error(message: $message, email: $email, isEmailValid: $isEmailValid, isEmailChanged: $isEmailChanged)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ErrorImpl&&(identical(other.message, message) || other.message == message)&&(identical(other.email, email) || other.email == email)&&(identical(other.isEmailValid, isEmailValid) || other.isEmailValid == isEmailValid)&&(identical(other.isEmailChanged, isEmailChanged) || other.isEmailChanged == isEmailChanged));
}


@override
int get hashCode => Object.hash(runtimeType,message,email,isEmailValid,isEmailChanged);

/// Create a copy of EditEmailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);








}


abstract class Error implements EditEmailState {
  const factory Error({required final  String message, final  String email, final  bool isEmailValid, final  bool isEmailChanged}) = _$ErrorImpl;
  

  

 String get message;@override String get email;@override bool get isEmailValid;@override bool get isEmailChanged;
/// Create a copy of EditEmailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
