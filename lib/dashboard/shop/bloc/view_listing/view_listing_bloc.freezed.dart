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










}

/// @nodoc
abstract class $ViewListingEventCopyWith<$Res>  {
  factory $ViewListingEventCopyWith(ViewListingEvent value, $Res Function(ViewListingEvent) then) = _$ViewListingEventCopyWithImpl<$Res, ViewListingEvent>;



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


}


/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>  {
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) = __$$StartedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String id
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
as String,
  ));
}


}

/// @nodoc


class _$StartedImpl  implements _Started {
  const _$StartedImpl(this.id);

  

@override final  String id;

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
  const factory _Started(final  String id) = _$StartedImpl;
  

  

 String get id;
/// Create a copy of ViewListingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$StartedImplCopyWith<_$StartedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$FavoriteToggledImplCopyWith<$Res>  {
  factory _$$FavoriteToggledImplCopyWith(_$FavoriteToggledImpl value, $Res Function(_$FavoriteToggledImpl) then) = __$$FavoriteToggledImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$FavoriteToggledImplCopyWithImpl<$Res> extends _$ViewListingEventCopyWithImpl<$Res, _$FavoriteToggledImpl> implements _$$FavoriteToggledImplCopyWith<$Res> {
  __$$FavoriteToggledImplCopyWithImpl(_$FavoriteToggledImpl _value, $Res Function(_$FavoriteToggledImpl) _then)
      : super(_value, _then);


/// Create a copy of ViewListingEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$FavoriteToggledImpl  implements _FavoriteToggled {
  const _$FavoriteToggledImpl();

  



@override
String toString() {
  return 'ViewListingEvent.favoriteToggled()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$FavoriteToggledImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _FavoriteToggled implements ViewListingEvent {
  const factory _FavoriteToggled() = _$FavoriteToggledImpl;
  

  



}

/// @nodoc
abstract class _$$MessageChangedImplCopyWith<$Res>  {
  factory _$$MessageChangedImplCopyWith(_$MessageChangedImpl value, $Res Function(_$MessageChangedImpl) then) = __$$MessageChangedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String message
});



}

