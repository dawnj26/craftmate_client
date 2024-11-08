// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_bio_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditBioEvent {










}

/// @nodoc
abstract class $EditBioEventCopyWith<$Res>  {
  factory $EditBioEventCopyWith(EditBioEvent value, $Res Function(EditBioEvent) then) = _$EditBioEventCopyWithImpl<$Res, EditBioEvent>;



}

/// @nodoc
class _$EditBioEventCopyWithImpl<$Res,$Val extends EditBioEvent> implements $EditBioEventCopyWith<$Res> {
  _$EditBioEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of EditBioEvent
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$BioChangedImplCopyWith<$Res>  {
  factory _$$BioChangedImplCopyWith(_$BioChangedImpl value, $Res Function(_$BioChangedImpl) then) = __$$BioChangedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String bio
});



}

/// @nodoc
class __$$BioChangedImplCopyWithImpl<$Res> extends _$EditBioEventCopyWithImpl<$Res, _$BioChangedImpl> implements _$$BioChangedImplCopyWith<$Res> {
  __$$BioChangedImplCopyWithImpl(_$BioChangedImpl _value, $Res Function(_$BioChangedImpl) _then)
      : super(_value, _then);


/// Create a copy of EditBioEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bio = null,}) {
  return _then(_$BioChangedImpl(
null == bio ? _value.bio : bio // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$BioChangedImpl  implements _BioChanged {
  const _$BioChangedImpl(this.bio);

  

@override final  String bio;

@override
String toString() {
  return 'EditBioEvent.bioChanged(bio: $bio)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$BioChangedImpl&&(identical(other.bio, bio) || other.bio == bio));
}


@override
int get hashCode => Object.hash(runtimeType,bio);

/// Create a copy of EditBioEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$BioChangedImplCopyWith<_$BioChangedImpl> get copyWith => __$$BioChangedImplCopyWithImpl<_$BioChangedImpl>(this, _$identity);








}


abstract class _BioChanged implements EditBioEvent {
  const factory _BioChanged(final  String bio) = _$BioChangedImpl;
  

  

 String get bio;
/// Create a copy of EditBioEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$BioChangedImplCopyWith<_$BioChangedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$BioSavedImplCopyWith<$Res>  {
  factory _$$BioSavedImplCopyWith(_$BioSavedImpl value, $Res Function(_$BioSavedImpl) then) = __$$BioSavedImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$BioSavedImplCopyWithImpl<$Res> extends _$EditBioEventCopyWithImpl<$Res, _$BioSavedImpl> implements _$$BioSavedImplCopyWith<$Res> {
  __$$BioSavedImplCopyWithImpl(_$BioSavedImpl _value, $Res Function(_$BioSavedImpl) _then)
      : super(_value, _then);


/// Create a copy of EditBioEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$BioSavedImpl  implements _BioSaved {
  const _$BioSavedImpl();

  



@override
String toString() {
  return 'EditBioEvent.bioSaved()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$BioSavedImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _BioSaved implements EditBioEvent {
  const factory _BioSaved() = _$BioSavedImpl;
  

  



}

/// @nodoc
mixin _$EditBioState {

 String get bio => throw _privateConstructorUsedError; bool get isBioChanged => throw _privateConstructorUsedError;







/// Create a copy of EditBioState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$EditBioStateCopyWith<EditBioState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $EditBioStateCopyWith<$Res>  {
  factory $EditBioStateCopyWith(EditBioState value, $Res Function(EditBioState) then) = _$EditBioStateCopyWithImpl<$Res, EditBioState>;
@useResult
$Res call({
 String bio, bool isBioChanged
});



}

/// @nodoc
class _$EditBioStateCopyWithImpl<$Res,$Val extends EditBioState> implements $EditBioStateCopyWith<$Res> {
  _$EditBioStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of EditBioState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bio = null,Object? isBioChanged = null,}) {
  return _then(_value.copyWith(
bio: null == bio ? _value.bio : bio // ignore: cast_nullable_to_non_nullable
as String,isBioChanged: null == isBioChanged ? _value.isBioChanged : isBioChanged // ignore: cast_nullable_to_non_nullable
as bool,
  )as $Val);
}

}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $EditBioStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String bio, bool isBioChanged
});



}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$EditBioStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of EditBioState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bio = null,Object? isBioChanged = null,}) {
  return _then(_$InitialImpl(
bio: null == bio ? _value.bio : bio // ignore: cast_nullable_to_non_nullable
as String,isBioChanged: null == isBioChanged ? _value.isBioChanged : isBioChanged // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl({this.bio = '', this.isBioChanged = false});

  

@override@JsonKey() final  String bio;
@override@JsonKey() final  bool isBioChanged;

@override
String toString() {
  return 'EditBioState.initial(bio: $bio, isBioChanged: $isBioChanged)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.isBioChanged, isBioChanged) || other.isBioChanged == isBioChanged));
}


@override
int get hashCode => Object.hash(runtimeType,bio,isBioChanged);

/// Create a copy of EditBioState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements EditBioState {
  const factory Initial({final  String bio, final  bool isBioChanged}) = _$InitialImpl;
  

  

@override String get bio;@override bool get isBioChanged;
/// Create a copy of EditBioState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$SavingImplCopyWith<$Res> implements $EditBioStateCopyWith<$Res> {
  factory _$$SavingImplCopyWith(_$SavingImpl value, $Res Function(_$SavingImpl) then) = __$$SavingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String bio, bool isBioChanged
});



}

