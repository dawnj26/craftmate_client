// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_listing_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddListingEvent {










}

/// @nodoc
abstract class $AddListingEventCopyWith<$Res>  {
  factory $AddListingEventCopyWith(AddListingEvent value, $Res Function(AddListingEvent) then) = _$AddListingEventCopyWithImpl<$Res, AddListingEvent>;



}

/// @nodoc
class _$AddListingEventCopyWithImpl<$Res,$Val extends AddListingEvent> implements $AddListingEventCopyWith<$Res> {
  _$AddListingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of AddListingEvent
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>  {
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) = __$$StartedImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res> extends _$AddListingEventCopyWithImpl<$Res, _$StartedImpl> implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(_$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);


/// Create a copy of AddListingEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$StartedImpl  implements _Started {
  const _$StartedImpl();

  



@override
String toString() {
  return 'AddListingEvent.started()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StartedImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _Started implements AddListingEvent {
  const factory _Started() = _$StartedImpl;
  

  



}

/// @nodoc
abstract class _$$TitleChangedImplCopyWith<$Res>  {
  factory _$$TitleChangedImplCopyWith(_$TitleChangedImpl value, $Res Function(_$TitleChangedImpl) then) = __$$TitleChangedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String title
});



}

/// @nodoc
class __$$TitleChangedImplCopyWithImpl<$Res> extends _$AddListingEventCopyWithImpl<$Res, _$TitleChangedImpl> implements _$$TitleChangedImplCopyWith<$Res> {
  __$$TitleChangedImplCopyWithImpl(_$TitleChangedImpl _value, $Res Function(_$TitleChangedImpl) _then)
      : super(_value, _then);


/// Create a copy of AddListingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,}) {
  return _then(_$TitleChangedImpl(
null == title ? _value.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$TitleChangedImpl  implements _TitleChanged {
  const _$TitleChangedImpl(this.title);

  

@override final  String title;

@override
String toString() {
  return 'AddListingEvent.titleChanged(title: $title)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$TitleChangedImpl&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,title);

/// Create a copy of AddListingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$TitleChangedImplCopyWith<_$TitleChangedImpl> get copyWith => __$$TitleChangedImplCopyWithImpl<_$TitleChangedImpl>(this, _$identity);








}


abstract class _TitleChanged implements AddListingEvent {
  const factory _TitleChanged(final  String title) = _$TitleChangedImpl;
  

  

 String get title;
/// Create a copy of AddListingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$TitleChangedImplCopyWith<_$TitleChangedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$PriceChangedImplCopyWith<$Res>  {
  factory _$$PriceChangedImplCopyWith(_$PriceChangedImpl value, $Res Function(_$PriceChangedImpl) then) = __$$PriceChangedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String price
});



}

/// @nodoc
class __$$PriceChangedImplCopyWithImpl<$Res> extends _$AddListingEventCopyWithImpl<$Res, _$PriceChangedImpl> implements _$$PriceChangedImplCopyWith<$Res> {
  __$$PriceChangedImplCopyWithImpl(_$PriceChangedImpl _value, $Res Function(_$PriceChangedImpl) _then)
      : super(_value, _then);


/// Create a copy of AddListingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? price = null,}) {
  return _then(_$PriceChangedImpl(
null == price ? _value.price : price // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$PriceChangedImpl  implements _PriceChanged {
  const _$PriceChangedImpl(this.price);

  

@override final  String price;

@override
String toString() {
  return 'AddListingEvent.priceChanged(price: $price)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$PriceChangedImpl&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,price);

/// Create a copy of AddListingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$PriceChangedImplCopyWith<_$PriceChangedImpl> get copyWith => __$$PriceChangedImplCopyWithImpl<_$PriceChangedImpl>(this, _$identity);








}


abstract class _PriceChanged implements AddListingEvent {
  const factory _PriceChanged(final  String price) = _$PriceChangedImpl;
  

  

 String get price;
/// Create a copy of AddListingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$PriceChangedImplCopyWith<_$PriceChangedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$DescriptionChangedImplCopyWith<$Res>  {
  factory _$$DescriptionChangedImplCopyWith(_$DescriptionChangedImpl value, $Res Function(_$DescriptionChangedImpl) then) = __$$DescriptionChangedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String description
});



}

/// @nodoc
class __$$DescriptionChangedImplCopyWithImpl<$Res> extends _$AddListingEventCopyWithImpl<$Res, _$DescriptionChangedImpl> implements _$$DescriptionChangedImplCopyWith<$Res> {
  __$$DescriptionChangedImplCopyWithImpl(_$DescriptionChangedImpl _value, $Res Function(_$DescriptionChangedImpl) _then)
      : super(_value, _then);


/// Create a copy of AddListingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = null,}) {
  return _then(_$DescriptionChangedImpl(
null == description ? _value.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$DescriptionChangedImpl  implements _DescriptionChanged {
  const _$DescriptionChangedImpl(this.description);

  

@override final  String description;

@override
String toString() {
  return 'AddListingEvent.descriptionChanged(description: $description)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$DescriptionChangedImpl&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,description);

/// Create a copy of AddListingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$DescriptionChangedImplCopyWith<_$DescriptionChangedImpl> get copyWith => __$$DescriptionChangedImplCopyWithImpl<_$DescriptionChangedImpl>(this, _$identity);








}


abstract class _DescriptionChanged implements AddListingEvent {
  const factory _DescriptionChanged(final  String description) = _$DescriptionChangedImpl;
  

  

 String get description;
/// Create a copy of AddListingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$DescriptionChangedImplCopyWith<_$DescriptionChangedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$CategoryChangedImplCopyWith<$Res>  {
  factory _$$CategoryChangedImplCopyWith(_$CategoryChangedImpl value, $Res Function(_$CategoryChangedImpl) then) = __$$CategoryChangedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String category
});



}

/// @nodoc
class __$$CategoryChangedImplCopyWithImpl<$Res> extends _$AddListingEventCopyWithImpl<$Res, _$CategoryChangedImpl> implements _$$CategoryChangedImplCopyWith<$Res> {
  __$$CategoryChangedImplCopyWithImpl(_$CategoryChangedImpl _value, $Res Function(_$CategoryChangedImpl) _then)
      : super(_value, _then);


/// Create a copy of AddListingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = null,}) {
  return _then(_$CategoryChangedImpl(
null == category ? _value.category : category // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$CategoryChangedImpl  implements _CategoryChanged {
  const _$CategoryChangedImpl(this.category);

  

@override final  String category;

@override
String toString() {
  return 'AddListingEvent.categoryChanged(category: $category)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CategoryChangedImpl&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

/// Create a copy of AddListingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CategoryChangedImplCopyWith<_$CategoryChangedImpl> get copyWith => __$$CategoryChangedImplCopyWithImpl<_$CategoryChangedImpl>(this, _$identity);








}


abstract class _CategoryChanged implements AddListingEvent {
  const factory _CategoryChanged(final  String category) = _$CategoryChangedImpl;
  

  

 String get category;
/// Create a copy of AddListingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$CategoryChangedImplCopyWith<_$CategoryChangedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$AddressChangedImplCopyWith<$Res>  {
  factory _$$AddressChangedImplCopyWith(_$AddressChangedImpl value, $Res Function(_$AddressChangedImpl) then) = __$$AddressChangedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 Place place
});


$PlaceCopyWith<$Res> get place;
}

/// @nodoc
class __$$AddressChangedImplCopyWithImpl<$Res> extends _$AddListingEventCopyWithImpl<$Res, _$AddressChangedImpl> implements _$$AddressChangedImplCopyWith<$Res> {
  __$$AddressChangedImplCopyWithImpl(_$AddressChangedImpl _value, $Res Function(_$AddressChangedImpl) _then)
      : super(_value, _then);


/// Create a copy of AddListingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? place = null,}) {
  return _then(_$AddressChangedImpl(
null == place ? _value.place : place // ignore: cast_nullable_to_non_nullable
as Place,
  ));
}

/// Create a copy of AddListingEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceCopyWith<$Res> get place {
  
  return $PlaceCopyWith<$Res>(_value.place, (value) {
    return _then(_value.copyWith(place: value) );
  });
}
}

/// @nodoc


class _$AddressChangedImpl  implements _AddressChanged {
  const _$AddressChangedImpl(this.place);

  

@override final  Place place;

@override
String toString() {
  return 'AddListingEvent.addressChanged(place: $place)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$AddressChangedImpl&&(identical(other.place, place) || other.place == place));
}


@override
int get hashCode => Object.hash(runtimeType,place);

/// Create a copy of AddListingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$AddressChangedImplCopyWith<_$AddressChangedImpl> get copyWith => __$$AddressChangedImplCopyWithImpl<_$AddressChangedImpl>(this, _$identity);








}


abstract class _AddressChanged implements AddListingEvent {
  const factory _AddressChanged(final  Place place) = _$AddressChangedImpl;
  

  

 Place get place;
/// Create a copy of AddListingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$AddressChangedImplCopyWith<_$AddressChangedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ImageAddedImplCopyWith<$Res>  {
  factory _$$ImageAddedImplCopyWith(_$ImageAddedImpl value, $Res Function(_$ImageAddedImpl) then) = __$$ImageAddedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 List<String> images
});



}

/// @nodoc
class __$$ImageAddedImplCopyWithImpl<$Res> extends _$AddListingEventCopyWithImpl<$Res, _$ImageAddedImpl> implements _$$ImageAddedImplCopyWith<$Res> {
  __$$ImageAddedImplCopyWithImpl(_$ImageAddedImpl _value, $Res Function(_$ImageAddedImpl) _then)
      : super(_value, _then);


/// Create a copy of AddListingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? images = null,}) {
  return _then(_$ImageAddedImpl(
null == images ? _value._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class _$ImageAddedImpl  implements _ImageAdded {
  const _$ImageAddedImpl(final  List<String> images): _images = images;

  

 final  List<String> _images;
@override List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}


@override
String toString() {
  return 'AddListingEvent.imageAdded(images: $images)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ImageAddedImpl&&const DeepCollectionEquality().equals(other._images, _images));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_images));

/// Create a copy of AddListingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ImageAddedImplCopyWith<_$ImageAddedImpl> get copyWith => __$$ImageAddedImplCopyWithImpl<_$ImageAddedImpl>(this, _$identity);








}


abstract class _ImageAdded implements AddListingEvent {
  const factory _ImageAdded(final  List<String> images) = _$ImageAddedImpl;
  

  

 List<String> get images;
/// Create a copy of AddListingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$ImageAddedImplCopyWith<_$ImageAddedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ImageRemovedImplCopyWith<$Res>  {
  factory _$$ImageRemovedImplCopyWith(_$ImageRemovedImpl value, $Res Function(_$ImageRemovedImpl) then) = __$$ImageRemovedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 int index
});



}

/// @nodoc
class __$$ImageRemovedImplCopyWithImpl<$Res> extends _$AddListingEventCopyWithImpl<$Res, _$ImageRemovedImpl> implements _$$ImageRemovedImplCopyWith<$Res> {
  __$$ImageRemovedImplCopyWithImpl(_$ImageRemovedImpl _value, $Res Function(_$ImageRemovedImpl) _then)
      : super(_value, _then);


/// Create a copy of AddListingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,}) {
  return _then(_$ImageRemovedImpl(
null == index ? _value.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _$ImageRemovedImpl  implements _ImageRemoved {
  const _$ImageRemovedImpl(this.index);

  

@override final  int index;

@override
String toString() {
  return 'AddListingEvent.imageRemoved(index: $index)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ImageRemovedImpl&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

/// Create a copy of AddListingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ImageRemovedImplCopyWith<_$ImageRemovedImpl> get copyWith => __$$ImageRemovedImplCopyWithImpl<_$ImageRemovedImpl>(this, _$identity);








}


abstract class _ImageRemoved implements AddListingEvent {
  const factory _ImageRemoved(final  int index) = _$ImageRemovedImpl;
  

  

 int get index;
/// Create a copy of AddListingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$ImageRemovedImplCopyWith<_$ImageRemovedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$PublishedImplCopyWith<$Res>  {
  factory _$$PublishedImplCopyWith(_$PublishedImpl value, $Res Function(_$PublishedImpl) then) = __$$PublishedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 User user
});


$UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$PublishedImplCopyWithImpl<$Res> extends _$AddListingEventCopyWithImpl<$Res, _$PublishedImpl> implements _$$PublishedImplCopyWith<$Res> {
  __$$PublishedImplCopyWithImpl(_$PublishedImpl _value, $Res Function(_$PublishedImpl) _then)
      : super(_value, _then);


/// Create a copy of AddListingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,}) {
  return _then(_$PublishedImpl(
null == user ? _value.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}

/// Create a copy of AddListingEvent
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


class _$PublishedImpl  implements _Published {
  const _$PublishedImpl(this.user);

  

@override final  User user;

@override
String toString() {
  return 'AddListingEvent.published(user: $user)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$PublishedImpl&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

/// Create a copy of AddListingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$PublishedImplCopyWith<_$PublishedImpl> get copyWith => __$$PublishedImplCopyWithImpl<_$PublishedImpl>(this, _$identity);








}


abstract class _Published implements AddListingEvent {
  const factory _Published(final  User user) = _$PublishedImpl;
  

  

 User get user;
/// Create a copy of AddListingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$PublishedImplCopyWith<_$PublishedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
mixin _$AddListingState {

 ListingTitle get title => throw _privateConstructorUsedError; ListingPrice get price => throw _privateConstructorUsedError; String get description => throw _privateConstructorUsedError; ListingCategory get category => throw _privateConstructorUsedError; List<String> get images => throw _privateConstructorUsedError; List<ProjectCategory> get categories => throw _privateConstructorUsedError; Place? get place => throw _privateConstructorUsedError;







/// Create a copy of AddListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$AddListingStateCopyWith<AddListingState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $AddListingStateCopyWith<$Res>  {
  factory $AddListingStateCopyWith(AddListingState value, $Res Function(AddListingState) then) = _$AddListingStateCopyWithImpl<$Res, AddListingState>;
@useResult
$Res call({
 ListingTitle title, ListingPrice price, String description, ListingCategory category, List<String> images, List<ProjectCategory> categories, Place? place
});


$PlaceCopyWith<$Res>? get place;
}

/// @nodoc
class _$AddListingStateCopyWithImpl<$Res,$Val extends AddListingState> implements $AddListingStateCopyWith<$Res> {
  _$AddListingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of AddListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? price = null,Object? description = null,Object? category = null,Object? images = null,Object? categories = null,Object? place = freezed,}) {
  return _then(_value.copyWith(
title: null == title ? _value.title : title // ignore: cast_nullable_to_non_nullable
as ListingTitle,price: null == price ? _value.price : price // ignore: cast_nullable_to_non_nullable
as ListingPrice,description: null == description ? _value.description : description // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _value.category : category // ignore: cast_nullable_to_non_nullable
as ListingCategory,images: null == images ? _value.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,categories: null == categories ? _value.categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,place: freezed == place ? _value.place : place // ignore: cast_nullable_to_non_nullable
as Place?,
  )as $Val);
}
/// Create a copy of AddListingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceCopyWith<$Res>? get place {
    if (_value.place == null) {
    return null;
  }

  return $PlaceCopyWith<$Res>(_value.place!, (value) {
    return _then(_value.copyWith(place: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $AddListingStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 ListingTitle title, ListingPrice price, String description, ListingCategory category, List<String> images, List<ProjectCategory> categories, Place? place
});


@override $PlaceCopyWith<$Res>? get place;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$AddListingStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of AddListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? price = null,Object? description = null,Object? category = null,Object? images = null,Object? categories = null,Object? place = freezed,}) {
  return _then(_$InitialImpl(
title: null == title ? _value.title : title // ignore: cast_nullable_to_non_nullable
as ListingTitle,price: null == price ? _value.price : price // ignore: cast_nullable_to_non_nullable
as ListingPrice,description: null == description ? _value.description : description // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _value.category : category // ignore: cast_nullable_to_non_nullable
as ListingCategory,images: null == images ? _value._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,place: freezed == place ? _value.place : place // ignore: cast_nullable_to_non_nullable
as Place?,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl({this.title = const ListingTitle.pure(), this.price = const ListingPrice.pure(), this.description = '', this.category = const ListingCategory.pure(), final  List<String> images = const [], final  List<ProjectCategory> categories = const [], this.place}): _images = images,_categories = categories;

  

@override@JsonKey() final  ListingTitle title;
@override@JsonKey() final  ListingPrice price;
@override@JsonKey() final  String description;
@override@JsonKey() final  ListingCategory category;
 final  List<String> _images;
@override@JsonKey() List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

 final  List<ProjectCategory> _categories;
@override@JsonKey() List<ProjectCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override final  Place? place;

@override
String toString() {
  return 'AddListingState.initial(title: $title, price: $price, description: $description, category: $category, images: $images, categories: $categories, place: $place)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other._images, _images)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.place, place) || other.place == place));
}


@override
int get hashCode => Object.hash(runtimeType,title,price,description,category,const DeepCollectionEquality().hash(_images),const DeepCollectionEquality().hash(_categories),place);

/// Create a copy of AddListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements AddListingState {
  const factory Initial({final  ListingTitle title, final  ListingPrice price, final  String description, final  ListingCategory category, final  List<String> images, final  List<ProjectCategory> categories, final  Place? place}) = _$InitialImpl;
  

  

@override ListingTitle get title;@override ListingPrice get price;@override String get description;@override ListingCategory get category;@override List<String> get images;@override List<ProjectCategory> get categories;@override Place? get place;
/// Create a copy of AddListingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> implements $AddListingStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl value, $Res Function(_$LoadingImpl) then) = __$$LoadingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 ListingTitle title, ListingPrice price, String description, ListingCategory category, List<String> images, List<ProjectCategory> categories, Place? place
});


@override $PlaceCopyWith<$Res>? get place;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$AddListingStateCopyWithImpl<$Res, _$LoadingImpl> implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);


/// Create a copy of AddListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? price = null,Object? description = null,Object? category = null,Object? images = null,Object? categories = null,Object? place = freezed,}) {
  return _then(_$LoadingImpl(
title: null == title ? _value.title : title // ignore: cast_nullable_to_non_nullable
as ListingTitle,price: null == price ? _value.price : price // ignore: cast_nullable_to_non_nullable
as ListingPrice,description: null == description ? _value.description : description // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _value.category : category // ignore: cast_nullable_to_non_nullable
as ListingCategory,images: null == images ? _value._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,place: freezed == place ? _value.place : place // ignore: cast_nullable_to_non_nullable
as Place?,
  ));
}


}

/// @nodoc


class _$LoadingImpl  implements Loading {
  const _$LoadingImpl({this.title = const ListingTitle.pure(), this.price = const ListingPrice.pure(), this.description = '', this.category = const ListingCategory.pure(), final  List<String> images = const [], final  List<ProjectCategory> categories = const [], this.place}): _images = images,_categories = categories;

  

@override@JsonKey() final  ListingTitle title;
@override@JsonKey() final  ListingPrice price;
@override@JsonKey() final  String description;
@override@JsonKey() final  ListingCategory category;
 final  List<String> _images;
@override@JsonKey() List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

 final  List<ProjectCategory> _categories;
@override@JsonKey() List<ProjectCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override final  Place? place;

@override
String toString() {
  return 'AddListingState.loading(title: $title, price: $price, description: $description, category: $category, images: $images, categories: $categories, place: $place)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadingImpl&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other._images, _images)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.place, place) || other.place == place));
}


@override
int get hashCode => Object.hash(runtimeType,title,price,description,category,const DeepCollectionEquality().hash(_images),const DeepCollectionEquality().hash(_categories),place);

/// Create a copy of AddListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);








}


abstract class Loading implements AddListingState {
  const factory Loading({final  ListingTitle title, final  ListingPrice price, final  String description, final  ListingCategory category, final  List<String> images, final  List<ProjectCategory> categories, final  Place? place}) = _$LoadingImpl;
  

  

@override ListingTitle get title;@override ListingPrice get price;@override String get description;@override ListingCategory get category;@override List<String> get images;@override List<ProjectCategory> get categories;@override Place? get place;
/// Create a copy of AddListingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $AddListingStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(_$LoadedImpl value, $Res Function(_$LoadedImpl) then) = __$$LoadedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 ListingTitle title, ListingPrice price, String description, ListingCategory category, List<String> images, List<ProjectCategory> categories, Place? place
});


@override $PlaceCopyWith<$Res>? get place;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res> extends _$AddListingStateCopyWithImpl<$Res, _$LoadedImpl> implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(_$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);


/// Create a copy of AddListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? price = null,Object? description = null,Object? category = null,Object? images = null,Object? categories = null,Object? place = freezed,}) {
  return _then(_$LoadedImpl(
title: null == title ? _value.title : title // ignore: cast_nullable_to_non_nullable
as ListingTitle,price: null == price ? _value.price : price // ignore: cast_nullable_to_non_nullable
as ListingPrice,description: null == description ? _value.description : description // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _value.category : category // ignore: cast_nullable_to_non_nullable
as ListingCategory,images: null == images ? _value._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,place: freezed == place ? _value.place : place // ignore: cast_nullable_to_non_nullable
as Place?,
  ));
}


}

/// @nodoc


class _$LoadedImpl  implements Loaded {
  const _$LoadedImpl({this.title = const ListingTitle.pure(), this.price = const ListingPrice.pure(), this.description = '', this.category = const ListingCategory.pure(), final  List<String> images = const [], final  List<ProjectCategory> categories = const [], this.place}): _images = images,_categories = categories;

  

@override@JsonKey() final  ListingTitle title;
@override@JsonKey() final  ListingPrice price;
@override@JsonKey() final  String description;
@override@JsonKey() final  ListingCategory category;
 final  List<String> _images;
@override@JsonKey() List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

 final  List<ProjectCategory> _categories;
@override@JsonKey() List<ProjectCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override final  Place? place;

@override
String toString() {
  return 'AddListingState.loaded(title: $title, price: $price, description: $description, category: $category, images: $images, categories: $categories, place: $place)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadedImpl&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other._images, _images)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.place, place) || other.place == place));
}


@override
int get hashCode => Object.hash(runtimeType,title,price,description,category,const DeepCollectionEquality().hash(_images),const DeepCollectionEquality().hash(_categories),place);

/// Create a copy of AddListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);








}


abstract class Loaded implements AddListingState {
  const factory Loaded({final  ListingTitle title, final  ListingPrice price, final  String description, final  ListingCategory category, final  List<String> images, final  List<ProjectCategory> categories, final  Place? place}) = _$LoadedImpl;
  

  

@override ListingTitle get title;@override ListingPrice get price;@override String get description;@override ListingCategory get category;@override List<String> get images;@override List<ProjectCategory> get categories;@override Place? get place;
/// Create a copy of AddListingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$PublishingImplCopyWith<$Res> implements $AddListingStateCopyWith<$Res> {
  factory _$$PublishingImplCopyWith(_$PublishingImpl value, $Res Function(_$PublishingImpl) then) = __$$PublishingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 ListingTitle title, ListingPrice price, String description, ListingCategory category, List<String> images, List<ProjectCategory> categories, Place? place
});


@override $PlaceCopyWith<$Res>? get place;
}

/// @nodoc
class __$$PublishingImplCopyWithImpl<$Res> extends _$AddListingStateCopyWithImpl<$Res, _$PublishingImpl> implements _$$PublishingImplCopyWith<$Res> {
  __$$PublishingImplCopyWithImpl(_$PublishingImpl _value, $Res Function(_$PublishingImpl) _then)
      : super(_value, _then);


/// Create a copy of AddListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? price = null,Object? description = null,Object? category = null,Object? images = null,Object? categories = null,Object? place = freezed,}) {
  return _then(_$PublishingImpl(
title: null == title ? _value.title : title // ignore: cast_nullable_to_non_nullable
as ListingTitle,price: null == price ? _value.price : price // ignore: cast_nullable_to_non_nullable
as ListingPrice,description: null == description ? _value.description : description // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _value.category : category // ignore: cast_nullable_to_non_nullable
as ListingCategory,images: null == images ? _value._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,place: freezed == place ? _value.place : place // ignore: cast_nullable_to_non_nullable
as Place?,
  ));
}


}

/// @nodoc


class _$PublishingImpl  implements Publishing {
  const _$PublishingImpl({this.title = const ListingTitle.pure(), this.price = const ListingPrice.pure(), this.description = '', this.category = const ListingCategory.pure(), final  List<String> images = const [], final  List<ProjectCategory> categories = const [], this.place}): _images = images,_categories = categories;

  

@override@JsonKey() final  ListingTitle title;
@override@JsonKey() final  ListingPrice price;
@override@JsonKey() final  String description;
@override@JsonKey() final  ListingCategory category;
 final  List<String> _images;
@override@JsonKey() List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

