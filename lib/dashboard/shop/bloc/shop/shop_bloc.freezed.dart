// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShopEvent {










}

/// @nodoc
abstract class $ShopEventCopyWith<$Res>  {
  factory $ShopEventCopyWith(ShopEvent value, $Res Function(ShopEvent) then) = _$ShopEventCopyWithImpl<$Res, ShopEvent>;



}

/// @nodoc
class _$ShopEventCopyWithImpl<$Res,$Val extends ShopEvent> implements $ShopEventCopyWith<$Res> {
  _$ShopEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>  {
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) = __$$StartedImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res> extends _$ShopEventCopyWithImpl<$Res, _$StartedImpl> implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(_$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$StartedImpl  implements _Started {
  const _$StartedImpl();

  



@override
String toString() {
  return 'ShopEvent.started()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StartedImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _Started implements ShopEvent {
  const factory _Started() = _$StartedImpl;
  

  



}

/// @nodoc
abstract class _$$CurrentLocationChangedImplCopyWith<$Res>  {
  factory _$$CurrentLocationChangedImplCopyWith(_$CurrentLocationChangedImpl value, $Res Function(_$CurrentLocationChangedImpl) then) = __$$CurrentLocationChangedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 Place currentLocation, double radiusKm
});


$PlaceCopyWith<$Res> get currentLocation;
}

/// @nodoc
class __$$CurrentLocationChangedImplCopyWithImpl<$Res> extends _$ShopEventCopyWithImpl<$Res, _$CurrentLocationChangedImpl> implements _$$CurrentLocationChangedImplCopyWith<$Res> {
  __$$CurrentLocationChangedImplCopyWithImpl(_$CurrentLocationChangedImpl _value, $Res Function(_$CurrentLocationChangedImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentLocation = null,Object? radiusKm = null,}) {
  return _then(_$CurrentLocationChangedImpl(
null == currentLocation ? _value.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as Place,null == radiusKm ? _value.radiusKm : radiusKm // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceCopyWith<$Res> get currentLocation {
  
  return $PlaceCopyWith<$Res>(_value.currentLocation, (value) {
    return _then(_value.copyWith(currentLocation: value) );
  });
}
}

/// @nodoc


class _$CurrentLocationChangedImpl  implements _CurrentLocationChanged {
  const _$CurrentLocationChangedImpl(this.currentLocation, this.radiusKm);

  

@override final  Place currentLocation;
@override final  double radiusKm;

@override
String toString() {
  return 'ShopEvent.currentLocationChanged(currentLocation: $currentLocation, radiusKm: $radiusKm)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CurrentLocationChangedImpl&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation)&&(identical(other.radiusKm, radiusKm) || other.radiusKm == radiusKm));
}


@override
int get hashCode => Object.hash(runtimeType,currentLocation,radiusKm);

/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CurrentLocationChangedImplCopyWith<_$CurrentLocationChangedImpl> get copyWith => __$$CurrentLocationChangedImplCopyWithImpl<_$CurrentLocationChangedImpl>(this, _$identity);








}


abstract class _CurrentLocationChanged implements ShopEvent {
  const factory _CurrentLocationChanged(final  Place currentLocation, final  double radiusKm) = _$CurrentLocationChangedImpl;
  

  

 Place get currentLocation; double get radiusKm;
/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$CurrentLocationChangedImplCopyWith<_$CurrentLocationChangedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$RefreshedImplCopyWith<$Res>  {
  factory _$$RefreshedImplCopyWith(_$RefreshedImpl value, $Res Function(_$RefreshedImpl) then) = __$$RefreshedImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$RefreshedImplCopyWithImpl<$Res> extends _$ShopEventCopyWithImpl<$Res, _$RefreshedImpl> implements _$$RefreshedImplCopyWith<$Res> {
  __$$RefreshedImplCopyWithImpl(_$RefreshedImpl _value, $Res Function(_$RefreshedImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$RefreshedImpl  implements _Refreshed {
  const _$RefreshedImpl();

  



@override
String toString() {
  return 'ShopEvent.refreshed()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$RefreshedImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _Refreshed implements ShopEvent {
  const factory _Refreshed() = _$RefreshedImpl;
  

  



}

/// @nodoc
mixin _$ShopState {

 List<QueryProduct> get products => throw _privateConstructorUsedError; List<QueryProduct> get nearbyProducts => throw _privateConstructorUsedError; Place get currentLocation => throw _privateConstructorUsedError;







/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ShopStateCopyWith<ShopState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ShopStateCopyWith<$Res>  {
  factory $ShopStateCopyWith(ShopState value, $Res Function(ShopState) then) = _$ShopStateCopyWithImpl<$Res, ShopState>;
@useResult
$Res call({
 List<QueryProduct> products, List<QueryProduct> nearbyProducts, Place currentLocation
});


$PlaceCopyWith<$Res> get currentLocation;
}

/// @nodoc
class _$ShopStateCopyWithImpl<$Res,$Val extends ShopState> implements $ShopStateCopyWith<$Res> {
  _$ShopStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = null,Object? nearbyProducts = null,Object? currentLocation = null,}) {
  return _then(_value.copyWith(
products: null == products ? _value.products : products // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,nearbyProducts: null == nearbyProducts ? _value.nearbyProducts : nearbyProducts // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,currentLocation: null == currentLocation ? _value.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as Place,
  )as $Val);
}
/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceCopyWith<$Res> get currentLocation {
  
  return $PlaceCopyWith<$Res>(_value.currentLocation, (value) {
    return _then(_value.copyWith(currentLocation: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $ShopStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<QueryProduct> products, List<QueryProduct> nearbyProducts, Place currentLocation
});


@override $PlaceCopyWith<$Res> get currentLocation;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$ShopStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = null,Object? nearbyProducts = null,Object? currentLocation = null,}) {
  return _then(_$InitialImpl(
products: null == products ? _value._products : products // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,nearbyProducts: null == nearbyProducts ? _value._nearbyProducts : nearbyProducts // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,currentLocation: null == currentLocation ? _value.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as Place,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl({final  List<QueryProduct> products = const <QueryProduct>[], final  List<QueryProduct> nearbyProducts = const <QueryProduct>[], this.currentLocation = const Place()}): _products = products,_nearbyProducts = nearbyProducts;

  

 final  List<QueryProduct> _products;
@override@JsonKey() List<QueryProduct> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

 final  List<QueryProduct> _nearbyProducts;
@override@JsonKey() List<QueryProduct> get nearbyProducts {
  if (_nearbyProducts is EqualUnmodifiableListView) return _nearbyProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_nearbyProducts);
}

@override@JsonKey() final  Place currentLocation;

@override
String toString() {
  return 'ShopState.initial(products: $products, nearbyProducts: $nearbyProducts, currentLocation: $currentLocation)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&const DeepCollectionEquality().equals(other._products, _products)&&const DeepCollectionEquality().equals(other._nearbyProducts, _nearbyProducts)&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products),const DeepCollectionEquality().hash(_nearbyProducts),currentLocation);

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements ShopState {
  const factory Initial({final  List<QueryProduct> products, final  List<QueryProduct> nearbyProducts, final  Place currentLocation}) = _$InitialImpl;
  

  

@override List<QueryProduct> get products;@override List<QueryProduct> get nearbyProducts;@override Place get currentLocation;
/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$InitializingImplCopyWith<$Res> implements $ShopStateCopyWith<$Res> {
  factory _$$InitializingImplCopyWith(_$InitializingImpl value, $Res Function(_$InitializingImpl) then) = __$$InitializingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<QueryProduct> products, List<QueryProduct> nearbyProducts, Place currentLocation
});


@override $PlaceCopyWith<$Res> get currentLocation;
}

/// @nodoc
class __$$InitializingImplCopyWithImpl<$Res> extends _$ShopStateCopyWithImpl<$Res, _$InitializingImpl> implements _$$InitializingImplCopyWith<$Res> {
  __$$InitializingImplCopyWithImpl(_$InitializingImpl _value, $Res Function(_$InitializingImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = null,Object? nearbyProducts = null,Object? currentLocation = null,}) {
  return _then(_$InitializingImpl(
products: null == products ? _value._products : products // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,nearbyProducts: null == nearbyProducts ? _value._nearbyProducts : nearbyProducts // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,currentLocation: null == currentLocation ? _value.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as Place,
  ));
}


}

/// @nodoc


class _$InitializingImpl  implements Initializing {
  const _$InitializingImpl({final  List<QueryProduct> products = const <QueryProduct>[], final  List<QueryProduct> nearbyProducts = const <QueryProduct>[], this.currentLocation = const Place()}): _products = products,_nearbyProducts = nearbyProducts;

  

 final  List<QueryProduct> _products;
@override@JsonKey() List<QueryProduct> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

 final  List<QueryProduct> _nearbyProducts;
@override@JsonKey() List<QueryProduct> get nearbyProducts {
  if (_nearbyProducts is EqualUnmodifiableListView) return _nearbyProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_nearbyProducts);
}

@override@JsonKey() final  Place currentLocation;

@override
String toString() {
  return 'ShopState.initializing(products: $products, nearbyProducts: $nearbyProducts, currentLocation: $currentLocation)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitializingImpl&&const DeepCollectionEquality().equals(other._products, _products)&&const DeepCollectionEquality().equals(other._nearbyProducts, _nearbyProducts)&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products),const DeepCollectionEquality().hash(_nearbyProducts),currentLocation);

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitializingImplCopyWith<_$InitializingImpl> get copyWith => __$$InitializingImplCopyWithImpl<_$InitializingImpl>(this, _$identity);








}


abstract class Initializing implements ShopState {
  const factory Initializing({final  List<QueryProduct> products, final  List<QueryProduct> nearbyProducts, final  Place currentLocation}) = _$InitializingImpl;
  

  

@override List<QueryProduct> get products;@override List<QueryProduct> get nearbyProducts;@override Place get currentLocation;
/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitializingImplCopyWith<_$InitializingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> implements $ShopStateCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(_$InitializedImpl value, $Res Function(_$InitializedImpl) then) = __$$InitializedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<QueryProduct> products, List<QueryProduct> nearbyProducts, Place currentLocation
});


@override $PlaceCopyWith<$Res> get currentLocation;
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res> extends _$ShopStateCopyWithImpl<$Res, _$InitializedImpl> implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(_$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = null,Object? nearbyProducts = null,Object? currentLocation = null,}) {
  return _then(_$InitializedImpl(
products: null == products ? _value._products : products // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,nearbyProducts: null == nearbyProducts ? _value._nearbyProducts : nearbyProducts // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,currentLocation: null == currentLocation ? _value.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as Place,
  ));
}


}

/// @nodoc


class _$InitializedImpl  implements Initialized {
  const _$InitializedImpl({final  List<QueryProduct> products = const <QueryProduct>[], final  List<QueryProduct> nearbyProducts = const <QueryProduct>[], this.currentLocation = const Place()}): _products = products,_nearbyProducts = nearbyProducts;

  

 final  List<QueryProduct> _products;
@override@JsonKey() List<QueryProduct> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

 final  List<QueryProduct> _nearbyProducts;
@override@JsonKey() List<QueryProduct> get nearbyProducts {
  if (_nearbyProducts is EqualUnmodifiableListView) return _nearbyProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_nearbyProducts);
}

@override@JsonKey() final  Place currentLocation;

@override
String toString() {
  return 'ShopState.initialized(products: $products, nearbyProducts: $nearbyProducts, currentLocation: $currentLocation)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitializedImpl&&const DeepCollectionEquality().equals(other._products, _products)&&const DeepCollectionEquality().equals(other._nearbyProducts, _nearbyProducts)&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products),const DeepCollectionEquality().hash(_nearbyProducts),currentLocation);

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitializedImplCopyWith<_$InitializedImpl> get copyWith => __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);








}


abstract class Initialized implements ShopState {
  const factory Initialized({final  List<QueryProduct> products, final  List<QueryProduct> nearbyProducts, final  Place currentLocation}) = _$InitializedImpl;
  

  

@override List<QueryProduct> get products;@override List<QueryProduct> get nearbyProducts;@override Place get currentLocation;
/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitializedImplCopyWith<_$InitializedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> implements $ShopStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl value, $Res Function(_$LoadingImpl) then) = __$$LoadingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<QueryProduct> products, List<QueryProduct> nearbyProducts, Place currentLocation
});


@override $PlaceCopyWith<$Res> get currentLocation;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$ShopStateCopyWithImpl<$Res, _$LoadingImpl> implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = null,Object? nearbyProducts = null,Object? currentLocation = null,}) {
  return _then(_$LoadingImpl(
products: null == products ? _value._products : products // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,nearbyProducts: null == nearbyProducts ? _value._nearbyProducts : nearbyProducts // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,currentLocation: null == currentLocation ? _value.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as Place,
  ));
}


}

/// @nodoc


class _$LoadingImpl  implements Loading {
  const _$LoadingImpl({final  List<QueryProduct> products = const <QueryProduct>[], final  List<QueryProduct> nearbyProducts = const <QueryProduct>[], this.currentLocation = const Place()}): _products = products,_nearbyProducts = nearbyProducts;

  

 final  List<QueryProduct> _products;
@override@JsonKey() List<QueryProduct> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

 final  List<QueryProduct> _nearbyProducts;
@override@JsonKey() List<QueryProduct> get nearbyProducts {
  if (_nearbyProducts is EqualUnmodifiableListView) return _nearbyProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_nearbyProducts);
}

@override@JsonKey() final  Place currentLocation;

@override
String toString() {
  return 'ShopState.loading(products: $products, nearbyProducts: $nearbyProducts, currentLocation: $currentLocation)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadingImpl&&const DeepCollectionEquality().equals(other._products, _products)&&const DeepCollectionEquality().equals(other._nearbyProducts, _nearbyProducts)&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products),const DeepCollectionEquality().hash(_nearbyProducts),currentLocation);

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);








}


abstract class Loading implements ShopState {
  const factory Loading({final  List<QueryProduct> products, final  List<QueryProduct> nearbyProducts, final  Place currentLocation}) = _$LoadingImpl;
  

  

@override List<QueryProduct> get products;@override List<QueryProduct> get nearbyProducts;@override Place get currentLocation;
/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $ShopStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(_$LoadedImpl value, $Res Function(_$LoadedImpl) then) = __$$LoadedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<QueryProduct> products, List<QueryProduct> nearbyProducts, Place currentLocation
});


@override $PlaceCopyWith<$Res> get currentLocation;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res> extends _$ShopStateCopyWithImpl<$Res, _$LoadedImpl> implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(_$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = null,Object? nearbyProducts = null,Object? currentLocation = null,}) {
  return _then(_$LoadedImpl(
products: null == products ? _value._products : products // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,nearbyProducts: null == nearbyProducts ? _value._nearbyProducts : nearbyProducts // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,currentLocation: null == currentLocation ? _value.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as Place,
  ));
}


}

