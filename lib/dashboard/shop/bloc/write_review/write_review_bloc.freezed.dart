// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'write_review_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WriteReviewEvent {










}

/// @nodoc
abstract class $WriteReviewEventCopyWith<$Res>  {
  factory $WriteReviewEventCopyWith(WriteReviewEvent value, $Res Function(WriteReviewEvent) then) = _$WriteReviewEventCopyWithImpl<$Res, WriteReviewEvent>;



}

/// @nodoc
class _$WriteReviewEventCopyWithImpl<$Res,$Val extends WriteReviewEvent> implements $WriteReviewEventCopyWith<$Res> {
  _$WriteReviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of WriteReviewEvent
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>  {
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) = __$$StartedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String listingId, int sellerId
});



}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res> extends _$WriteReviewEventCopyWithImpl<$Res, _$StartedImpl> implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(_$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);


/// Create a copy of WriteReviewEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listingId = null,Object? sellerId = null,}) {
  return _then(_$StartedImpl(
null == listingId ? _value.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String,null == sellerId ? _value.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _$StartedImpl  implements _Started {
  const _$StartedImpl(this.listingId, this.sellerId);

  

@override final  String listingId;
@override final  int sellerId;

@override
String toString() {
  return 'WriteReviewEvent.started(listingId: $listingId, sellerId: $sellerId)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StartedImpl&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId));
}


@override
int get hashCode => Object.hash(runtimeType,listingId,sellerId);

/// Create a copy of WriteReviewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$StartedImplCopyWith<_$StartedImpl> get copyWith => __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);








}


abstract class _Started implements WriteReviewEvent {
  const factory _Started(final  String listingId, final  int sellerId) = _$StartedImpl;
  

  

 String get listingId; int get sellerId;
/// Create a copy of WriteReviewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$StartedImplCopyWith<_$StartedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$RatingChangedImplCopyWith<$Res>  {
  factory _$$RatingChangedImplCopyWith(_$RatingChangedImpl value, $Res Function(_$RatingChangedImpl) then) = __$$RatingChangedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 int rating
});



}

/// @nodoc
class __$$RatingChangedImplCopyWithImpl<$Res> extends _$WriteReviewEventCopyWithImpl<$Res, _$RatingChangedImpl> implements _$$RatingChangedImplCopyWith<$Res> {
  __$$RatingChangedImplCopyWithImpl(_$RatingChangedImpl _value, $Res Function(_$RatingChangedImpl) _then)
      : super(_value, _then);


/// Create a copy of WriteReviewEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rating = null,}) {
  return _then(_$RatingChangedImpl(
null == rating ? _value.rating : rating // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _$RatingChangedImpl  implements _RatingChanged {
  const _$RatingChangedImpl(this.rating);

  

@override final  int rating;

@override
String toString() {
  return 'WriteReviewEvent.ratingChanged(rating: $rating)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$RatingChangedImpl&&(identical(other.rating, rating) || other.rating == rating));
}


@override
int get hashCode => Object.hash(runtimeType,rating);

/// Create a copy of WriteReviewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$RatingChangedImplCopyWith<_$RatingChangedImpl> get copyWith => __$$RatingChangedImplCopyWithImpl<_$RatingChangedImpl>(this, _$identity);








}


abstract class _RatingChanged implements WriteReviewEvent {
  const factory _RatingChanged(final  int rating) = _$RatingChangedImpl;
  

  

 int get rating;
/// Create a copy of WriteReviewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$RatingChangedImplCopyWith<_$RatingChangedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$RatingSubmittedImplCopyWith<$Res>  {
  factory _$$RatingSubmittedImplCopyWith(_$RatingSubmittedImpl value, $Res Function(_$RatingSubmittedImpl) then) = __$$RatingSubmittedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 int userId
});



}