 final  List<ProjectCategory> _categories;
@override@JsonKey() List<ProjectCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override final  Place? place;

@override
String toString() {
  return 'AddListingState.publishing(title: $title, price: $price, description: $description, category: $category, images: $images, categories: $categories, place: $place)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$PublishingImpl&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other._images, _images)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.place, place) || other.place == place));
}


@override
int get hashCode => Object.hash(runtimeType,title,price,description,category,const DeepCollectionEquality().hash(_images),const DeepCollectionEquality().hash(_categories),place);

/// Create a copy of AddListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$PublishingImplCopyWith<_$PublishingImpl> get copyWith => __$$PublishingImplCopyWithImpl<_$PublishingImpl>(this, _$identity);








}


abstract class Publishing implements AddListingState {
  const factory Publishing({final  ListingTitle title, final  ListingPrice price, final  String description, final  ListingCategory category, final  List<String> images, final  List<ProjectCategory> categories, final  Place? place}) = _$PublishingImpl;
  

  

@override ListingTitle get title;@override ListingPrice get price;@override String get description;@override ListingCategory get category;@override List<String> get images;@override List<ProjectCategory> get categories;@override Place? get place;
/// Create a copy of AddListingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$PublishingImplCopyWith<_$PublishingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> implements $AddListingStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(_$SuccessImpl value, $Res Function(_$SuccessImpl) then) = __$$SuccessImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 ListingTitle title, ListingPrice price, String description, ListingCategory category, List<String> images, List<ProjectCategory> categories, Place? place
});