/// @nodoc


class _$LoadedImpl  implements Loaded {
  const _$LoadedImpl({required final  List<QueryProduct> products, required final  List<QueryProduct> nearbyProducts, this.currentLocation = const Place()}): _products = products,_nearbyProducts = nearbyProducts;

  

 final  List<QueryProduct> _products;
@override List<QueryProduct> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

 final  List<QueryProduct> _nearbyProducts;
@override List<QueryProduct> get nearbyProducts {
  if (_nearbyProducts is EqualUnmodifiableListView) return _nearbyProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_nearbyProducts);
}

@override@JsonKey() final  Place currentLocation;

@override
String toString() {
  return 'ShopState.loaded(products: $products, nearbyProducts: $nearbyProducts, currentLocation: $currentLocation)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadedImpl&&const DeepCollectionEquality().equals(other._products, _products)&&const DeepCollectionEquality().equals(other._nearbyProducts, _nearbyProducts)&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products),const DeepCollectionEquality().hash(_nearbyProducts),currentLocation);

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);








}


abstract class Loaded implements ShopState {
  const factory Loaded({required final  List<QueryProduct> products, required final  List<QueryProduct> nearbyProducts, final  Place currentLocation}) = _$LoadedImpl;
  

  

@override List<QueryProduct> get products;@override List<QueryProduct> get nearbyProducts;@override Place get currentLocation;
/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $ShopStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String message, List<QueryProduct> products, List<QueryProduct> nearbyProducts, Place currentLocation
});


