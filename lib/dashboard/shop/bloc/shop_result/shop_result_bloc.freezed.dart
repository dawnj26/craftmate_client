// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_result_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShopResultEvent {










}

/// @nodoc
abstract class $ShopResultEventCopyWith<$Res>  {
  factory $ShopResultEventCopyWith(ShopResultEvent value, $Res Function(ShopResultEvent) then) = _$ShopResultEventCopyWithImpl<$Res, ShopResultEvent>;



}

/// @nodoc
class _$ShopResultEventCopyWithImpl<$Res,$Val extends ShopResultEvent> implements $ShopResultEventCopyWith<$Res> {
  _$ShopResultEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ShopResultEvent
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>  {
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) = __$$StartedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String query
});



}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res> extends _$ShopResultEventCopyWithImpl<$Res, _$StartedImpl> implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(_$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopResultEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,}) {
  return _then(_$StartedImpl(
null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$StartedImpl  implements _Started {
  const _$StartedImpl(this.query);

  

@override final  String query;

@override
String toString() {
  return 'ShopResultEvent.started(query: $query)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StartedImpl&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

/// Create a copy of ShopResultEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$StartedImplCopyWith<_$StartedImpl> get copyWith => __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);








}


abstract class _Started implements ShopResultEvent {
  const factory _Started(final  String query) = _$StartedImpl;
  

  

 String get query;
/// Create a copy of ShopResultEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$StartedImplCopyWith<_$StartedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$CategorySelectedImplCopyWith<$Res>  {
  factory _$$CategorySelectedImplCopyWith(_$CategorySelectedImpl value, $Res Function(_$CategorySelectedImpl) then) = __$$CategorySelectedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 ProjectCategory category
});


$ProjectCategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$CategorySelectedImplCopyWithImpl<$Res> extends _$ShopResultEventCopyWithImpl<$Res, _$CategorySelectedImpl> implements _$$CategorySelectedImplCopyWith<$Res> {
  __$$CategorySelectedImplCopyWithImpl(_$CategorySelectedImpl _value, $Res Function(_$CategorySelectedImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopResultEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = null,}) {
  return _then(_$CategorySelectedImpl(
null == category ? _value.category : category // ignore: cast_nullable_to_non_nullable
as ProjectCategory,
  ));
}

/// Create a copy of ShopResultEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProjectCategoryCopyWith<$Res> get category {
  
  return $ProjectCategoryCopyWith<$Res>(_value.category, (value) {
    return _then(_value.copyWith(category: value) );
  });
}
}

/// @nodoc


class _$CategorySelectedImpl  implements _CategorySelected {
  const _$CategorySelectedImpl(this.category);

  

@override final  ProjectCategory category;

@override
String toString() {
  return 'ShopResultEvent.categorySelected(category: $category)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CategorySelectedImpl&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

/// Create a copy of ShopResultEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CategorySelectedImplCopyWith<_$CategorySelectedImpl> get copyWith => __$$CategorySelectedImplCopyWithImpl<_$CategorySelectedImpl>(this, _$identity);








}


abstract class _CategorySelected implements ShopResultEvent {
  const factory _CategorySelected(final  ProjectCategory category) = _$CategorySelectedImpl;
  

  

 ProjectCategory get category;
/// Create a copy of ShopResultEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$CategorySelectedImplCopyWith<_$CategorySelectedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LocationSelectedImplCopyWith<$Res>  {
  factory _$$LocationSelectedImplCopyWith(_$LocationSelectedImpl value, $Res Function(_$LocationSelectedImpl) then) = __$$LocationSelectedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 Place location, double radius
});


$PlaceCopyWith<$Res> get location;
}

/// @nodoc
class __$$LocationSelectedImplCopyWithImpl<$Res> extends _$ShopResultEventCopyWithImpl<$Res, _$LocationSelectedImpl> implements _$$LocationSelectedImplCopyWith<$Res> {
  __$$LocationSelectedImplCopyWithImpl(_$LocationSelectedImpl _value, $Res Function(_$LocationSelectedImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopResultEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? location = null,Object? radius = null,}) {
  return _then(_$LocationSelectedImpl(
null == location ? _value.location : location // ignore: cast_nullable_to_non_nullable
as Place,null == radius ? _value.radius : radius // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of ShopResultEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceCopyWith<$Res> get location {
  
  return $PlaceCopyWith<$Res>(_value.location, (value) {
    return _then(_value.copyWith(location: value) );
  });
}
}

/// @nodoc


class _$LocationSelectedImpl  implements _LocationSelected {
  const _$LocationSelectedImpl(this.location, this.radius);

  

@override final  Place location;
@override final  double radius;

@override
String toString() {
  return 'ShopResultEvent.locationSelected(location: $location, radius: $radius)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LocationSelectedImpl&&(identical(other.location, location) || other.location == location)&&(identical(other.radius, radius) || other.radius == radius));
}


@override
int get hashCode => Object.hash(runtimeType,location,radius);

/// Create a copy of ShopResultEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LocationSelectedImplCopyWith<_$LocationSelectedImpl> get copyWith => __$$LocationSelectedImplCopyWithImpl<_$LocationSelectedImpl>(this, _$identity);








}


abstract class _LocationSelected implements ShopResultEvent {
  const factory _LocationSelected(final  Place location, final  double radius) = _$LocationSelectedImpl;
  

  

 Place get location; double get radius;
/// Create a copy of ShopResultEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$LocationSelectedImplCopyWith<_$LocationSelectedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
mixin _$ShopResultState {

 List<QueryProduct> get products => throw _privateConstructorUsedError; List<QueryProduct> get nearbyProducts => throw _privateConstructorUsedError; List<QueryProduct> get filteredProducts => throw _privateConstructorUsedError; List<ProjectCategory> get categories => throw _privateConstructorUsedError; Place get currentLocation => throw _privateConstructorUsedError; ProjectCategory get selectedCategory => throw _privateConstructorUsedError; double get radius => throw _privateConstructorUsedError;







/// Create a copy of ShopResultState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ShopResultStateCopyWith<ShopResultState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ShopResultStateCopyWith<$Res>  {
  factory $ShopResultStateCopyWith(ShopResultState value, $Res Function(ShopResultState) then) = _$ShopResultStateCopyWithImpl<$Res, ShopResultState>;
@useResult
$Res call({
 List<QueryProduct> products, List<QueryProduct> nearbyProducts, List<QueryProduct> filteredProducts, List<ProjectCategory> categories, Place currentLocation, ProjectCategory selectedCategory, double radius
});


$PlaceCopyWith<$Res> get currentLocation;$ProjectCategoryCopyWith<$Res> get selectedCategory;
}

/// @nodoc
class _$ShopResultStateCopyWithImpl<$Res,$Val extends ShopResultState> implements $ShopResultStateCopyWith<$Res> {
  _$ShopResultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ShopResultState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = null,Object? nearbyProducts = null,Object? filteredProducts = null,Object? categories = null,Object? currentLocation = null,Object? selectedCategory = null,Object? radius = null,}) {
  return _then(_value.copyWith(
products: null == products ? _value.products : products // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,nearbyProducts: null == nearbyProducts ? _value.nearbyProducts : nearbyProducts // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,filteredProducts: null == filteredProducts ? _value.filteredProducts : filteredProducts // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,categories: null == categories ? _value.categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,currentLocation: null == currentLocation ? _value.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as Place,selectedCategory: null == selectedCategory ? _value.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as ProjectCategory,radius: null == radius ? _value.radius : radius // ignore: cast_nullable_to_non_nullable
as double,
  )as $Val);
}
/// Create a copy of ShopResultState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceCopyWith<$Res> get currentLocation {
  
  return $PlaceCopyWith<$Res>(_value.currentLocation, (value) {
    return _then(_value.copyWith(currentLocation: value) as $Val);
  });
}/// Create a copy of ShopResultState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProjectCategoryCopyWith<$Res> get selectedCategory {
  
  return $ProjectCategoryCopyWith<$Res>(_value.selectedCategory, (value) {
    return _then(_value.copyWith(selectedCategory: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $ShopResultStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<QueryProduct> products, List<QueryProduct> nearbyProducts, List<QueryProduct> filteredProducts, List<ProjectCategory> categories, Place currentLocation, ProjectCategory selectedCategory, double radius
});


@override $PlaceCopyWith<$Res> get currentLocation;@override $ProjectCategoryCopyWith<$Res> get selectedCategory;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$ShopResultStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopResultState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = null,Object? nearbyProducts = null,Object? filteredProducts = null,Object? categories = null,Object? currentLocation = null,Object? selectedCategory = null,Object? radius = null,}) {
  return _then(_$InitialImpl(
products: null == products ? _value._products : products // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,nearbyProducts: null == nearbyProducts ? _value._nearbyProducts : nearbyProducts // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,filteredProducts: null == filteredProducts ? _value._filteredProducts : filteredProducts // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,currentLocation: null == currentLocation ? _value.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as Place,selectedCategory: null == selectedCategory ? _value.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as ProjectCategory,radius: null == radius ? _value.radius : radius // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl({final  List<QueryProduct> products = const <QueryProduct>[], final  List<QueryProduct> nearbyProducts = const <QueryProduct>[], final  List<QueryProduct> filteredProducts = const <QueryProduct>[], final  List<ProjectCategory> categories = const <ProjectCategory>[], this.currentLocation = const Place(), this.selectedCategory = const ProjectCategory(name: 'All'), this.radius = 100.0}): _products = products,_nearbyProducts = nearbyProducts,_filteredProducts = filteredProducts,_categories = categories;

  

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

 final  List<QueryProduct> _filteredProducts;
@override@JsonKey() List<QueryProduct> get filteredProducts {
  if (_filteredProducts is EqualUnmodifiableListView) return _filteredProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteredProducts);
}

 final  List<ProjectCategory> _categories;
@override@JsonKey() List<ProjectCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override@JsonKey() final  Place currentLocation;
@override@JsonKey() final  ProjectCategory selectedCategory;
@override@JsonKey() final  double radius;

@override
String toString() {
  return 'ShopResultState.initial(products: $products, nearbyProducts: $nearbyProducts, filteredProducts: $filteredProducts, categories: $categories, currentLocation: $currentLocation, selectedCategory: $selectedCategory, radius: $radius)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&const DeepCollectionEquality().equals(other._products, _products)&&const DeepCollectionEquality().equals(other._nearbyProducts, _nearbyProducts)&&const DeepCollectionEquality().equals(other._filteredProducts, _filteredProducts)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&(identical(other.radius, radius) || other.radius == radius));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products),const DeepCollectionEquality().hash(_nearbyProducts),const DeepCollectionEquality().hash(_filteredProducts),const DeepCollectionEquality().hash(_categories),currentLocation,selectedCategory,radius);

/// Create a copy of ShopResultState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements ShopResultState {
  const factory Initial({final  List<QueryProduct> products, final  List<QueryProduct> nearbyProducts, final  List<QueryProduct> filteredProducts, final  List<ProjectCategory> categories, final  Place currentLocation, final  ProjectCategory selectedCategory, final  double radius}) = _$InitialImpl;
  

  

@override List<QueryProduct> get products;@override List<QueryProduct> get nearbyProducts;@override List<QueryProduct> get filteredProducts;@override List<ProjectCategory> get categories;@override Place get currentLocation;@override ProjectCategory get selectedCategory;@override double get radius;
/// Create a copy of ShopResultState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> implements $ShopResultStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl value, $Res Function(_$LoadingImpl) then) = __$$LoadingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<QueryProduct> products, List<QueryProduct> nearbyProducts, List<QueryProduct> filteredProducts, List<ProjectCategory> categories, Place currentLocation, ProjectCategory selectedCategory, double radius
});


@override $PlaceCopyWith<$Res> get currentLocation;@override $ProjectCategoryCopyWith<$Res> get selectedCategory;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$ShopResultStateCopyWithImpl<$Res, _$LoadingImpl> implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopResultState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = null,Object? nearbyProducts = null,Object? filteredProducts = null,Object? categories = null,Object? currentLocation = null,Object? selectedCategory = null,Object? radius = null,}) {
  return _then(_$LoadingImpl(
products: null == products ? _value._products : products // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,nearbyProducts: null == nearbyProducts ? _value._nearbyProducts : nearbyProducts // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,filteredProducts: null == filteredProducts ? _value._filteredProducts : filteredProducts // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,currentLocation: null == currentLocation ? _value.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as Place,selectedCategory: null == selectedCategory ? _value.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as ProjectCategory,radius: null == radius ? _value.radius : radius // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class _$LoadingImpl  implements Loading {
  const _$LoadingImpl({final  List<QueryProduct> products = const <QueryProduct>[], final  List<QueryProduct> nearbyProducts = const <QueryProduct>[], final  List<QueryProduct> filteredProducts = const <QueryProduct>[], final  List<ProjectCategory> categories = const <ProjectCategory>[], this.currentLocation = const Place(), this.selectedCategory = const ProjectCategory(name: 'All'), this.radius = 100.0}): _products = products,_nearbyProducts = nearbyProducts,_filteredProducts = filteredProducts,_categories = categories;

  

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

 final  List<QueryProduct> _filteredProducts;
@override@JsonKey() List<QueryProduct> get filteredProducts {
  if (_filteredProducts is EqualUnmodifiableListView) return _filteredProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteredProducts);
}

 final  List<ProjectCategory> _categories;
@override@JsonKey() List<ProjectCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override@JsonKey() final  Place currentLocation;
@override@JsonKey() final  ProjectCategory selectedCategory;
@override@JsonKey() final  double radius;

@override
String toString() {
  return 'ShopResultState.loading(products: $products, nearbyProducts: $nearbyProducts, filteredProducts: $filteredProducts, categories: $categories, currentLocation: $currentLocation, selectedCategory: $selectedCategory, radius: $radius)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadingImpl&&const DeepCollectionEquality().equals(other._products, _products)&&const DeepCollectionEquality().equals(other._nearbyProducts, _nearbyProducts)&&const DeepCollectionEquality().equals(other._filteredProducts, _filteredProducts)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&(identical(other.radius, radius) || other.radius == radius));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products),const DeepCollectionEquality().hash(_nearbyProducts),const DeepCollectionEquality().hash(_filteredProducts),const DeepCollectionEquality().hash(_categories),currentLocation,selectedCategory,radius);

/// Create a copy of ShopResultState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);








}


abstract class Loading implements ShopResultState {
  const factory Loading({final  List<QueryProduct> products, final  List<QueryProduct> nearbyProducts, final  List<QueryProduct> filteredProducts, final  List<ProjectCategory> categories, final  Place currentLocation, final  ProjectCategory selectedCategory, final  double radius}) = _$LoadingImpl;
  

  

@override List<QueryProduct> get products;@override List<QueryProduct> get nearbyProducts;@override List<QueryProduct> get filteredProducts;@override List<ProjectCategory> get categories;@override Place get currentLocation;@override ProjectCategory get selectedCategory;@override double get radius;
/// Create a copy of ShopResultState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $ShopResultStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(_$LoadedImpl value, $Res Function(_$LoadedImpl) then) = __$$LoadedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<QueryProduct> products, List<QueryProduct> nearbyProducts, List<QueryProduct> filteredProducts, List<ProjectCategory> categories, Place currentLocation, ProjectCategory selectedCategory, double radius
});


@override $PlaceCopyWith<$Res> get currentLocation;@override $ProjectCategoryCopyWith<$Res> get selectedCategory;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res> extends _$ShopResultStateCopyWithImpl<$Res, _$LoadedImpl> implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(_$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopResultState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = null,Object? nearbyProducts = null,Object? filteredProducts = null,Object? categories = null,Object? currentLocation = null,Object? selectedCategory = null,Object? radius = null,}) {
  return _then(_$LoadedImpl(
products: null == products ? _value._products : products // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,nearbyProducts: null == nearbyProducts ? _value._nearbyProducts : nearbyProducts // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,filteredProducts: null == filteredProducts ? _value._filteredProducts : filteredProducts // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,currentLocation: null == currentLocation ? _value.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as Place,selectedCategory: null == selectedCategory ? _value.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as ProjectCategory,radius: null == radius ? _value.radius : radius // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class _$LoadedImpl  implements Loaded {
  const _$LoadedImpl({final  List<QueryProduct> products = const <QueryProduct>[], final  List<QueryProduct> nearbyProducts = const <QueryProduct>[], final  List<QueryProduct> filteredProducts = const <QueryProduct>[], final  List<ProjectCategory> categories = const <ProjectCategory>[], this.currentLocation = const Place(), this.selectedCategory = const ProjectCategory(name: 'All'), this.radius = 100.0}): _products = products,_nearbyProducts = nearbyProducts,_filteredProducts = filteredProducts,_categories = categories;

  

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

 final  List<QueryProduct> _filteredProducts;
@override@JsonKey() List<QueryProduct> get filteredProducts {
  if (_filteredProducts is EqualUnmodifiableListView) return _filteredProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteredProducts);
}

 final  List<ProjectCategory> _categories;
@override@JsonKey() List<ProjectCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override@JsonKey() final  Place currentLocation;
@override@JsonKey() final  ProjectCategory selectedCategory;
@override@JsonKey() final  double radius;

@override
String toString() {
  return 'ShopResultState.loaded(products: $products, nearbyProducts: $nearbyProducts, filteredProducts: $filteredProducts, categories: $categories, currentLocation: $currentLocation, selectedCategory: $selectedCategory, radius: $radius)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadedImpl&&const DeepCollectionEquality().equals(other._products, _products)&&const DeepCollectionEquality().equals(other._nearbyProducts, _nearbyProducts)&&const DeepCollectionEquality().equals(other._filteredProducts, _filteredProducts)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&(identical(other.radius, radius) || other.radius == radius));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products),const DeepCollectionEquality().hash(_nearbyProducts),const DeepCollectionEquality().hash(_filteredProducts),const DeepCollectionEquality().hash(_categories),currentLocation,selectedCategory,radius);

/// Create a copy of ShopResultState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);








}


abstract class Loaded implements ShopResultState {
  const factory Loaded({final  List<QueryProduct> products, final  List<QueryProduct> nearbyProducts, final  List<QueryProduct> filteredProducts, final  List<ProjectCategory> categories, final  Place currentLocation, final  ProjectCategory selectedCategory, final  double radius}) = _$LoadedImpl;
  

  

@override List<QueryProduct> get products;@override List<QueryProduct> get nearbyProducts;@override List<QueryProduct> get filteredProducts;@override List<ProjectCategory> get categories;@override Place get currentLocation;@override ProjectCategory get selectedCategory;@override double get radius;
/// Create a copy of ShopResultState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $ShopResultStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<QueryProduct> products, List<QueryProduct> nearbyProducts, List<QueryProduct> filteredProducts, List<ProjectCategory> categories, Place currentLocation, ProjectCategory selectedCategory, double radius, String message
});


@override $PlaceCopyWith<$Res> get currentLocation;@override $ProjectCategoryCopyWith<$Res> get selectedCategory;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$ShopResultStateCopyWithImpl<$Res, _$ErrorImpl> implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopResultState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = null,Object? nearbyProducts = null,Object? filteredProducts = null,Object? categories = null,Object? currentLocation = null,Object? selectedCategory = null,Object? radius = null,Object? message = null,}) {
  return _then(_$ErrorImpl(
products: null == products ? _value._products : products // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,nearbyProducts: null == nearbyProducts ? _value._nearbyProducts : nearbyProducts // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,filteredProducts: null == filteredProducts ? _value._filteredProducts : filteredProducts // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,currentLocation: null == currentLocation ? _value.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as Place,selectedCategory: null == selectedCategory ? _value.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as ProjectCategory,radius: null == radius ? _value.radius : radius // ignore: cast_nullable_to_non_nullable
as double,message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$ErrorImpl  implements Error {
  const _$ErrorImpl({final  List<QueryProduct> products = const <QueryProduct>[], final  List<QueryProduct> nearbyProducts = const <QueryProduct>[], final  List<QueryProduct> filteredProducts = const <QueryProduct>[], final  List<ProjectCategory> categories = const <ProjectCategory>[], this.currentLocation = const Place(), this.selectedCategory = const ProjectCategory(name: 'All'), this.radius = 100.0, required this.message}): _products = products,_nearbyProducts = nearbyProducts,_filteredProducts = filteredProducts,_categories = categories;

  

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

 final  List<QueryProduct> _filteredProducts;
@override@JsonKey() List<QueryProduct> get filteredProducts {
  if (_filteredProducts is EqualUnmodifiableListView) return _filteredProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteredProducts);
}

 final  List<ProjectCategory> _categories;
@override@JsonKey() List<ProjectCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override@JsonKey() final  Place currentLocation;
@override@JsonKey() final  ProjectCategory selectedCategory;
@override@JsonKey() final  double radius;
@override final  String message;

@override
String toString() {
  return 'ShopResultState.error(products: $products, nearbyProducts: $nearbyProducts, filteredProducts: $filteredProducts, categories: $categories, currentLocation: $currentLocation, selectedCategory: $selectedCategory, radius: $radius, message: $message)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ErrorImpl&&const DeepCollectionEquality().equals(other._products, _products)&&const DeepCollectionEquality().equals(other._nearbyProducts, _nearbyProducts)&&const DeepCollectionEquality().equals(other._filteredProducts, _filteredProducts)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&(identical(other.radius, radius) || other.radius == radius)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products),const DeepCollectionEquality().hash(_nearbyProducts),const DeepCollectionEquality().hash(_filteredProducts),const DeepCollectionEquality().hash(_categories),currentLocation,selectedCategory,radius,message);

/// Create a copy of ShopResultState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);








}


abstract class Error implements ShopResultState {
  const factory Error({final  List<QueryProduct> products, final  List<QueryProduct> nearbyProducts, final  List<QueryProduct> filteredProducts, final  List<ProjectCategory> categories, final  Place currentLocation, final  ProjectCategory selectedCategory, final  double radius, required final  String message}) = _$ErrorImpl;
  

  

@override List<QueryProduct> get products;@override List<QueryProduct> get nearbyProducts;@override List<QueryProduct> get filteredProducts;@override List<ProjectCategory> get categories;@override Place get currentLocation;@override ProjectCategory get selectedCategory;@override double get radius; String get message;
/// Create a copy of ShopResultState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
