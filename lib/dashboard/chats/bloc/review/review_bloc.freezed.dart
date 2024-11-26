// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReviewEvent {

 int get sellerId => throw _privateConstructorUsedError; int get curUserId => throw _privateConstructorUsedError;







/// Create a copy of ReviewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ReviewEventCopyWith<ReviewEvent> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ReviewEventCopyWith<$Res>  {
  factory $ReviewEventCopyWith(ReviewEvent value, $Res Function(ReviewEvent) then) = _$ReviewEventCopyWithImpl<$Res, ReviewEvent>;
@useResult
$Res call({
 int sellerId, int curUserId
});



}

/// @nodoc
class _$ReviewEventCopyWithImpl<$Res,$Val extends ReviewEvent> implements $ReviewEventCopyWith<$Res> {
  _$ReviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ReviewEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sellerId = null,Object? curUserId = null,}) {
  return _then(_value.copyWith(
sellerId: null == sellerId ? _value.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as int,curUserId: null == curUserId ? _value.curUserId : curUserId // ignore: cast_nullable_to_non_nullable
as int,
  )as $Val);
}

}


/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> implements $ReviewEventCopyWith<$Res> {
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) = __$$StartedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 int sellerId, int curUserId
});



}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res> extends _$ReviewEventCopyWithImpl<$Res, _$StartedImpl> implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(_$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);


/// Create a copy of ReviewEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sellerId = null,Object? curUserId = null,}) {
  return _then(_$StartedImpl(
null == sellerId ? _value.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as int,null == curUserId ? _value.curUserId : curUserId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _$StartedImpl  implements _Started {
  const _$StartedImpl(this.sellerId, this.curUserId);

  

@override final  int sellerId;
@override final  int curUserId;

@override
String toString() {
  return 'ReviewEvent.started(sellerId: $sellerId, curUserId: $curUserId)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StartedImpl&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.curUserId, curUserId) || other.curUserId == curUserId));
}


@override
int get hashCode => Object.hash(runtimeType,sellerId,curUserId);

/// Create a copy of ReviewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$StartedImplCopyWith<_$StartedImpl> get copyWith => __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);








}


abstract class _Started implements ReviewEvent {
  const factory _Started(final  int sellerId, final  int curUserId) = _$StartedImpl;
  

  

@override int get sellerId;@override int get curUserId;
/// Create a copy of ReviewEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$StartedImplCopyWith<_$StartedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
mixin _$ReviewState {










}

/// @nodoc
abstract class $ReviewStateCopyWith<$Res>  {
  factory $ReviewStateCopyWith(ReviewState value, $Res Function(ReviewState) then) = _$ReviewStateCopyWithImpl<$Res, ReviewState>;



}

/// @nodoc
class _$ReviewStateCopyWithImpl<$Res,$Val extends ReviewState> implements $ReviewStateCopyWith<$Res> {
  _$ReviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ReviewState
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>  {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$ReviewStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of ReviewState
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl();

  



@override
String toString() {
  return 'ReviewState.initial()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class Initial implements ReviewState {
  const factory Initial() = _$InitialImpl;
  

  



}

/// @nodoc
abstract class _$$ReviewedImplCopyWith<$Res>  {
  factory _$$ReviewedImplCopyWith(_$ReviewedImpl value, $Res Function(_$ReviewedImpl) then) = __$$ReviewedImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$ReviewedImplCopyWithImpl<$Res> extends _$ReviewStateCopyWithImpl<$Res, _$ReviewedImpl> implements _$$ReviewedImplCopyWith<$Res> {
  __$$ReviewedImplCopyWithImpl(_$ReviewedImpl _value, $Res Function(_$ReviewedImpl) _then)
      : super(_value, _then);


/// Create a copy of ReviewState
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$ReviewedImpl  implements Reviewed {
  const _$ReviewedImpl();

  



@override
String toString() {
  return 'ReviewState.reviewed()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ReviewedImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class Reviewed implements ReviewState {
  const factory Reviewed() = _$ReviewedImpl;
  

  



}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res>  {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String message
});



}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$ReviewStateCopyWithImpl<$Res, _$ErrorImpl> implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);


/// Create a copy of ReviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_$ErrorImpl(
null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$ErrorImpl  implements Error {
  const _$ErrorImpl(this.message);

  

@override final  String message;

@override
String toString() {
  return 'ReviewState.error(message: $message)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ErrorImpl&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

/// Create a copy of ReviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);








}


abstract class Error implements ReviewState {
  const factory Error(final  String message) = _$ErrorImpl;
  

  

 String get message;
/// Create a copy of ReviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