@override $PlaceCopyWith<$Res>? get place;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res> extends _$AddListingStateCopyWithImpl<$Res, _$SuccessImpl> implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(_$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);


/// Create a copy of AddListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? price = null,Object? description = null,Object? category = null,Object? images = null,Object? categories = null,Object? place = freezed,}) {
  return _then(_$SuccessImpl(
title: null == title ? _value.title : title // ignore: cast_nullable_to_non_nullable
as ListingTitle,price: null == price ? _value.price : price // ignore: cast_nullable_to_non_nullable
as ListingPrice,description: null == description ? _value.description : description // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _value.category : category // ignore: cast_nullable_to_non_nullable
as ListingCategory,images: null == images ? _value._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,place: freezed == place ? _value.place : place // ignore: cast_nullable_to_non_nullable
as Place?,
  ));
}


}

/// @nodoc


class _$SuccessImpl  implements Success {
  const _$SuccessImpl({this.title = const ListingTitle.pure(), this.price = const ListingPrice.pure(), this.description = '', this.category = const ListingCategory.pure(), final  List<String> images = const [], final  List<ProjectCategory> categories = const [], this.place}): _images = images,_categories = categories;

  

@override@JsonKey() final  ListingTitle title;
@override@JsonKey() final  ListingPrice price;
@override@JsonKey() final  String description;
@override@JsonKey() final  ListingCategory category;
 final  List<String> _images;
@override@JsonKey() List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

