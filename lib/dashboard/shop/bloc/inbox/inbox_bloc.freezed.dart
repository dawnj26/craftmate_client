// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inbox_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InboxEvent {










}

/// @nodoc
abstract class $InboxEventCopyWith<$Res>  {
  factory $InboxEventCopyWith(InboxEvent value, $Res Function(InboxEvent) then) = _$InboxEventCopyWithImpl<$Res, InboxEvent>;



}

/// @nodoc
class _$InboxEventCopyWithImpl<$Res,$Val extends InboxEvent> implements $InboxEventCopyWith<$Res> {
  _$InboxEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of InboxEvent
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>  {
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) = __$$StartedImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res> extends _$InboxEventCopyWithImpl<$Res, _$StartedImpl> implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(_$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);


/// Create a copy of InboxEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$StartedImpl  implements _Started {
  const _$StartedImpl();

  



@override
String toString() {
  return 'InboxEvent.started()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StartedImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _Started implements InboxEvent {
  const factory _Started() = _$StartedImpl;
  

  



}

/// @nodoc
abstract class _$$ChatsReceivedImplCopyWith<$Res>  {
  factory _$$ChatsReceivedImplCopyWith(_$ChatsReceivedImpl value, $Res Function(_$ChatsReceivedImpl) then) = __$$ChatsReceivedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 List<ListingChat> chats
});



}

/// @nodoc
class __$$ChatsReceivedImplCopyWithImpl<$Res> extends _$InboxEventCopyWithImpl<$Res, _$ChatsReceivedImpl> implements _$$ChatsReceivedImplCopyWith<$Res> {
  __$$ChatsReceivedImplCopyWithImpl(_$ChatsReceivedImpl _value, $Res Function(_$ChatsReceivedImpl) _then)
      : super(_value, _then);


/// Create a copy of InboxEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chats = null,}) {
  return _then(_$ChatsReceivedImpl(
null == chats ? _value._chats : chats // ignore: cast_nullable_to_non_nullable
as List<ListingChat>,
  ));
}


}

/// @nodoc


class _$ChatsReceivedImpl  implements _ChatsReceived {
  const _$ChatsReceivedImpl(final  List<ListingChat> chats): _chats = chats;

  

 final  List<ListingChat> _chats;
@override List<ListingChat> get chats {
  if (_chats is EqualUnmodifiableListView) return _chats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chats);
}


@override
String toString() {
  return 'InboxEvent.chatsReceived(chats: $chats)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ChatsReceivedImpl&&const DeepCollectionEquality().equals(other._chats, _chats));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_chats));

/// Create a copy of InboxEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ChatsReceivedImplCopyWith<_$ChatsReceivedImpl> get copyWith => __$$ChatsReceivedImplCopyWithImpl<_$ChatsReceivedImpl>(this, _$identity);








}


abstract class _ChatsReceived implements InboxEvent {
  const factory _ChatsReceived(final  List<ListingChat> chats) = _$ChatsReceivedImpl;
  

  

 List<ListingChat> get chats;
/// Create a copy of InboxEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$ChatsReceivedImplCopyWith<_$ChatsReceivedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
mixin _$InboxState {

 List<ListingChat> get listingChats => throw _privateConstructorUsedError;







/// Create a copy of InboxState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$InboxStateCopyWith<InboxState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $InboxStateCopyWith<$Res>  {
  factory $InboxStateCopyWith(InboxState value, $Res Function(InboxState) then) = _$InboxStateCopyWithImpl<$Res, InboxState>;
@useResult
$Res call({
 List<ListingChat> listingChats
});



}

/// @nodoc
class _$InboxStateCopyWithImpl<$Res,$Val extends InboxState> implements $InboxStateCopyWith<$Res> {
  _$InboxStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of InboxState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listingChats = null,}) {
  return _then(_value.copyWith(
listingChats: null == listingChats ? _value.listingChats : listingChats // ignore: cast_nullable_to_non_nullable
as List<ListingChat>,
  )as $Val);
}

}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $InboxStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<ListingChat> listingChats
});



}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$InboxStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of InboxState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listingChats = null,}) {
  return _then(_$InitialImpl(
listingChats: null == listingChats ? _value._listingChats : listingChats // ignore: cast_nullable_to_non_nullable
as List<ListingChat>,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl({final  List<ListingChat> listingChats = const []}): _listingChats = listingChats;

  

 final  List<ListingChat> _listingChats;
@override@JsonKey() List<ListingChat> get listingChats {
  if (_listingChats is EqualUnmodifiableListView) return _listingChats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_listingChats);
}


@override
String toString() {
  return 'InboxState.initial(listingChats: $listingChats)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&const DeepCollectionEquality().equals(other._listingChats, _listingChats));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_listingChats));

/// Create a copy of InboxState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements InboxState {
  const factory Initial({final  List<ListingChat> listingChats}) = _$InitialImpl;
  

  

@override List<ListingChat> get listingChats;
/// Create a copy of InboxState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> implements $InboxStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl value, $Res Function(_$LoadingImpl) then) = __$$LoadingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<ListingChat> listingChats
});



}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$InboxStateCopyWithImpl<$Res, _$LoadingImpl> implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);


