// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_name_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditNameEvent {










}

/// @nodoc
abstract class $EditNameEventCopyWith<$Res>  {
  factory $EditNameEventCopyWith(EditNameEvent value, $Res Function(EditNameEvent) then) = _$EditNameEventCopyWithImpl<$Res, EditNameEvent>;



}

/// @nodoc
class _$EditNameEventCopyWithImpl<$Res,$Val extends EditNameEvent> implements $EditNameEventCopyWith<$Res> {
  _$EditNameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of EditNameEvent
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$NameChangedImplCopyWith<$Res>  {
  factory _$$NameChangedImplCopyWith(_$NameChangedImpl value, $Res Function(_$NameChangedImpl) then) = __$$NameChangedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String name
});



}

/// @nodoc
class __$$NameChangedImplCopyWithImpl<$Res> extends _$EditNameEventCopyWithImpl<$Res, _$NameChangedImpl> implements _$$NameChangedImplCopyWith<$Res> {
  __$$NameChangedImplCopyWithImpl(_$NameChangedImpl _value, $Res Function(_$NameChangedImpl) _then)
      : super(_value, _then);


/// Create a copy of EditNameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_$NameChangedImpl(
null == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$NameChangedImpl  implements _NameChanged {
  const _$NameChangedImpl(this.name);

  

@override final  String name;

@override
String toString() {
  return 'EditNameEvent.nameChanged(name: $name)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$NameChangedImpl&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

/// Create a copy of EditNameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith => __$$NameChangedImplCopyWithImpl<_$NameChangedImpl>(this, _$identity);








}


abstract class _NameChanged implements EditNameEvent {
  const factory _NameChanged(final  String name) = _$NameChangedImpl;
  

  

 String get name;
/// Create a copy of EditNameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$NameSavedImplCopyWith<$Res>  {
  factory _$$NameSavedImplCopyWith(_$NameSavedImpl value, $Res Function(_$NameSavedImpl) then) = __$$NameSavedImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$NameSavedImplCopyWithImpl<$Res> extends _$EditNameEventCopyWithImpl<$Res, _$NameSavedImpl> implements _$$NameSavedImplCopyWith<$Res> {
  __$$NameSavedImplCopyWithImpl(_$NameSavedImpl _value, $Res Function(_$NameSavedImpl) _then)
      : super(_value, _then);


/// Create a copy of EditNameEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$NameSavedImpl  implements _NameSaved {
  const _$NameSavedImpl();

  



@override
String toString() {
  return 'EditNameEvent.nameSaved()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$NameSavedImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _NameSaved implements EditNameEvent {
  const factory _NameSaved() = _$NameSavedImpl;
  

  



}

/// @nodoc
mixin _$EditNameState {

 String get name => throw _privateConstructorUsedError; bool get isNameChanged => throw _privateConstructorUsedError;







/// Create a copy of EditNameState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$EditNameStateCopyWith<EditNameState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $EditNameStateCopyWith<$Res>  {
  factory $EditNameStateCopyWith(EditNameState value, $Res Function(EditNameState) then) = _$EditNameStateCopyWithImpl<$Res, EditNameState>;
@useResult
$Res call({
 String name, bool isNameChanged
});



}

/// @nodoc
class _$EditNameStateCopyWithImpl<$Res,$Val extends EditNameState> implements $EditNameStateCopyWith<$Res> {
  _$EditNameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of EditNameState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? isNameChanged = null,}) {
  return _then(_value.copyWith(
name: null == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as String,isNameChanged: null == isNameChanged ? _value.isNameChanged : isNameChanged // ignore: cast_nullable_to_non_nullable
as bool,
  )as $Val);
}

}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $EditNameStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String name, bool isNameChanged
});



}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$EditNameStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of EditNameState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? isNameChanged = null,}) {
  return _then(_$InitialImpl(
name: null == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as String,isNameChanged: null == isNameChanged ? _value.isNameChanged : isNameChanged // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl({this.name = '', this.isNameChanged = false});

  

@override@JsonKey() final  String name;
@override@JsonKey() final  bool isNameChanged;

@override
String toString() {
  return 'EditNameState.initial(name: $name, isNameChanged: $isNameChanged)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&(identical(other.name, name) || other.name == name)&&(identical(other.isNameChanged, isNameChanged) || other.isNameChanged == isNameChanged));
}


@override
int get hashCode => Object.hash(runtimeType,name,isNameChanged);

/// Create a copy of EditNameState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements EditNameState {
  const factory Initial({final  String name, final  bool isNameChanged}) = _$InitialImpl;
  

  

@override String get name;@override bool get isNameChanged;
/// Create a copy of EditNameState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$SavingImplCopyWith<$Res> implements $EditNameStateCopyWith<$Res> {
  factory _$$SavingImplCopyWith(_$SavingImpl value, $Res Function(_$SavingImpl) then) = __$$SavingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String name, bool isNameChanged
});



}

