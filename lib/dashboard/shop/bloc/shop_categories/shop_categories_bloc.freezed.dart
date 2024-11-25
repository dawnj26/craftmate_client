// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_categories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShopCategoriesEvent {










}

/// @nodoc
abstract class $ShopCategoriesEventCopyWith<$Res>  {
  factory $ShopCategoriesEventCopyWith(ShopCategoriesEvent value, $Res Function(ShopCategoriesEvent) then) = _$ShopCategoriesEventCopyWithImpl<$Res, ShopCategoriesEvent>;



}

/// @nodoc
class _$ShopCategoriesEventCopyWithImpl<$Res,$Val extends ShopCategoriesEvent> implements $ShopCategoriesEventCopyWith<$Res> {
  _$ShopCategoriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ShopCategoriesEvent
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>  {
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) = __$$StartedImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res> extends _$ShopCategoriesEventCopyWithImpl<$Res, _$StartedImpl> implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(_$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopCategoriesEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$StartedImpl  implements _Started {
  const _$StartedImpl();

  



@override
String toString() {
  return 'ShopCategoriesEvent.started()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StartedImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _Started implements ShopCategoriesEvent {
  const factory _Started() = _$StartedImpl;
  

  



}

/// @nodoc
mixin _$ShopCategoriesState {

 List<ProjectCategory> get categories => throw _privateConstructorUsedError;







/// Create a copy of ShopCategoriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ShopCategoriesStateCopyWith<ShopCategoriesState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ShopCategoriesStateCopyWith<$Res>  {
  factory $ShopCategoriesStateCopyWith(ShopCategoriesState value, $Res Function(ShopCategoriesState) then) = _$ShopCategoriesStateCopyWithImpl<$Res, ShopCategoriesState>;
@useResult
$Res call({
 List<ProjectCategory> categories
});



}

/// @nodoc
class _$ShopCategoriesStateCopyWithImpl<$Res,$Val extends ShopCategoriesState> implements $ShopCategoriesStateCopyWith<$Res> {
  _$ShopCategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ShopCategoriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = null,}) {
  return _then(_value.copyWith(
categories: null == categories ? _value.categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,
  )as $Val);
}

}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $ShopCategoriesStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<ProjectCategory> categories
});



}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$ShopCategoriesStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopCategoriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = null,}) {
  return _then(_$InitialImpl(
categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl({final  List<ProjectCategory> categories = const []}): _categories = categories;

  

 final  List<ProjectCategory> _categories;
@override@JsonKey() List<ProjectCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


@override
String toString() {
  return 'ShopCategoriesState.initial(categories: $categories)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&const DeepCollectionEquality().equals(other._categories, _categories));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories));

/// Create a copy of ShopCategoriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements ShopCategoriesState {
  const factory Initial({final  List<ProjectCategory> categories}) = _$InitialImpl;
  

  

@override List<ProjectCategory> get categories;
/// Create a copy of ShopCategoriesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> implements $ShopCategoriesStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl value, $Res Function(_$LoadingImpl) then) = __$$LoadingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<ProjectCategory> categories
});



}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$ShopCategoriesStateCopyWithImpl<$Res, _$LoadingImpl> implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopCategoriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = null,}) {
  return _then(_$LoadingImpl(
categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,
  ));
}


}

/// @nodoc


class _$LoadingImpl  implements Loading {
  const _$LoadingImpl({final  List<ProjectCategory> categories = const []}): _categories = categories;

  

 final  List<ProjectCategory> _categories;
@override@JsonKey() List<ProjectCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


@override
String toString() {
  return 'ShopCategoriesState.loading(categories: $categories)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadingImpl&&const DeepCollectionEquality().equals(other._categories, _categories));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories));

/// Create a copy of ShopCategoriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);








}


abstract class Loading implements ShopCategoriesState {
  const factory Loading({final  List<ProjectCategory> categories}) = _$LoadingImpl;
  

  

@override List<ProjectCategory> get categories;
/// Create a copy of ShopCategoriesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $ShopCategoriesStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(_$LoadedImpl value, $Res Function(_$LoadedImpl) then) = __$$LoadedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<ProjectCategory> categories
});



}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res> extends _$ShopCategoriesStateCopyWithImpl<$Res, _$LoadedImpl> implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(_$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopCategoriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = null,}) {
  return _then(_$LoadedImpl(
categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,
  ));
}


}

/// @nodoc


class _$LoadedImpl  implements Loaded {
  const _$LoadedImpl({required final  List<ProjectCategory> categories}): _categories = categories;

  

 final  List<ProjectCategory> _categories;
@override List<ProjectCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


@override
String toString() {
  return 'ShopCategoriesState.loaded(categories: $categories)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadedImpl&&const DeepCollectionEquality().equals(other._categories, _categories));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories));

/// Create a copy of ShopCategoriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);








}


abstract class Loaded implements ShopCategoriesState {
  const factory Loaded({required final  List<ProjectCategory> categories}) = _$LoadedImpl;
  

  

@override List<ProjectCategory> get categories;
/// Create a copy of ShopCategoriesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $ShopCategoriesStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String message, List<ProjectCategory> categories
});



}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$ShopCategoriesStateCopyWithImpl<$Res, _$ErrorImpl> implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopCategoriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? categories = null,}) {
  return _then(_$ErrorImpl(
message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,
  ));
}


}

/// @nodoc


class _$ErrorImpl  implements Error {
  const _$ErrorImpl({required this.message, final  List<ProjectCategory> categories = const []}): _categories = categories;

  

@override final  String message;
 final  List<ProjectCategory> _categories;
@override@JsonKey() List<ProjectCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


@override
String toString() {
  return 'ShopCategoriesState.error(message: $message, categories: $categories)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ErrorImpl&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._categories, _categories));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(_categories));

/// Create a copy of ShopCategoriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);








}


abstract class Error implements ShopCategoriesState {
  const factory Error({required final  String message, final  List<ProjectCategory> categories}) = _$ErrorImpl;
  

  

 String get message;@override List<ProjectCategory> get categories;
/// Create a copy of ShopCategoriesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