 final  List<ProjectCategory> _categories;
@override@JsonKey() List<ProjectCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override final  Place? place;

@override
String toString() {
  return 'AddListingState.success(title: $title, price: $price, description: $description, category: $category, images: $images, categories: $categories, place: $place)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SuccessImpl&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other._images, _images)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.place, place) || other.place == place));
}


@override
int get hashCode => Object.hash(runtimeType,title,price,description,category,const DeepCollectionEquality().hash(_images),const DeepCollectionEquality().hash(_categories),place);

/// Create a copy of AddListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$SuccessImplCopyWith<_$SuccessImpl> get copyWith => __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);








}


abstract class Success implements AddListingState {
  const factory Success({final  ListingTitle title, final  ListingPrice price, final  String description, final  ListingCategory category, final  List<String> images, final  List<ProjectCategory> categories, final  Place? place}) = _$SuccessImpl;
  

  

@override ListingTitle get title;@override ListingPrice get price;@override String get description;@override ListingCategory get category;@override List<String> get images;@override List<ProjectCategory> get categories;@override Place? get place;
/// Create a copy of AddListingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$SuccessImplCopyWith<_$SuccessImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $AddListingStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 ListingTitle title, ListingPrice price, String description, ListingCategory category, List<String> images, List<ProjectCategory> categories, Place? place, String message
});