/// @nodoc
class __$$RatingSubmittedImplCopyWithImpl<$Res> extends _$WriteReviewEventCopyWithImpl<$Res, _$RatingSubmittedImpl> implements _$$RatingSubmittedImplCopyWith<$Res> {
  __$$RatingSubmittedImplCopyWithImpl(_$RatingSubmittedImpl _value, $Res Function(_$RatingSubmittedImpl) _then)
      : super(_value, _then);


/// Create a copy of WriteReviewEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,}) {
  return _then(_$RatingSubmittedImpl(
null == userId ? _value.userId : userId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _$RatingSubmittedImpl  implements _RatingSubmitted {
  const _$RatingSubmittedImpl(this.userId);

  

@override final  int userId;

@override
String toString() {
  return 'WriteReviewEvent.ratingSubmitted(userId: $userId)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$RatingSubmittedImpl&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

/// Create a copy of WriteReviewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$RatingSubmittedImplCopyWith<_$RatingSubmittedImpl> get copyWith => __$$RatingSubmittedImplCopyWithImpl<_$RatingSubmittedImpl>(this, _$identity);








}


abstract class _RatingSubmitted implements WriteReviewEvent {
  const factory _RatingSubmitted(final  int userId) = _$RatingSubmittedImpl;
  

  

 int get userId;
/// Create a copy of WriteReviewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$RatingSubmittedImplCopyWith<_$RatingSubmittedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ReviewChangedImplCopyWith<$Res>  {
  factory _$$ReviewChangedImplCopyWith(_$ReviewChangedImpl value, $Res Function(_$ReviewChangedImpl) then) = __$$ReviewChangedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String review
});



}

/// @nodoc
class __$$ReviewChangedImplCopyWithImpl<$Res> extends _$WriteReviewEventCopyWithImpl<$Res, _$ReviewChangedImpl> implements _$$ReviewChangedImplCopyWith<$Res> {
  __$$ReviewChangedImplCopyWithImpl(_$ReviewChangedImpl _value, $Res Function(_$ReviewChangedImpl) _then)
      : super(_value, _then);


/// Create a copy of WriteReviewEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? review = null,}) {
  return _then(_$ReviewChangedImpl(
null == review ? _value.review : review // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$ReviewChangedImpl  implements _ReviewChanged {
  const _$ReviewChangedImpl(this.review);

  

@override final  String review;

@override
String toString() {
  return 'WriteReviewEvent.reviewChanged(review: $review)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ReviewChangedImpl&&(identical(other.review, review) || other.review == review));
}


@override
int get hashCode => Object.hash(runtimeType,review);

/// Create a copy of WriteReviewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ReviewChangedImplCopyWith<_$ReviewChangedImpl> get copyWith => __$$ReviewChangedImplCopyWithImpl<_$ReviewChangedImpl>(this, _$identity);








}


abstract class _ReviewChanged implements WriteReviewEvent {
  const factory _ReviewChanged(final  String review) = _$ReviewChangedImpl;
  

  

 String get review;
/// Create a copy of WriteReviewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$ReviewChangedImplCopyWith<_$ReviewChangedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$PhotoAddedImplCopyWith<$Res>  {
  factory _$$PhotoAddedImplCopyWith(_$PhotoAddedImpl value, $Res Function(_$PhotoAddedImpl) then) = __$$PhotoAddedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 List<String> imagesPath
});



}

/// @nodoc
class __$$PhotoAddedImplCopyWithImpl<$Res> extends _$WriteReviewEventCopyWithImpl<$Res, _$PhotoAddedImpl> implements _$$PhotoAddedImplCopyWith<$Res> {
  __$$PhotoAddedImplCopyWithImpl(_$PhotoAddedImpl _value, $Res Function(_$PhotoAddedImpl) _then)
      : super(_value, _then);


/// Create a copy of WriteReviewEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imagesPath = null,}) {
  return _then(_$PhotoAddedImpl(
null == imagesPath ? _value._imagesPath : imagesPath // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class _$PhotoAddedImpl  implements _PhotoAdded {
  const _$PhotoAddedImpl(final  List<String> imagesPath): _imagesPath = imagesPath;

  

 final  List<String> _imagesPath;
@override List<String> get imagesPath {
  if (_imagesPath is EqualUnmodifiableListView) return _imagesPath;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imagesPath);
}


@override
String toString() {
  return 'WriteReviewEvent.photoAdded(imagesPath: $imagesPath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$PhotoAddedImpl&&const DeepCollectionEquality().equals(other._imagesPath, _imagesPath));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_imagesPath));

/// Create a copy of WriteReviewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$PhotoAddedImplCopyWith<_$PhotoAddedImpl> get copyWith => __$$PhotoAddedImplCopyWithImpl<_$PhotoAddedImpl>(this, _$identity);








}


abstract class _PhotoAdded implements WriteReviewEvent {
  const factory _PhotoAdded(final  List<String> imagesPath) = _$PhotoAddedImpl;
  

  

 List<String> get imagesPath;
/// Create a copy of WriteReviewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$PhotoAddedImplCopyWith<_$PhotoAddedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$PhotoRemovedImplCopyWith<$Res>  {
  factory _$$PhotoRemovedImplCopyWith(_$PhotoRemovedImpl value, $Res Function(_$PhotoRemovedImpl) then) = __$$PhotoRemovedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 int index
});



}

/// @nodoc
class __$$PhotoRemovedImplCopyWithImpl<$Res> extends _$WriteReviewEventCopyWithImpl<$Res, _$PhotoRemovedImpl> implements _$$PhotoRemovedImplCopyWith<$Res> {
  __$$PhotoRemovedImplCopyWithImpl(_$PhotoRemovedImpl _value, $Res Function(_$PhotoRemovedImpl) _then)
      : super(_value, _then);


/// Create a copy of WriteReviewEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,}) {
  return _then(_$PhotoRemovedImpl(
null == index ? _value.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _$PhotoRemovedImpl  implements _PhotoRemoved {
  const _$PhotoRemovedImpl(this.index);

  

@override final  int index;

@override
String toString() {
  return 'WriteReviewEvent.photoRemoved(index: $index)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$PhotoRemovedImpl&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

/// Create a copy of WriteReviewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$PhotoRemovedImplCopyWith<_$PhotoRemovedImpl> get copyWith => __$$PhotoRemovedImplCopyWithImpl<_$PhotoRemovedImpl>(this, _$identity);








}


abstract class _PhotoRemoved implements WriteReviewEvent {
  const factory _PhotoRemoved(final  int index) = _$PhotoRemovedImpl;
  

  

 int get index;
/// Create a copy of WriteReviewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$PhotoRemovedImplCopyWith<_$PhotoRemovedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
mixin _$WriteReviewState {

 User get seller => throw _privateConstructorUsedError; QueryProduct get query => throw _privateConstructorUsedError; int get rating => throw _privateConstructorUsedError; String get review => throw _privateConstructorUsedError; List<String> get imagesPath => throw _privateConstructorUsedError;







/// Create a copy of WriteReviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$WriteReviewStateCopyWith<WriteReviewState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $WriteReviewStateCopyWith<$Res>  {
  factory $WriteReviewStateCopyWith(WriteReviewState value, $Res Function(WriteReviewState) then) = _$WriteReviewStateCopyWithImpl<$Res, WriteReviewState>;
@useResult
$Res call({
 User seller, QueryProduct query, int rating, String review, List<String> imagesPath
});


$UserCopyWith<$Res> get seller;$QueryProductCopyWith<$Res> get query;
}

/// @nodoc
class _$WriteReviewStateCopyWithImpl<$Res,$Val extends WriteReviewState> implements $WriteReviewStateCopyWith<$Res> {
  _$WriteReviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of WriteReviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? seller = null,Object? query = null,Object? rating = null,Object? review = null,Object? imagesPath = null,}) {
  return _then(_value.copyWith(
seller: null == seller ? _value.seller : seller // ignore: cast_nullable_to_non_nullable
as User,query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as QueryProduct,rating: null == rating ? _value.rating : rating // ignore: cast_nullable_to_non_nullable
as int,review: null == review ? _value.review : review // ignore: cast_nullable_to_non_nullable
as String,imagesPath: null == imagesPath ? _value.imagesPath : imagesPath // ignore: cast_nullable_to_non_nullable
as List<String>,
  )as $Val);
}
/// Create a copy of WriteReviewState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get seller {
  
  return $UserCopyWith<$Res>(_value.seller, (value) {
    return _then(_value.copyWith(seller: value) as $Val);
  });
}/// Create a copy of WriteReviewState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QueryProductCopyWith<$Res> get query {
  
  return $QueryProductCopyWith<$Res>(_value.query, (value) {
    return _then(_value.copyWith(query: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $WriteReviewStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 User seller, QueryProduct query, int rating, String review, List<String> imagesPath
});


@override $UserCopyWith<$Res> get seller;@override $QueryProductCopyWith<$Res> get query;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$WriteReviewStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of WriteReviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? seller = null,Object? query = null,Object? rating = null,Object? review = null,Object? imagesPath = null,}) {
  return _then(_$InitialImpl(
seller: null == seller ? _value.seller : seller // ignore: cast_nullable_to_non_nullable
as User,query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as QueryProduct,rating: null == rating ? _value.rating : rating // ignore: cast_nullable_to_non_nullable
as int,review: null == review ? _value.review : review // ignore: cast_nullable_to_non_nullable
as String,imagesPath: null == imagesPath ? _value._imagesPath : imagesPath // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl({this.seller = const User(), this.query = const QueryProduct(), this.rating = 0, this.review = '', final  List<String> imagesPath = const []}): _imagesPath = imagesPath;

  

@override@JsonKey() final  User seller;
@override@JsonKey() final  QueryProduct query;
@override@JsonKey() final  int rating;
@override@JsonKey() final  String review;
 final  List<String> _imagesPath;
@override@JsonKey() List<String> get imagesPath {
  if (_imagesPath is EqualUnmodifiableListView) return _imagesPath;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imagesPath);
}


@override
String toString() {
  return 'WriteReviewState.initial(seller: $seller, query: $query, rating: $rating, review: $review, imagesPath: $imagesPath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.query, query) || other.query == query)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.review, review) || other.review == review)&&const DeepCollectionEquality().equals(other._imagesPath, _imagesPath));
}


@override
int get hashCode => Object.hash(runtimeType,seller,query,rating,review,const DeepCollectionEquality().hash(_imagesPath));

/// Create a copy of WriteReviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements WriteReviewState {
  const factory Initial({final  User seller, final  QueryProduct query, final  int rating, final  String review, final  List<String> imagesPath}) = _$InitialImpl;
  

  

@override User get seller;@override QueryProduct get query;@override int get rating;@override String get review;@override List<String> get imagesPath;
/// Create a copy of WriteReviewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> implements $WriteReviewStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl value, $Res Function(_$LoadingImpl) then) = __$$LoadingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 User seller, QueryProduct query, int rating, String review, List<String> imagesPath
});


@override $UserCopyWith<$Res> get seller;@override $QueryProductCopyWith<$Res> get query;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$WriteReviewStateCopyWithImpl<$Res, _$LoadingImpl> implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);


/// Create a copy of WriteReviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? seller = null,Object? query = null,Object? rating = null,Object? review = null,Object? imagesPath = null,}) {
  return _then(_$LoadingImpl(
seller: null == seller ? _value.seller : seller // ignore: cast_nullable_to_non_nullable
as User,query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as QueryProduct,rating: null == rating ? _value.rating : rating // ignore: cast_nullable_to_non_nullable
as int,review: null == review ? _value.review : review // ignore: cast_nullable_to_non_nullable
as String,imagesPath: null == imagesPath ? _value._imagesPath : imagesPath // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class _$LoadingImpl  implements Loading {
  const _$LoadingImpl({this.seller = const User(), this.query = const QueryProduct(), this.rating = 0, this.review = '', final  List<String> imagesPath = const []}): _imagesPath = imagesPath;

  

@override@JsonKey() final  User seller;
@override@JsonKey() final  QueryProduct query;
@override@JsonKey() final  int rating;
@override@JsonKey() final  String review;
 final  List<String> _imagesPath;
@override@JsonKey() List<String> get imagesPath {
  if (_imagesPath is EqualUnmodifiableListView) return _imagesPath;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imagesPath);
}


@override
String toString() {
  return 'WriteReviewState.loading(seller: $seller, query: $query, rating: $rating, review: $review, imagesPath: $imagesPath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadingImpl&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.query, query) || other.query == query)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.review, review) || other.review == review)&&const DeepCollectionEquality().equals(other._imagesPath, _imagesPath));
}


@override
int get hashCode => Object.hash(runtimeType,seller,query,rating,review,const DeepCollectionEquality().hash(_imagesPath));

/// Create a copy of WriteReviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);








}


abstract class Loading implements WriteReviewState {
  const factory Loading({final  User seller, final  QueryProduct query, final  int rating, final  String review, final  List<String> imagesPath}) = _$LoadingImpl;
  

  

@override User get seller;@override QueryProduct get query;@override int get rating;@override String get review;@override List<String> get imagesPath;
/// Create a copy of WriteReviewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $WriteReviewStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(_$LoadedImpl value, $Res Function(_$LoadedImpl) then) = __$$LoadedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 User seller, QueryProduct query, int rating, String review, List<String> imagesPath
});


@override $UserCopyWith<$Res> get seller;@override $QueryProductCopyWith<$Res> get query;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res> extends _$WriteReviewStateCopyWithImpl<$Res, _$LoadedImpl> implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(_$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);


/// Create a copy of WriteReviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? seller = null,Object? query = null,Object? rating = null,Object? review = null,Object? imagesPath = null,}) {
  return _then(_$LoadedImpl(
seller: null == seller ? _value.seller : seller // ignore: cast_nullable_to_non_nullable
as User,query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as QueryProduct,rating: null == rating ? _value.rating : rating // ignore: cast_nullable_to_non_nullable
as int,review: null == review ? _value.review : review // ignore: cast_nullable_to_non_nullable
as String,imagesPath: null == imagesPath ? _value._imagesPath : imagesPath // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class _$LoadedImpl  implements Loaded {
  const _$LoadedImpl({required this.seller, required this.query, required this.rating, this.review = '', final  List<String> imagesPath = const []}): _imagesPath = imagesPath;

  

@override final  User seller;
@override final  QueryProduct query;
@override final  int rating;
@override@JsonKey() final  String review;
 final  List<String> _imagesPath;
@override@JsonKey() List<String> get imagesPath {
  if (_imagesPath is EqualUnmodifiableListView) return _imagesPath;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imagesPath);
}


@override
String toString() {
  return 'WriteReviewState.loaded(seller: $seller, query: $query, rating: $rating, review: $review, imagesPath: $imagesPath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadedImpl&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.query, query) || other.query == query)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.review, review) || other.review == review)&&const DeepCollectionEquality().equals(other._imagesPath, _imagesPath));
}


@override
int get hashCode => Object.hash(runtimeType,seller,query,rating,review,const DeepCollectionEquality().hash(_imagesPath));

/// Create a copy of WriteReviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);








}


abstract class Loaded implements WriteReviewState {
  const factory Loaded({required final  User seller, required final  QueryProduct query, required final  int rating, final  String review, final  List<String> imagesPath}) = _$LoadedImpl;
  

  

@override User get seller;@override QueryProduct get query;@override int get rating;@override String get review;@override List<String> get imagesPath;
/// Create a copy of WriteReviewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$SubmittingImplCopyWith<$Res> implements $WriteReviewStateCopyWith<$Res> {
  factory _$$SubmittingImplCopyWith(_$SubmittingImpl value, $Res Function(_$SubmittingImpl) then) = __$$SubmittingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 User seller, QueryProduct query, int rating, String review, List<String> imagesPath
});


@override $UserCopyWith<$Res> get seller;@override $QueryProductCopyWith<$Res> get query;
}

/// @nodoc
class __$$SubmittingImplCopyWithImpl<$Res> extends _$WriteReviewStateCopyWithImpl<$Res, _$SubmittingImpl> implements _$$SubmittingImplCopyWith<$Res> {
  __$$SubmittingImplCopyWithImpl(_$SubmittingImpl _value, $Res Function(_$SubmittingImpl) _then)
      : super(_value, _then);


/// Create a copy of WriteReviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? seller = null,Object? query = null,Object? rating = null,Object? review = null,Object? imagesPath = null,}) {
  return _then(_$SubmittingImpl(
seller: null == seller ? _value.seller : seller // ignore: cast_nullable_to_non_nullable
as User,query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as QueryProduct,rating: null == rating ? _value.rating : rating // ignore: cast_nullable_to_non_nullable
as int,review: null == review ? _value.review : review // ignore: cast_nullable_to_non_nullable
as String,imagesPath: null == imagesPath ? _value._imagesPath : imagesPath // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class _$SubmittingImpl  implements Submitting {
  const _$SubmittingImpl({required this.seller, required this.query, required this.rating, this.review = '', final  List<String> imagesPath = const []}): _imagesPath = imagesPath;

  

@override final  User seller;
@override final  QueryProduct query;
@override final  int rating;
@override@JsonKey() final  String review;
 final  List<String> _imagesPath;
@override@JsonKey() List<String> get imagesPath {
  if (_imagesPath is EqualUnmodifiableListView) return _imagesPath;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imagesPath);
}


@override
String toString() {
  return 'WriteReviewState.submitting(seller: $seller, query: $query, rating: $rating, review: $review, imagesPath: $imagesPath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SubmittingImpl&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.query, query) || other.query == query)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.review, review) || other.review == review)&&const DeepCollectionEquality().equals(other._imagesPath, _imagesPath));
}


@override
int get hashCode => Object.hash(runtimeType,seller,query,rating,review,const DeepCollectionEquality().hash(_imagesPath));

/// Create a copy of WriteReviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$SubmittingImplCopyWith<_$SubmittingImpl> get copyWith => __$$SubmittingImplCopyWithImpl<_$SubmittingImpl>(this, _$identity);








}


abstract class Submitting implements WriteReviewState {
  const factory Submitting({required final  User seller, required final  QueryProduct query, required final  int rating, final  String review, final  List<String> imagesPath}) = _$SubmittingImpl;
  

  

@override User get seller;@override QueryProduct get query;@override int get rating;@override String get review;@override List<String> get imagesPath;
/// Create a copy of WriteReviewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$SubmittingImplCopyWith<_$SubmittingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> implements $WriteReviewStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(_$SuccessImpl value, $Res Function(_$SuccessImpl) then) = __$$SuccessImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 User seller, QueryProduct query, int rating, String review, List<String> imagesPath
});


@override $UserCopyWith<$Res> get seller;@override $QueryProductCopyWith<$Res> get query;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res> extends _$WriteReviewStateCopyWithImpl<$Res, _$SuccessImpl> implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(_$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);


/// Create a copy of WriteReviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? seller = null,Object? query = null,Object? rating = null,Object? review = null,Object? imagesPath = null,}) {
  return _then(_$SuccessImpl(
seller: null == seller ? _value.seller : seller // ignore: cast_nullable_to_non_nullable
as User,query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as QueryProduct,rating: null == rating ? _value.rating : rating // ignore: cast_nullable_to_non_nullable
as int,review: null == review ? _value.review : review // ignore: cast_nullable_to_non_nullable
as String,imagesPath: null == imagesPath ? _value._imagesPath : imagesPath // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class _$SuccessImpl  implements Success {
  const _$SuccessImpl({required this.seller, required this.query, required this.rating, this.review = '', final  List<String> imagesPath = const []}): _imagesPath = imagesPath;

  

@override final  User seller;
@override final  QueryProduct query;
@override final  int rating;
@override@JsonKey() final  String review;
 final  List<String> _imagesPath;
@override@JsonKey() List<String> get imagesPath {
  if (_imagesPath is EqualUnmodifiableListView) return _imagesPath;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imagesPath);
}


@override
String toString() {
  return 'WriteReviewState.success(seller: $seller, query: $query, rating: $rating, review: $review, imagesPath: $imagesPath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SuccessImpl&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.query, query) || other.query == query)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.review, review) || other.review == review)&&const DeepCollectionEquality().equals(other._imagesPath, _imagesPath));
}


@override
int get hashCode => Object.hash(runtimeType,seller,query,rating,review,const DeepCollectionEquality().hash(_imagesPath));

/// Create a copy of WriteReviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$SuccessImplCopyWith<_$SuccessImpl> get copyWith => __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);








}


abstract class Success implements WriteReviewState {
  const factory Success({required final  User seller, required final  QueryProduct query, required final  int rating, final  String review, final  List<String> imagesPath}) = _$SuccessImpl;
  

  

@override User get seller;@override QueryProduct get query;@override int get rating;@override String get review;@override List<String> get imagesPath;
/// Create a copy of WriteReviewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$SuccessImplCopyWith<_$SuccessImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$InvalidImplCopyWith<$Res> implements $WriteReviewStateCopyWith<$Res> {
  factory _$$InvalidImplCopyWith(_$InvalidImpl value, $Res Function(_$InvalidImpl) then) = __$$InvalidImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 User seller, QueryProduct query, int rating, String review, List<String> imagesPath
});


