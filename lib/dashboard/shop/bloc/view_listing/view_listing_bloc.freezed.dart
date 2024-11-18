// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_listing_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ViewListingEvent {

 int get id => throw _privateConstructorUsedError;







/// Create a copy of ViewListingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ViewListingEventCopyWith<ViewListingEvent> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ViewListingEventCopyWith<$Res>  {
  factory $ViewListingEventCopyWith(ViewListingEvent value, $Res Function(ViewListingEvent) then) = _$ViewListingEventCopyWithImpl<$Res, ViewListingEvent>;
@useResult
$Res call({
 int id
});



}

/// @nodoc
class _$ViewListingEventCopyWithImpl<$Res,$Val extends ViewListingEvent> implements $ViewListingEventCopyWith<$Res> {
  _$ViewListingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ViewListingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_value.copyWith(
id: null == id ? _value.id : id // ignore: cast_nullable_to_non_nullable
as int,
  )as $Val);
}

}


/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> implements $ViewListingEventCopyWith<$Res> {
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) = __$$StartedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 int id
});



}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res> extends _$ViewListingEventCopyWithImpl<$Res, _$StartedImpl> implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(_$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);


/// Create a copy of ViewListingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_$StartedImpl(
null == id ? _value.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _$StartedImpl  implements _Started {
  const _$StartedImpl(this.id);

  

@override final  int id;

@override
String toString() {
  return 'ViewListingEvent.started(id: $id)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StartedImpl&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

/// Create a copy of ViewListingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$StartedImplCopyWith<_$StartedImpl> get copyWith => __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);








}


abstract class _Started implements ViewListingEvent {
  const factory _Started(final  int id) = _$StartedImpl;
  

  

@override int get id;
/// Create a copy of ViewListingEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$StartedImplCopyWith<_$StartedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
mixin _$ViewListingState {










}

/// @nodoc
abstract class $ViewListingStateCopyWith<$Res>  {
  factory $ViewListingStateCopyWith(ViewListingState value, $Res Function(ViewListingState) then) = _$ViewListingStateCopyWithImpl<$Res, ViewListingState>;



}

/// @nodoc
class _$ViewListingStateCopyWithImpl<$Res,$Val extends ViewListingState> implements $ViewListingStateCopyWith<$Res> {
  _$ViewListingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>  {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$ViewListingStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl();

  



@override
String toString() {
  return 'ViewListingState.initial()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class Initial implements ViewListingState {
  const factory Initial() = _$InitialImpl;
  

  



}
