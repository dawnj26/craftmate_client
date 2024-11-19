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

 String get id => throw _privateConstructorUsedError;







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
 String id
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
as String,
  )as $Val);
}

}


/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> implements $ViewListingEventCopyWith<$Res> {
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) = __$$StartedImplCopyWithImpl<$Res>;
@override @useResult
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
  

  

@override String get id;
/// Create a copy of ViewListingEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$StartedImplCopyWith<_$StartedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
mixin _$ViewListingState {

 QueryProduct get query => throw _privateConstructorUsedError; User get seller => throw _privateConstructorUsedError;







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
 QueryProduct query, User seller
});


$UserCopyWith<$Res> get seller;
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
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? seller = null,}) {
  return _then(_value.copyWith(
query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as QueryProduct,seller: null == seller ? _value.seller : seller // ignore: cast_nullable_to_non_nullable
as User,
  )as $Val);
}
/// Create a copy of ViewListingState
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
 QueryProduct query, User seller
});


@override $UserCopyWith<$Res> get seller;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$ViewListingStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? seller = null,}) {
  return _then(_$InitialImpl(
query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as QueryProduct,seller: null == seller ? _value.seller : seller // ignore: cast_nullable_to_non_nullable
as User,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl({this.query = const QueryProduct.empty(), this.seller = const User()});

  

@override@JsonKey() final  QueryProduct query;
@override@JsonKey() final  User seller;

@override
String toString() {
  return 'ViewListingState.initial(query: $query, seller: $seller)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&(identical(other.query, query) || other.query == query)&&(identical(other.seller, seller) || other.seller == seller));
}


@override
int get hashCode => Object.hash(runtimeType,query,seller);

/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements ViewListingState {
  const factory Initial({final  QueryProduct query, final  User seller}) = _$InitialImpl;
  

  

@override QueryProduct get query;@override User get seller;
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
 QueryProduct query, User seller
});


@override $UserCopyWith<$Res> get seller;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$ViewListingStateCopyWithImpl<$Res, _$LoadingImpl> implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);


/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? seller = null,}) {
  return _then(_$LoadingImpl(
query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as QueryProduct,seller: null == seller ? _value.seller : seller // ignore: cast_nullable_to_non_nullable
as User,
  ));
}


}

/// @nodoc


class _$LoadingImpl  implements Loading {
  const _$LoadingImpl({this.query = const QueryProduct.empty(), this.seller = const User()});

  

@override@JsonKey() final  QueryProduct query;
@override@JsonKey() final  User seller;

@override
String toString() {
  return 'ViewListingState.loading(query: $query, seller: $seller)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadingImpl&&(identical(other.query, query) || other.query == query)&&(identical(other.seller, seller) || other.seller == seller));
}


@override
int get hashCode => Object.hash(runtimeType,query,seller);

/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);








}


abstract class Loading implements ViewListingState {
  const factory Loading({final  QueryProduct query, final  User seller}) = _$LoadingImpl;
  

  

@override QueryProduct get query;@override User get seller;
/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $ViewListingStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(_$LoadedImpl value, $Res Function(_$LoadedImpl) then) = __$$LoadedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 QueryProduct query, User seller
});


@override $UserCopyWith<$Res> get seller;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res> extends _$ViewListingStateCopyWithImpl<$Res, _$LoadedImpl> implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(_$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);


/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? seller = null,}) {
  return _then(_$LoadedImpl(
query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as QueryProduct,seller: null == seller ? _value.seller : seller // ignore: cast_nullable_to_non_nullable
as User,
  ));
}


}

/// @nodoc


class _$LoadedImpl  implements Loaded {
  const _$LoadedImpl({required this.query, required this.seller});

  

@override final  QueryProduct query;
@override final  User seller;

@override
String toString() {
  return 'ViewListingState.loaded(query: $query, seller: $seller)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadedImpl&&(identical(other.query, query) || other.query == query)&&(identical(other.seller, seller) || other.seller == seller));
}


@override
int get hashCode => Object.hash(runtimeType,query,seller);

/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);








}


abstract class Loaded implements ViewListingState {
  const factory Loaded({required final  QueryProduct query, required final  User seller}) = _$LoadedImpl;
  

  

@override QueryProduct get query;@override User get seller;
/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $ViewListingStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String message, QueryProduct query, User seller
});


@override $UserCopyWith<$Res> get seller;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$ViewListingStateCopyWithImpl<$Res, _$ErrorImpl> implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);


/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? query = null,Object? seller = null,}) {
  return _then(_$ErrorImpl(
message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as QueryProduct,seller: null == seller ? _value.seller : seller // ignore: cast_nullable_to_non_nullable
as User,
  ));
}


}

/// @nodoc


class _$ErrorImpl  implements Error {
  const _$ErrorImpl({required this.message, this.query = const QueryProduct.empty(), this.seller = const User()});

  

@override final  String message;
@override@JsonKey() final  QueryProduct query;
@override@JsonKey() final  User seller;

@override
String toString() {
  return 'ViewListingState.error(message: $message, query: $query, seller: $seller)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ErrorImpl&&(identical(other.message, message) || other.message == message)&&(identical(other.query, query) || other.query == query)&&(identical(other.seller, seller) || other.seller == seller));
}


@override
int get hashCode => Object.hash(runtimeType,message,query,seller);

/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);








}


abstract class Error implements ViewListingState {
  const factory Error({required final  String message, final  QueryProduct query, final  User seller}) = _$ErrorImpl;
  

  

 String get message;@override QueryProduct get query;@override User get seller;
/// Create a copy of ViewListingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