/// @nodoc
class __$$MessageChangedImplCopyWithImpl<$Res> extends _$ViewListingEventCopyWithImpl<$Res, _$MessageChangedImpl> implements _$$MessageChangedImplCopyWith<$Res> {
  __$$MessageChangedImplCopyWithImpl(_$MessageChangedImpl _value, $Res Function(_$MessageChangedImpl) _then)
      : super(_value, _then);


/// Create a copy of ViewListingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_$MessageChangedImpl(
null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$MessageChangedImpl  implements _MessageChanged {
  const _$MessageChangedImpl(this.message);

  

@override final  String message;

@override
String toString() {
  return 'ViewListingEvent.messageChanged(message: $message)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$MessageChangedImpl&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

/// Create a copy of ViewListingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$MessageChangedImplCopyWith<_$MessageChangedImpl> get copyWith => __$$MessageChangedImplCopyWithImpl<_$MessageChangedImpl>(this, _$identity);








}


abstract class _MessageChanged implements ViewListingEvent {
  const factory _MessageChanged(final  String message) = _$MessageChangedImpl;
  

  

 String get message;
/// Create a copy of ViewListingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$MessageChangedImplCopyWith<_$MessageChangedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$MessageSentImplCopyWith<$Res>  {
  factory _$$MessageSentImplCopyWith(_$MessageSentImpl value, $Res Function(_$MessageSentImpl) then) = __$$MessageSentImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$MessageSentImplCopyWithImpl<$Res> extends _$ViewListingEventCopyWithImpl<$Res, _$MessageSentImpl> implements _$$MessageSentImplCopyWith<$Res> {
  __$$MessageSentImplCopyWithImpl(_$MessageSentImpl _value, $Res Function(_$MessageSentImpl) _then)
      : super(_value, _then);


/// Create a copy of ViewListingEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$MessageSentImpl  implements _MessageSent {
  const _$MessageSentImpl();

  



@override
String toString() {
  return 'ViewListingEvent.messageSent()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$MessageSentImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _MessageSent implements ViewListingEvent {
  const factory _MessageSent() = _$MessageSentImpl;
  

  



}

/// @nodoc
abstract class _$$MarkedAsSoldImplCopyWith<$Res>  {
  factory _$$MarkedAsSoldImplCopyWith(_$MarkedAsSoldImpl value, $Res Function(_$MarkedAsSoldImpl) then) = __$$MarkedAsSoldImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$MarkedAsSoldImplCopyWithImpl<$Res> extends _$ViewListingEventCopyWithImpl<$Res, _$MarkedAsSoldImpl> implements _$$MarkedAsSoldImplCopyWith<$Res> {
  __$$MarkedAsSoldImplCopyWithImpl(_$MarkedAsSoldImpl _value, $Res Function(_$MarkedAsSoldImpl) _then)
      : super(_value, _then);


/// Create a copy of ViewListingEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$MarkedAsSoldImpl  implements _MarkedAsSold {
  const _$MarkedAsSoldImpl();

  



@override
String toString() {
  return 'ViewListingEvent.markedAsSold()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$MarkedAsSoldImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _MarkedAsSold implements ViewListingEvent {
  const factory _MarkedAsSold() = _$MarkedAsSoldImpl;
  

  



}

/// @nodoc
abstract class _$$ListingDeletedImplCopyWith<$Res>  {
  factory _$$ListingDeletedImplCopyWith(_$ListingDeletedImpl value, $Res Function(_$ListingDeletedImpl) then) = __$$ListingDeletedImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$ListingDeletedImplCopyWithImpl<$Res> extends _$ViewListingEventCopyWithImpl<$Res, _$ListingDeletedImpl> implements _$$ListingDeletedImplCopyWith<$Res> {
  __$$ListingDeletedImplCopyWithImpl(_$ListingDeletedImpl _value, $Res Function(_$ListingDeletedImpl) _then)
      : super(_value, _then);


/// Create a copy of ViewListingEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$ListingDeletedImpl  implements _ListingDeleted {
  const _$ListingDeletedImpl();

  



@override
String toString() {
  return 'ViewListingEvent.listingDeleted()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ListingDeletedImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _ListingDeleted implements ViewListingEvent {
  const factory _ListingDeleted() = _$ListingDeletedImpl;
  

  



}

/// @nodoc
mixin _$ViewListingState {

 QueryProduct get query => throw _privateConstructorUsedError; User get seller => throw _privateConstructorUsedError; String get message => throw _privateConstructorUsedError;







/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ViewListingStateCopyWith<ViewListingState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ViewListingStateCopyWith<$Res>  {
  factory $ViewListingStateCopyWith(ViewListingState value, $Res Function(ViewListingState) then) = _$ViewListingStateCopyWithImpl<$Res, ViewListingState>;
@useResult
$Res call({
 QueryProduct query, User seller, String message
});


$QueryProductCopyWith<$Res> get query;$UserCopyWith<$Res> get seller;
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
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? seller = null,Object? message = null,}) {
  return _then(_value.copyWith(
query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as QueryProduct,seller: null == seller ? _value.seller : seller // ignore: cast_nullable_to_non_nullable
as User,message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,
  )as $Val);
}
/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QueryProductCopyWith<$Res> get query {
  
  return $QueryProductCopyWith<$Res>(_value.query, (value) {
    return _then(_value.copyWith(query: value) as $Val);
  });
}/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get seller {
  
  return $UserCopyWith<$Res>(_value.seller, (value) {
    return _then(_value.copyWith(seller: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $ViewListingStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 QueryProduct query, User seller, String message
});


@override $QueryProductCopyWith<$Res> get query;@override $UserCopyWith<$Res> get seller;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$ViewListingStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? seller = null,Object? message = null,}) {
  return _then(_$InitialImpl(
query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as QueryProduct,seller: null == seller ? _value.seller : seller // ignore: cast_nullable_to_non_nullable
as User,message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl({this.query = const QueryProduct(), this.seller = const User(), this.message = ''});

  

@override@JsonKey() final  QueryProduct query;
@override@JsonKey() final  User seller;
@override@JsonKey() final  String message;

@override
String toString() {
  return 'ViewListingState.initial(query: $query, seller: $seller, message: $message)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&(identical(other.query, query) || other.query == query)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,query,seller,message);

/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements ViewListingState {
  const factory Initial({final  QueryProduct query, final  User seller, final  String message}) = _$InitialImpl;
  

  

@override QueryProduct get query;@override User get seller;@override String get message;
/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> implements $ViewListingStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl value, $Res Function(_$LoadingImpl) then) = __$$LoadingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 QueryProduct query, User seller, String message
});


@override $QueryProductCopyWith<$Res> get query;@override $UserCopyWith<$Res> get seller;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$ViewListingStateCopyWithImpl<$Res, _$LoadingImpl> implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);


/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? seller = null,Object? message = null,}) {
  return _then(_$LoadingImpl(
query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as QueryProduct,seller: null == seller ? _value.seller : seller // ignore: cast_nullable_to_non_nullable
as User,message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$LoadingImpl  implements Loading {
  const _$LoadingImpl({this.query = const QueryProduct(), this.seller = const User(), this.message = ''});

  

@override@JsonKey() final  QueryProduct query;
@override@JsonKey() final  User seller;
@override@JsonKey() final  String message;

@override
String toString() {
  return 'ViewListingState.loading(query: $query, seller: $seller, message: $message)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadingImpl&&(identical(other.query, query) || other.query == query)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,query,seller,message);

/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);








}


abstract class Loading implements ViewListingState {
  const factory Loading({final  QueryProduct query, final  User seller, final  String message}) = _$LoadingImpl;
  

  

@override QueryProduct get query;@override User get seller;@override String get message;
/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$SendingImplCopyWith<$Res> implements $ViewListingStateCopyWith<$Res> {
  factory _$$SendingImplCopyWith(_$SendingImpl value, $Res Function(_$SendingImpl) then) = __$$SendingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 QueryProduct query, User seller, String message
});


@override $QueryProductCopyWith<$Res> get query;@override $UserCopyWith<$Res> get seller;
}

/// @nodoc
class __$$SendingImplCopyWithImpl<$Res> extends _$ViewListingStateCopyWithImpl<$Res, _$SendingImpl> implements _$$SendingImplCopyWith<$Res> {
  __$$SendingImplCopyWithImpl(_$SendingImpl _value, $Res Function(_$SendingImpl) _then)
      : super(_value, _then);


/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? seller = null,Object? message = null,}) {
  return _then(_$SendingImpl(
query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as QueryProduct,seller: null == seller ? _value.seller : seller // ignore: cast_nullable_to_non_nullable
as User,message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$SendingImpl  implements Sending {
  const _$SendingImpl({this.query = const QueryProduct(), this.seller = const User(), this.message = ''});

  

@override@JsonKey() final  QueryProduct query;
@override@JsonKey() final  User seller;
@override@JsonKey() final  String message;

@override
String toString() {
  return 'ViewListingState.sending(query: $query, seller: $seller, message: $message)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SendingImpl&&(identical(other.query, query) || other.query == query)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,query,seller,message);

/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$SendingImplCopyWith<_$SendingImpl> get copyWith => __$$SendingImplCopyWithImpl<_$SendingImpl>(this, _$identity);








}


abstract class Sending implements ViewListingState {
  const factory Sending({final  QueryProduct query, final  User seller, final  String message}) = _$SendingImpl;
  

  

@override QueryProduct get query;@override User get seller;@override String get message;
/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$SendingImplCopyWith<_$SendingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$SentImplCopyWith<$Res> implements $ViewListingStateCopyWith<$Res> {
  factory _$$SentImplCopyWith(_$SentImpl value, $Res Function(_$SentImpl) then) = __$$SentImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 QueryProduct query, User seller, String message
});


@override $QueryProductCopyWith<$Res> get query;@override $UserCopyWith<$Res> get seller;
}

/// @nodoc
class __$$SentImplCopyWithImpl<$Res> extends _$ViewListingStateCopyWithImpl<$Res, _$SentImpl> implements _$$SentImplCopyWith<$Res> {
  __$$SentImplCopyWithImpl(_$SentImpl _value, $Res Function(_$SentImpl) _then)
      : super(_value, _then);


/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? seller = null,Object? message = null,}) {
  return _then(_$SentImpl(
query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as QueryProduct,seller: null == seller ? _value.seller : seller // ignore: cast_nullable_to_non_nullable
as User,message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$SentImpl  implements Sent {
  const _$SentImpl({this.query = const QueryProduct(), this.seller = const User(), this.message = ''});

  

@override@JsonKey() final  QueryProduct query;
@override@JsonKey() final  User seller;
@override@JsonKey() final  String message;

@override
String toString() {
  return 'ViewListingState.sent(query: $query, seller: $seller, message: $message)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SentImpl&&(identical(other.query, query) || other.query == query)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,query,seller,message);

/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$SentImplCopyWith<_$SentImpl> get copyWith => __$$SentImplCopyWithImpl<_$SentImpl>(this, _$identity);








}


abstract class Sent implements ViewListingState {
  const factory Sent({final  QueryProduct query, final  User seller, final  String message}) = _$SentImpl;
  

  

@override QueryProduct get query;@override User get seller;@override String get message;
/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$SentImplCopyWith<_$SentImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $ViewListingStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(_$LoadedImpl value, $Res Function(_$LoadedImpl) then) = __$$LoadedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 QueryProduct query, User seller, String message
});


@override $QueryProductCopyWith<$Res> get query;@override $UserCopyWith<$Res> get seller;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res> extends _$ViewListingStateCopyWithImpl<$Res, _$LoadedImpl> implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(_$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);


/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? seller = null,Object? message = null,}) {
  return _then(_$LoadedImpl(
query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as QueryProduct,seller: null == seller ? _value.seller : seller // ignore: cast_nullable_to_non_nullable
as User,message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$LoadedImpl  implements Loaded {
  const _$LoadedImpl({required this.query, required this.seller, this.message = ''});

  

@override final  QueryProduct query;
@override final  User seller;
@override@JsonKey() final  String message;

@override
String toString() {
  return 'ViewListingState.loaded(query: $query, seller: $seller, message: $message)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadedImpl&&(identical(other.query, query) || other.query == query)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,query,seller,message);

/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);








}


abstract class Loaded implements ViewListingState {
  const factory Loaded({required final  QueryProduct query, required final  User seller, final  String message}) = _$LoadedImpl;
  

  

@override QueryProduct get query;@override User get seller;@override String get message;
/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$DeletingImplCopyWith<$Res> implements $ViewListingStateCopyWith<$Res> {
  factory _$$DeletingImplCopyWith(_$DeletingImpl value, $Res Function(_$DeletingImpl) then) = __$$DeletingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 QueryProduct query, User seller, String message
});


@override $QueryProductCopyWith<$Res> get query;@override $UserCopyWith<$Res> get seller;
}

/// @nodoc
class __$$DeletingImplCopyWithImpl<$Res> extends _$ViewListingStateCopyWithImpl<$Res, _$DeletingImpl> implements _$$DeletingImplCopyWith<$Res> {
  __$$DeletingImplCopyWithImpl(_$DeletingImpl _value, $Res Function(_$DeletingImpl) _then)
      : super(_value, _then);


/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? seller = null,Object? message = null,}) {
  return _then(_$DeletingImpl(
query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as QueryProduct,seller: null == seller ? _value.seller : seller // ignore: cast_nullable_to_non_nullable
as User,message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$DeletingImpl  implements Deleting {
  const _$DeletingImpl({this.query = const QueryProduct(), this.seller = const User(), this.message = ''});

  

@override@JsonKey() final  QueryProduct query;
@override@JsonKey() final  User seller;
@override@JsonKey() final  String message;

@override
String toString() {
  return 'ViewListingState.deleting(query: $query, seller: $seller, message: $message)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$DeletingImpl&&(identical(other.query, query) || other.query == query)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,query,seller,message);

/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$DeletingImplCopyWith<_$DeletingImpl> get copyWith => __$$DeletingImplCopyWithImpl<_$DeletingImpl>(this, _$identity);








}


abstract class Deleting implements ViewListingState {
  const factory Deleting({final  QueryProduct query, final  User seller, final  String message}) = _$DeletingImpl;
  

  

@override QueryProduct get query;@override User get seller;@override String get message;
/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$DeletingImplCopyWith<_$DeletingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$DeletedImplCopyWith<$Res> implements $ViewListingStateCopyWith<$Res> {
  factory _$$DeletedImplCopyWith(_$DeletedImpl value, $Res Function(_$DeletedImpl) then) = __$$DeletedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 QueryProduct query, User seller, String message
});


@override $QueryProductCopyWith<$Res> get query;@override $UserCopyWith<$Res> get seller;
}

/// @nodoc
class __$$DeletedImplCopyWithImpl<$Res> extends _$ViewListingStateCopyWithImpl<$Res, _$DeletedImpl> implements _$$DeletedImplCopyWith<$Res> {
  __$$DeletedImplCopyWithImpl(_$DeletedImpl _value, $Res Function(_$DeletedImpl) _then)
      : super(_value, _then);


/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? seller = null,Object? message = null,}) {
  return _then(_$DeletedImpl(
query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as QueryProduct,seller: null == seller ? _value.seller : seller // ignore: cast_nullable_to_non_nullable
as User,message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$DeletedImpl  implements Deleted {
  const _$DeletedImpl({this.query = const QueryProduct(), this.seller = const User(), this.message = ''});

  

@override@JsonKey() final  QueryProduct query;
@override@JsonKey() final  User seller;
@override@JsonKey() final  String message;

@override
String toString() {
  return 'ViewListingState.deleted(query: $query, seller: $seller, message: $message)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$DeletedImpl&&(identical(other.query, query) || other.query == query)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,query,seller,message);

/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$DeletedImplCopyWith<_$DeletedImpl> get copyWith => __$$DeletedImplCopyWithImpl<_$DeletedImpl>(this, _$identity);








}


abstract class Deleted implements ViewListingState {
  const factory Deleted({final  QueryProduct query, final  User seller, final  String message}) = _$DeletedImpl;
  

  

@override QueryProduct get query;@override User get seller;@override String get message;
/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$DeletedImplCopyWith<_$DeletedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $ViewListingStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String errMessage, QueryProduct query, User seller, String message
});


@override $QueryProductCopyWith<$Res> get query;@override $UserCopyWith<$Res> get seller;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$ViewListingStateCopyWithImpl<$Res, _$ErrorImpl> implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);


/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? errMessage = null,Object? query = null,Object? seller = null,Object? message = null,}) {
  return _then(_$ErrorImpl(
errMessage: null == errMessage ? _value.errMessage : errMessage // ignore: cast_nullable_to_non_nullable
as String,query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as QueryProduct,seller: null == seller ? _value.seller : seller // ignore: cast_nullable_to_non_nullable
as User,message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$ErrorImpl  implements Error {
  const _$ErrorImpl({required this.errMessage, this.query = const QueryProduct(), this.seller = const User(), this.message = ''});

  

@override final  String errMessage;
@override@JsonKey() final  QueryProduct query;
@override@JsonKey() final  User seller;
@override@JsonKey() final  String message;

@override
String toString() {
  return 'ViewListingState.error(errMessage: $errMessage, query: $query, seller: $seller, message: $message)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ErrorImpl&&(identical(other.errMessage, errMessage) || other.errMessage == errMessage)&&(identical(other.query, query) || other.query == query)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,errMessage,query,seller,message);

/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);








}


abstract class Error implements ViewListingState {
  const factory Error({required final  String errMessage, final  QueryProduct query, final  User seller, final  String message}) = _$ErrorImpl;
  

  

 String get errMessage;@override QueryProduct get query;@override User get seller;@override String get message;
/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