@override $UserCopyWith<$Res> get seller;@override $QueryProductCopyWith<$Res> get query;
}

/// @nodoc
class __$$InvalidImplCopyWithImpl<$Res> extends _$WriteReviewStateCopyWithImpl<$Res, _$InvalidImpl> implements _$$InvalidImplCopyWith<$Res> {
  __$$InvalidImplCopyWithImpl(_$InvalidImpl _value, $Res Function(_$InvalidImpl) _then)
      : super(_value, _then);


/// Create a copy of WriteReviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? seller = null,Object? query = null,Object? rating = null,Object? review = null,Object? imagesPath = null,}) {
  return _then(_$InvalidImpl(
seller: null == seller ? _value.seller : seller // ignore: cast_nullable_to_non_nullable
as User,query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as QueryProduct,rating: null == rating ? _value.rating : rating // ignore: cast_nullable_to_non_nullable
as int,review: null == review ? _value.review : review // ignore: cast_nullable_to_non_nullable
as String,imagesPath: null == imagesPath ? _value._imagesPath : imagesPath // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class _$InvalidImpl  implements Invalid {
  const _$InvalidImpl({required this.seller, required this.query, required this.rating, this.review = '', final  List<String> imagesPath = const []}): _imagesPath = imagesPath;

  

@override final  User seller;
@override final  QueryProduct query;
@override final  int rating;
@override@JsonKey() final  String review;
 final  List<String> _imagesPath;
@override@JsonKey() List<String> get imagesPath {
  if (_imagesPath is EqualUnmodifiableListView) return _imagesPath;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imagesPath);
}


@override
String toString() {
  return 'WriteReviewState.invalid(seller: $seller, query: $query, rating: $rating, review: $review, imagesPath: $imagesPath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InvalidImpl&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.query, query) || other.query == query)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.review, review) || other.review == review)&&const DeepCollectionEquality().equals(other._imagesPath, _imagesPath));
}


@override
int get hashCode => Object.hash(runtimeType,seller,query,rating,review,const DeepCollectionEquality().hash(_imagesPath));

/// Create a copy of WriteReviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InvalidImplCopyWith<_$InvalidImpl> get copyWith => __$$InvalidImplCopyWithImpl<_$InvalidImpl>(this, _$identity);








}


abstract class Invalid implements WriteReviewState {
  const factory Invalid({required final  User seller, required final  QueryProduct query, required final  int rating, final  String review, final  List<String> imagesPath}) = _$InvalidImpl;
  

  

@override User get seller;@override QueryProduct get query;@override int get rating;@override String get review;@override List<String> get imagesPath;
/// Create a copy of WriteReviewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InvalidImplCopyWith<_$InvalidImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $WriteReviewStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String message, User seller, QueryProduct query, int rating, String review, List<String> imagesPath
});