@override $PlaceCopyWith<$Res>? get place;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$AddListingStateCopyWithImpl<$Res, _$ErrorImpl> implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);


/// Create a copy of AddListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? price = null,Object? description = null,Object? category = null,Object? images = null,Object? categories = null,Object? place = freezed,Object? message = null,}) {
  return _then(_$ErrorImpl(
title: null == title ? _value.title : title // ignore: cast_nullable_to_non_nullable
as ListingTitle,price: null == price ? _value.price : price // ignore: cast_nullable_to_non_nullable
as ListingPrice,description: null == description ? _value.description : description // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _value.category : category // ignore: cast_nullable_to_non_nullable
as ListingCategory,images: null == images ? _value._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,place: freezed == place ? _value.place : place // ignore: cast_nullable_to_non_nullable
as Place?,message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$ErrorImpl  implements Error {
  const _$ErrorImpl({this.title = const ListingTitle.pure(), this.price = const ListingPrice.pure(), this.description = '', this.category = const ListingCategory.pure(), final  List<String> images = const [], final  List<ProjectCategory> categories = const [], this.place, required this.message}): _images = images,_categories = categories;

  

@override@JsonKey() final  ListingTitle title;
@override@JsonKey() final  ListingPrice price;
@override@JsonKey() final  String description;
@override@JsonKey() final  ListingCategory category;
 final  List<String> _images;
@override@JsonKey() List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

 final  List<ProjectCategory> _categories;
@override@JsonKey() List<ProjectCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override final  Place? place;
@override final  String message;

@override
String toString() {
  return 'AddListingState.error(title: $title, price: $price, description: $description, category: $category, images: $images, categories: $categories, place: $place, message: $message)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ErrorImpl&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other._images, _images)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.place, place) || other.place == place)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,title,price,description,category,const DeepCollectionEquality().hash(_images),const DeepCollectionEquality().hash(_categories),place,message);

/// Create a copy of AddListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);








}


abstract class Error implements AddListingState {
  const factory Error({final  ListingTitle title, final  ListingPrice price, final  String description, final  ListingCategory category, final  List<String> images, final  List<ProjectCategory> categories, final  Place? place, required final  String message}) = _$ErrorImpl;
  

  

@override ListingTitle get title;@override ListingPrice get price;@override String get description;@override ListingCategory get category;@override List<String> get images;@override List<ProjectCategory> get categories;@override Place? get place; String get message;
/// Create a copy of AddListingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