/// @nodoc
class __$$SavingImplCopyWithImpl<$Res> extends _$EditNameStateCopyWithImpl<$Res, _$SavingImpl> implements _$$SavingImplCopyWith<$Res> {
  __$$SavingImplCopyWithImpl(_$SavingImpl _value, $Res Function(_$SavingImpl) _then)
      : super(_value, _then);


/// Create a copy of EditNameState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? isNameChanged = null,}) {
  return _then(_$SavingImpl(
name: null == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as String,isNameChanged: null == isNameChanged ? _value.isNameChanged : isNameChanged // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _$SavingImpl  implements Saving {
  const _$SavingImpl({this.name = '', this.isNameChanged = false});

  

@override@JsonKey() final  String name;
@override@JsonKey() final  bool isNameChanged;

@override
String toString() {
  return 'EditNameState.saving(name: $name, isNameChanged: $isNameChanged)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SavingImpl&&(identical(other.name, name) || other.name == name)&&(identical(other.isNameChanged, isNameChanged) || other.isNameChanged == isNameChanged));
}


@override
int get hashCode => Object.hash(runtimeType,name,isNameChanged);

/// Create a copy of EditNameState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$SavingImplCopyWith<_$SavingImpl> get copyWith => __$$SavingImplCopyWithImpl<_$SavingImpl>(this, _$identity);








}


abstract class Saving implements EditNameState {
  const factory Saving({final  String name, final  bool isNameChanged}) = _$SavingImpl;
  

  

@override String get name;@override bool get isNameChanged;
/// Create a copy of EditNameState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$SavingImplCopyWith<_$SavingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$SavedImplCopyWith<$Res> implements $EditNameStateCopyWith<$Res> {
  factory _$$SavedImplCopyWith(_$SavedImpl value, $Res Function(_$SavedImpl) then) = __$$SavedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String name, User user, bool isNameChanged
});


$UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$SavedImplCopyWithImpl<$Res> extends _$EditNameStateCopyWithImpl<$Res, _$SavedImpl> implements _$$SavedImplCopyWith<$Res> {
  __$$SavedImplCopyWithImpl(_$SavedImpl _value, $Res Function(_$SavedImpl) _then)
      : super(_value, _then);


/// Create a copy of EditNameState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? user = null,Object? isNameChanged = null,}) {
  return _then(_$SavedImpl(
name: null == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _value.user : user // ignore: cast_nullable_to_non_nullable
as User,isNameChanged: null == isNameChanged ? _value.isNameChanged : isNameChanged // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of EditNameState
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
  const _$SavedImpl({this.name = '', required this.user, this.isNameChanged = false});

  

@override@JsonKey() final  String name;
@override final  User user;
@override@JsonKey() final  bool isNameChanged;

@override
String toString() {
  return 'EditNameState.saved(name: $name, user: $user, isNameChanged: $isNameChanged)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SavedImpl&&(identical(other.name, name) || other.name == name)&&(identical(other.user, user) || other.user == user)&&(identical(other.isNameChanged, isNameChanged) || other.isNameChanged == isNameChanged));
}


@override
int get hashCode => Object.hash(runtimeType,name,user,isNameChanged);

/// Create a copy of EditNameState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$SavedImplCopyWith<_$SavedImpl> get copyWith => __$$SavedImplCopyWithImpl<_$SavedImpl>(this, _$identity);








}


abstract class Saved implements EditNameState {
  const factory Saved({final  String name, required final  User user, final  bool isNameChanged}) = _$SavedImpl;
  

  

@override String get name; User get user;@override bool get isNameChanged;
/// Create a copy of EditNameState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$SavedImplCopyWith<_$SavedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $EditNameStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String name, bool isNameChanged, String message
});



}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$EditNameStateCopyWithImpl<$Res, _$ErrorImpl> implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);


/// Create a copy of EditNameState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? isNameChanged = null,Object? message = null,}) {
  return _then(_$ErrorImpl(
name: null == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as String,isNameChanged: null == isNameChanged ? _value.isNameChanged : isNameChanged // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$ErrorImpl  implements Error {
  const _$ErrorImpl({this.name = '', this.isNameChanged = false, this.message = ''});

  

@override@JsonKey() final  String name;
@override@JsonKey() final  bool isNameChanged;
@override@JsonKey() final  String message;

@override
String toString() {
  return 'EditNameState.error(name: $name, isNameChanged: $isNameChanged, message: $message)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ErrorImpl&&(identical(other.name, name) || other.name == name)&&(identical(other.isNameChanged, isNameChanged) || other.isNameChanged == isNameChanged)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,name,isNameChanged,message);

/// Create a copy of EditNameState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);








}


abstract class Error implements EditNameState {
  const factory Error({final  String name, final  bool isNameChanged, final  String message}) = _$ErrorImpl;
  

  

@override String get name;@override bool get isNameChanged; String get message;
/// Create a copy of EditNameState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