@override $UserCopyWith<$Res> get seller;@override $QueryProductCopyWith<$Res> get query;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$WriteReviewStateCopyWithImpl<$Res, _$ErrorImpl> implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);


/// Create a copy of WriteReviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? seller = null,Object? query = null,Object? rating = null,Object? review = null,Object? imagesPath = null,}) {
  return _then(_$ErrorImpl(
message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,seller: null == seller ? _value.seller : seller // ignore: cast_nullable_to_non_nullable
as User,query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as QueryProduct,rating: null == rating ? _value.rating : rating // ignore: cast_nullable_to_non_nullable
as int,review: null == review ? _value.review : review // ignore: cast_nullable_to_non_nullable
as String,imagesPath: null == imagesPath ? _value._imagesPath : imagesPath // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class _$ErrorImpl  implements Error {
  const _$ErrorImpl({required this.message, this.seller = const User(), this.query = const QueryProduct(), this.rating = 0, this.review = '', final  List<String> imagesPath = const []}): _imagesPath = imagesPath;

  

@override final  String message;
@override@JsonKey() final  User seller;
@override@JsonKey() final  QueryProduct query;
@override@JsonKey() final  int rating;
@override@JsonKey() final  String review;
 final  List<String> _imagesPath;
@override@JsonKey() List<String> get imagesPath {
  if (_imagesPath is EqualUnmodifiableListView) return _imagesPath;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imagesPath);
}


@override
String toString() {
  return 'WriteReviewState.error(message: $message, seller: $seller, query: $query, rating: $rating, review: $review, imagesPath: $imagesPath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ErrorImpl&&(identical(other.message, message) || other.message == message)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.query, query) || other.query == query)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.review, review) || other.review == review)&&const DeepCollectionEquality().equals(other._imagesPath, _imagesPath));
}


@override
int get hashCode => Object.hash(runtimeType,message,seller,query,rating,review,const DeepCollectionEquality().hash(_imagesPath));

/// Create a copy of WriteReviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);








}


abstract class Error implements WriteReviewState {
  const factory Error({required final  String message, final  User seller, final  QueryProduct query, final  int rating, final  String review, final  List<String> imagesPath}) = _$ErrorImpl;
  

  

 String get message;@override User get seller;@override QueryProduct get query;@override int get rating;@override String get review;@override List<String> get imagesPath;
/// Create a copy of WriteReviewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