/// @nodoc
class __$$SavingImplCopyWithImpl<$Res> extends _$EditBioStateCopyWithImpl<$Res, _$SavingImpl> implements _$$SavingImplCopyWith<$Res> {
  __$$SavingImplCopyWithImpl(_$SavingImpl _value, $Res Function(_$SavingImpl) _then)
      : super(_value, _then);


/// Create a copy of EditBioState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bio = null,Object? isBioChanged = null,}) {
  return _then(_$SavingImpl(
bio: null == bio ? _value.bio : bio // ignore: cast_nullable_to_non_nullable
as String,isBioChanged: null == isBioChanged ? _value.isBioChanged : isBioChanged // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _$SavingImpl  implements Saving {
  const _$SavingImpl({this.bio = '', this.isBioChanged = false});

  

@override@JsonKey() final  String bio;
@override@JsonKey() final  bool isBioChanged;

@override
String toString() {
  return 'EditBioState.saving(bio: $bio, isBioChanged: $isBioChanged)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SavingImpl&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.isBioChanged, isBioChanged) || other.isBioChanged == isBioChanged));
}


@override
int get hashCode => Object.hash(runtimeType,bio,isBioChanged);

/// Create a copy of EditBioState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$SavingImplCopyWith<_$SavingImpl> get copyWith => __$$SavingImplCopyWithImpl<_$SavingImpl>(this, _$identity);








}


abstract class Saving implements EditBioState {
  const factory Saving({final  String bio, final  bool isBioChanged}) = _$SavingImpl;
  

  

@override String get bio;@override bool get isBioChanged;
/// Create a copy of EditBioState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$SavingImplCopyWith<_$SavingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$SavedImplCopyWith<$Res> implements $EditBioStateCopyWith<$Res> {
  factory _$$SavedImplCopyWith(_$SavedImpl value, $Res Function(_$SavedImpl) then) = __$$SavedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String bio, bool isBioChanged, User user
});


$UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$SavedImplCopyWithImpl<$Res> extends _$EditBioStateCopyWithImpl<$Res, _$SavedImpl> implements _$$SavedImplCopyWith<$Res> {
  __$$SavedImplCopyWithImpl(_$SavedImpl _value, $Res Function(_$SavedImpl) _then)
      : super(_value, _then);


/// Create a copy of EditBioState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bio = null,Object? isBioChanged = null,Object? user = null,}) {
  return _then(_$SavedImpl(
bio: null == bio ? _value.bio : bio // ignore: cast_nullable_to_non_nullable
as String,isBioChanged: null == isBioChanged ? _value.isBioChanged : isBioChanged // ignore: cast_nullable_to_non_nullable
as bool,user: null == user ? _value.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}

/// Create a copy of EditBioState
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
  const _$SavedImpl({this.bio = '', this.isBioChanged = false, required this.user});

  

@override@JsonKey() final  String bio;
@override@JsonKey() final  bool isBioChanged;
@override final  User user;

@override
String toString() {
  return 'EditBioState.saved(bio: $bio, isBioChanged: $isBioChanged, user: $user)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SavedImpl&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.isBioChanged, isBioChanged) || other.isBioChanged == isBioChanged)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,bio,isBioChanged,user);

/// Create a copy of EditBioState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$SavedImplCopyWith<_$SavedImpl> get copyWith => __$$SavedImplCopyWithImpl<_$SavedImpl>(this, _$identity);








}


abstract class Saved implements EditBioState {
  const factory Saved({final  String bio, final  bool isBioChanged, required final  User user}) = _$SavedImpl;
  

  

@override String get bio;@override bool get isBioChanged; User get user;
/// Create a copy of EditBioState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$SavedImplCopyWith<_$SavedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $EditBioStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String message, String bio, bool isBioChanged
});



}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$EditBioStateCopyWithImpl<$Res, _$ErrorImpl> implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);


/// Create a copy of EditBioState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? bio = null,Object? isBioChanged = null,}) {
  return _then(_$ErrorImpl(
message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,bio: null == bio ? _value.bio : bio // ignore: cast_nullable_to_non_nullable
as String,isBioChanged: null == isBioChanged ? _value.isBioChanged : isBioChanged // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _$ErrorImpl  implements Error {
  const _$ErrorImpl({required this.message, this.bio = '', this.isBioChanged = false});

  

@override final  String message;
@override@JsonKey() final  String bio;
@override@JsonKey() final  bool isBioChanged;

@override
String toString() {
  return 'EditBioState.error(message: $message, bio: $bio, isBioChanged: $isBioChanged)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ErrorImpl&&(identical(other.message, message) || other.message == message)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.isBioChanged, isBioChanged) || other.isBioChanged == isBioChanged));
}


@override
int get hashCode => Object.hash(runtimeType,message,bio,isBioChanged);

/// Create a copy of EditBioState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);








}


abstract class Error implements EditBioState {
  const factory Error({required final  String message, final  String bio, final  bool isBioChanged}) = _$ErrorImpl;
  

  

 String get message;@override String get bio;@override bool get isBioChanged;
/// Create a copy of EditBioState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