/// Create a copy of InboxState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listingChats = null,}) {
  return _then(_$LoadingImpl(
listingChats: null == listingChats ? _value._listingChats : listingChats // ignore: cast_nullable_to_non_nullable
as List<ListingChat>,
  ));
}


}

/// @nodoc


class _$LoadingImpl  implements Loading {
  const _$LoadingImpl({final  List<ListingChat> listingChats = const []}): _listingChats = listingChats;

  

 final  List<ListingChat> _listingChats;
@override@JsonKey() List<ListingChat> get listingChats {
  if (_listingChats is EqualUnmodifiableListView) return _listingChats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_listingChats);
}


@override
String toString() {
  return 'InboxState.loading(listingChats: $listingChats)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadingImpl&&const DeepCollectionEquality().equals(other._listingChats, _listingChats));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_listingChats));

/// Create a copy of InboxState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);








}


abstract class Loading implements InboxState {
  const factory Loading({final  List<ListingChat> listingChats}) = _$LoadingImpl;
  

  

@override List<ListingChat> get listingChats;
/// Create a copy of InboxState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $InboxStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(_$LoadedImpl value, $Res Function(_$LoadedImpl) then) = __$$LoadedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<ListingChat> listingChats
});



}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res> extends _$InboxStateCopyWithImpl<$Res, _$LoadedImpl> implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(_$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);


/// Create a copy of InboxState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listingChats = null,}) {
  return _then(_$LoadedImpl(
listingChats: null == listingChats ? _value._listingChats : listingChats // ignore: cast_nullable_to_non_nullable
as List<ListingChat>,
  ));
}


}

/// @nodoc


class _$LoadedImpl  implements Loaded {
  const _$LoadedImpl({final  List<ListingChat> listingChats = const []}): _listingChats = listingChats;

  

 final  List<ListingChat> _listingChats;
@override@JsonKey() List<ListingChat> get listingChats {
  if (_listingChats is EqualUnmodifiableListView) return _listingChats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_listingChats);
}


@override
String toString() {
  return 'InboxState.loaded(listingChats: $listingChats)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadedImpl&&const DeepCollectionEquality().equals(other._listingChats, _listingChats));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_listingChats));

/// Create a copy of InboxState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);








}


abstract class Loaded implements InboxState {
  const factory Loaded({final  List<ListingChat> listingChats}) = _$LoadedImpl;
  

  

@override List<ListingChat> get listingChats;
/// Create a copy of InboxState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $InboxStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<ListingChat> listingChats
});



}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$InboxStateCopyWithImpl<$Res, _$ErrorImpl> implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);


/// Create a copy of InboxState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listingChats = null,}) {
  return _then(_$ErrorImpl(
listingChats: null == listingChats ? _value._listingChats : listingChats // ignore: cast_nullable_to_non_nullable
as List<ListingChat>,
  ));
}


}

/// @nodoc


class _$ErrorImpl  implements Error {
  const _$ErrorImpl({final  List<ListingChat> listingChats = const []}): _listingChats = listingChats;

  

 final  List<ListingChat> _listingChats;
@override@JsonKey() List<ListingChat> get listingChats {
  if (_listingChats is EqualUnmodifiableListView) return _listingChats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_listingChats);
}


@override
String toString() {
  return 'InboxState.error(listingChats: $listingChats)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ErrorImpl&&const DeepCollectionEquality().equals(other._listingChats, _listingChats));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_listingChats));

/// Create a copy of InboxState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);








}


abstract class Error implements InboxState {
  const factory Error({final  List<ListingChat> listingChats}) = _$ErrorImpl;
  

  

@override List<ListingChat> get listingChats;
/// Create a copy of InboxState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