@override $PlaceCopyWith<$Res> get currentLocation;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$ShopStateCopyWithImpl<$Res, _$ErrorImpl> implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? products = null,Object? nearbyProducts = null,Object? currentLocation = null,}) {
  return _then(_$ErrorImpl(
message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,products: null == products ? _value._products : products // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,nearbyProducts: null == nearbyProducts ? _value._nearbyProducts : nearbyProducts // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,currentLocation: null == currentLocation ? _value.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as Place,
  ));
}


}

/// @nodoc


class _$ErrorImpl  implements Error {
  const _$ErrorImpl({required this.message, final  List<QueryProduct> products = const <QueryProduct>[], final  List<QueryProduct> nearbyProducts = const <QueryProduct>[], this.currentLocation = const Place()}): _products = products,_nearbyProducts = nearbyProducts;

  

@override final  String message;
 final  List<QueryProduct> _products;
@override@JsonKey() List<QueryProduct> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

 final  List<QueryProduct> _nearbyProducts;
@override@JsonKey() List<QueryProduct> get nearbyProducts {
  if (_nearbyProducts is EqualUnmodifiableListView) return _nearbyProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_nearbyProducts);
}

@override@JsonKey() final  Place currentLocation;

@override
String toString() {
  return 'ShopState.error(message: $message, products: $products, nearbyProducts: $nearbyProducts, currentLocation: $currentLocation)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ErrorImpl&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._products, _products)&&const DeepCollectionEquality().equals(other._nearbyProducts, _nearbyProducts)&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(_products),const DeepCollectionEquality().hash(_nearbyProducts),currentLocation);

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);








}


abstract class Error implements ShopState {
  const factory Error({required final  String message, final  List<QueryProduct> products, final  List<QueryProduct> nearbyProducts, final  Place currentLocation}) = _$ErrorImpl;
  

  

 String get message;@override List<QueryProduct> get products;@override List<QueryProduct> get nearbyProducts;@override Place get currentLocation;
/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
