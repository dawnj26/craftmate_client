// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_material_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddMaterialEvent {










}

/// @nodoc
abstract class $AddMaterialEventCopyWith<$Res>  {
  factory $AddMaterialEventCopyWith(AddMaterialEvent value, $Res Function(AddMaterialEvent) then) = _$AddMaterialEventCopyWithImpl<$Res, AddMaterialEvent>;



}

/// @nodoc
class _$AddMaterialEventCopyWithImpl<$Res,$Val extends AddMaterialEvent> implements $AddMaterialEventCopyWith<$Res> {
  _$AddMaterialEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of AddMaterialEvent
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>  {
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) = __$$StartedImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res> extends _$AddMaterialEventCopyWithImpl<$Res, _$StartedImpl> implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(_$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);


/// Create a copy of AddMaterialEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$StartedImpl  implements _Started {
  const _$StartedImpl();

  



@override
String toString() {
  return 'AddMaterialEvent.started()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StartedImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _Started implements AddMaterialEvent {
  const factory _Started() = _$StartedImpl;
  

  



}

/// @nodoc
abstract class _$$NameChangedImplCopyWith<$Res>  {
  factory _$$NameChangedImplCopyWith(_$NameChangedImpl value, $Res Function(_$NameChangedImpl) then) = __$$NameChangedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String nameText
});



}

/// @nodoc
class __$$NameChangedImplCopyWithImpl<$Res> extends _$AddMaterialEventCopyWithImpl<$Res, _$NameChangedImpl> implements _$$NameChangedImplCopyWith<$Res> {
  __$$NameChangedImplCopyWithImpl(_$NameChangedImpl _value, $Res Function(_$NameChangedImpl) _then)
      : super(_value, _then);


/// Create a copy of AddMaterialEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nameText = null,}) {
  return _then(_$NameChangedImpl(
null == nameText ? _value.nameText : nameText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$NameChangedImpl  implements _NameChanged {
  const _$NameChangedImpl(this.nameText);

  

@override final  String nameText;

@override
String toString() {
  return 'AddMaterialEvent.nameChanged(nameText: $nameText)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$NameChangedImpl&&(identical(other.nameText, nameText) || other.nameText == nameText));
}


@override
int get hashCode => Object.hash(runtimeType,nameText);

/// Create a copy of AddMaterialEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith => __$$NameChangedImplCopyWithImpl<_$NameChangedImpl>(this, _$identity);








}


abstract class _NameChanged implements AddMaterialEvent {
  const factory _NameChanged(final  String nameText) = _$NameChangedImpl;
  

  

 String get nameText;
/// Create a copy of AddMaterialEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$DescriptionChangedImplCopyWith<$Res>  {
  factory _$$DescriptionChangedImplCopyWith(_$DescriptionChangedImpl value, $Res Function(_$DescriptionChangedImpl) then) = __$$DescriptionChangedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String descriptionText
});



}

/// @nodoc
class __$$DescriptionChangedImplCopyWithImpl<$Res> extends _$AddMaterialEventCopyWithImpl<$Res, _$DescriptionChangedImpl> implements _$$DescriptionChangedImplCopyWith<$Res> {
  __$$DescriptionChangedImplCopyWithImpl(_$DescriptionChangedImpl _value, $Res Function(_$DescriptionChangedImpl) _then)
      : super(_value, _then);


/// Create a copy of AddMaterialEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? descriptionText = null,}) {
  return _then(_$DescriptionChangedImpl(
null == descriptionText ? _value.descriptionText : descriptionText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$DescriptionChangedImpl  implements _DescriptionChanged {
  const _$DescriptionChangedImpl(this.descriptionText);

  

@override final  String descriptionText;

@override
String toString() {
  return 'AddMaterialEvent.descriptionChanged(descriptionText: $descriptionText)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$DescriptionChangedImpl&&(identical(other.descriptionText, descriptionText) || other.descriptionText == descriptionText));
}


@override
int get hashCode => Object.hash(runtimeType,descriptionText);

/// Create a copy of AddMaterialEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$DescriptionChangedImplCopyWith<_$DescriptionChangedImpl> get copyWith => __$$DescriptionChangedImplCopyWithImpl<_$DescriptionChangedImpl>(this, _$identity);








}


abstract class _DescriptionChanged implements AddMaterialEvent {
  const factory _DescriptionChanged(final  String descriptionText) = _$DescriptionChangedImpl;
  

  

 String get descriptionText;
/// Create a copy of AddMaterialEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$DescriptionChangedImplCopyWith<_$DescriptionChangedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$QuantityChangedImplCopyWith<$Res>  {
  factory _$$QuantityChangedImplCopyWith(_$QuantityChangedImpl value, $Res Function(_$QuantityChangedImpl) then) = __$$QuantityChangedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 int quantity
});



}

/// @nodoc
class __$$QuantityChangedImplCopyWithImpl<$Res> extends _$AddMaterialEventCopyWithImpl<$Res, _$QuantityChangedImpl> implements _$$QuantityChangedImplCopyWith<$Res> {
  __$$QuantityChangedImplCopyWithImpl(_$QuantityChangedImpl _value, $Res Function(_$QuantityChangedImpl) _then)
      : super(_value, _then);


/// Create a copy of AddMaterialEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? quantity = null,}) {
  return _then(_$QuantityChangedImpl(
null == quantity ? _value.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _$QuantityChangedImpl  implements _QuantityChanged {
  const _$QuantityChangedImpl(this.quantity);

  

@override final  int quantity;

@override
String toString() {
  return 'AddMaterialEvent.quantityChanged(quantity: $quantity)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$QuantityChangedImpl&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,quantity);

/// Create a copy of AddMaterialEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$QuantityChangedImplCopyWith<_$QuantityChangedImpl> get copyWith => __$$QuantityChangedImplCopyWithImpl<_$QuantityChangedImpl>(this, _$identity);








}


abstract class _QuantityChanged implements AddMaterialEvent {
  const factory _QuantityChanged(final  int quantity) = _$QuantityChangedImpl;
  

  

 int get quantity;
/// Create a copy of AddMaterialEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$QuantityChangedImplCopyWith<_$QuantityChangedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ImagePathUploadedImplCopyWith<$Res>  {
  factory _$$ImagePathUploadedImplCopyWith(_$ImagePathUploadedImpl value, $Res Function(_$ImagePathUploadedImpl) then) = __$$ImagePathUploadedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String imagePath
});



}

/// @nodoc
class __$$ImagePathUploadedImplCopyWithImpl<$Res> extends _$AddMaterialEventCopyWithImpl<$Res, _$ImagePathUploadedImpl> implements _$$ImagePathUploadedImplCopyWith<$Res> {
  __$$ImagePathUploadedImplCopyWithImpl(_$ImagePathUploadedImpl _value, $Res Function(_$ImagePathUploadedImpl) _then)
      : super(_value, _then);


/// Create a copy of AddMaterialEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imagePath = null,}) {
  return _then(_$ImagePathUploadedImpl(
null == imagePath ? _value.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$ImagePathUploadedImpl  implements _ImagePathUploaded {
  const _$ImagePathUploadedImpl(this.imagePath);

  

@override final  String imagePath;

@override
String toString() {
  return 'AddMaterialEvent.imageUploaded(imagePath: $imagePath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ImagePathUploadedImpl&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}


@override
int get hashCode => Object.hash(runtimeType,imagePath);

/// Create a copy of AddMaterialEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ImagePathUploadedImplCopyWith<_$ImagePathUploadedImpl> get copyWith => __$$ImagePathUploadedImplCopyWithImpl<_$ImagePathUploadedImpl>(this, _$identity);








}


abstract class _ImagePathUploaded implements AddMaterialEvent {
  const factory _ImagePathUploaded(final  String imagePath) = _$ImagePathUploadedImpl;
  

  

 String get imagePath;
/// Create a copy of AddMaterialEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$ImagePathUploadedImplCopyWith<_$ImagePathUploadedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$SubmitImplCopyWith<$Res>  {
  factory _$$SubmitImplCopyWith(_$SubmitImpl value, $Res Function(_$SubmitImpl) then) = __$$SubmitImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$SubmitImplCopyWithImpl<$Res> extends _$AddMaterialEventCopyWithImpl<$Res, _$SubmitImpl> implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(_$SubmitImpl _value, $Res Function(_$SubmitImpl) _then)
      : super(_value, _then);


/// Create a copy of AddMaterialEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$SubmitImpl  implements _Submit {
  const _$SubmitImpl();

  



@override
String toString() {
  return 'AddMaterialEvent.submit()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SubmitImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _Submit implements AddMaterialEvent {
  const factory _Submit() = _$SubmitImpl;
  

  



}

/// @nodoc
abstract class _$$CategorySelectedImplCopyWith<$Res>  {
  factory _$$CategorySelectedImplCopyWith(_$CategorySelectedImpl value, $Res Function(_$CategorySelectedImpl) then) = __$$CategorySelectedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 int categoryId
});



}

/// @nodoc
class __$$CategorySelectedImplCopyWithImpl<$Res> extends _$AddMaterialEventCopyWithImpl<$Res, _$CategorySelectedImpl> implements _$$CategorySelectedImplCopyWith<$Res> {
  __$$CategorySelectedImplCopyWithImpl(_$CategorySelectedImpl _value, $Res Function(_$CategorySelectedImpl) _then)
      : super(_value, _then);


/// Create a copy of AddMaterialEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categoryId = null,}) {
  return _then(_$CategorySelectedImpl(
null == categoryId ? _value.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _$CategorySelectedImpl  implements _CategorySelected {
  const _$CategorySelectedImpl(this.categoryId);

  

@override final  int categoryId;

@override
String toString() {
  return 'AddMaterialEvent.categorySelected(categoryId: $categoryId)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CategorySelectedImpl&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}


@override
int get hashCode => Object.hash(runtimeType,categoryId);

/// Create a copy of AddMaterialEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CategorySelectedImplCopyWith<_$CategorySelectedImpl> get copyWith => __$$CategorySelectedImplCopyWithImpl<_$CategorySelectedImpl>(this, _$identity);








}


abstract class _CategorySelected implements AddMaterialEvent {
  const factory _CategorySelected(final  int categoryId) = _$CategorySelectedImpl;
  

  

 int get categoryId;
/// Create a copy of AddMaterialEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$CategorySelectedImplCopyWith<_$CategorySelectedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
mixin _$AddMaterialState {

 MaterialName get name => throw _privateConstructorUsedError; MaterialDescription get description => throw _privateConstructorUsedError; MaterialCategoryDropdown get category => throw _privateConstructorUsedError; int get quantity => throw _privateConstructorUsedError; List<MaterialCategory> get categories => throw _privateConstructorUsedError; String? get imagePath => throw _privateConstructorUsedError;







/// Create a copy of AddMaterialState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$AddMaterialStateCopyWith<AddMaterialState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $AddMaterialStateCopyWith<$Res>  {
  factory $AddMaterialStateCopyWith(AddMaterialState value, $Res Function(AddMaterialState) then) = _$AddMaterialStateCopyWithImpl<$Res, AddMaterialState>;
@useResult
$Res call({
 MaterialName name, MaterialDescription description, MaterialCategoryDropdown category, int quantity, List<MaterialCategory> categories, String? imagePath
});



}

/// @nodoc
class _$AddMaterialStateCopyWithImpl<$Res,$Val extends AddMaterialState> implements $AddMaterialStateCopyWith<$Res> {
  _$AddMaterialStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of AddMaterialState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? description = null,Object? category = null,Object? quantity = null,Object? categories = null,Object? imagePath = freezed,}) {
  return _then(_value.copyWith(
name: null == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as MaterialName,description: null == description ? _value.description : description // ignore: cast_nullable_to_non_nullable
as MaterialDescription,category: null == category ? _value.category : category // ignore: cast_nullable_to_non_nullable
as MaterialCategoryDropdown,quantity: null == quantity ? _value.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,categories: null == categories ? _value.categories : categories // ignore: cast_nullable_to_non_nullable
as List<MaterialCategory>,imagePath: freezed == imagePath ? _value.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,
  )as $Val);
}

}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $AddMaterialStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 MaterialName name, MaterialDescription description, MaterialCategoryDropdown category, int quantity, List<MaterialCategory> categories, String? imagePath
});



}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$AddMaterialStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of AddMaterialState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? description = null,Object? category = null,Object? quantity = null,Object? categories = null,Object? imagePath = freezed,}) {
  return _then(_$InitialImpl(
name: null == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as MaterialName,description: null == description ? _value.description : description // ignore: cast_nullable_to_non_nullable
as MaterialDescription,category: null == category ? _value.category : category // ignore: cast_nullable_to_non_nullable
as MaterialCategoryDropdown,quantity: null == quantity ? _value.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<MaterialCategory>,imagePath: freezed == imagePath ? _value.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl({this.name = const MaterialName.pure(), this.description = const MaterialDescription.pure(), this.category = const MaterialCategoryDropdown.pure(), this.quantity = 1, final  List<MaterialCategory> categories = const <MaterialCategory>[], this.imagePath}): _categories = categories;

  

@override@JsonKey() final  MaterialName name;
@override@JsonKey() final  MaterialDescription description;
@override@JsonKey() final  MaterialCategoryDropdown category;
@override@JsonKey() final  int quantity;
 final  List<MaterialCategory> _categories;
@override@JsonKey() List<MaterialCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override final  String? imagePath;

@override
String toString() {
  return 'AddMaterialState.initial(name: $name, description: $description, category: $category, quantity: $quantity, categories: $categories, imagePath: $imagePath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}


@override
int get hashCode => Object.hash(runtimeType,name,description,category,quantity,const DeepCollectionEquality().hash(_categories),imagePath);

/// Create a copy of AddMaterialState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements AddMaterialState {
  const factory Initial({final  MaterialName name, final  MaterialDescription description, final  MaterialCategoryDropdown category, final  int quantity, final  List<MaterialCategory> categories, final  String? imagePath}) = _$InitialImpl;
  

  

@override MaterialName get name;@override MaterialDescription get description;@override MaterialCategoryDropdown get category;@override int get quantity;@override List<MaterialCategory> get categories;@override String? get imagePath;
/// Create a copy of AddMaterialState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> implements $AddMaterialStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl value, $Res Function(_$LoadingImpl) then) = __$$LoadingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 MaterialName name, MaterialDescription description, MaterialCategoryDropdown category, int quantity, List<MaterialCategory> categories, String? imagePath
});



}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$AddMaterialStateCopyWithImpl<$Res, _$LoadingImpl> implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);


/// Create a copy of AddMaterialState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? description = null,Object? category = null,Object? quantity = null,Object? categories = null,Object? imagePath = freezed,}) {
  return _then(_$LoadingImpl(
name: null == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as MaterialName,description: null == description ? _value.description : description // ignore: cast_nullable_to_non_nullable
as MaterialDescription,category: null == category ? _value.category : category // ignore: cast_nullable_to_non_nullable
as MaterialCategoryDropdown,quantity: null == quantity ? _value.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<MaterialCategory>,imagePath: freezed == imagePath ? _value.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _$LoadingImpl  implements Loading {
  const _$LoadingImpl({this.name = const MaterialName.pure(), this.description = const MaterialDescription.pure(), this.category = const MaterialCategoryDropdown.pure(), this.quantity = 1, final  List<MaterialCategory> categories = const <MaterialCategory>[], this.imagePath}): _categories = categories;

  

@override@JsonKey() final  MaterialName name;
@override@JsonKey() final  MaterialDescription description;
@override@JsonKey() final  MaterialCategoryDropdown category;
@override@JsonKey() final  int quantity;
 final  List<MaterialCategory> _categories;
@override@JsonKey() List<MaterialCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override final  String? imagePath;

@override
String toString() {
  return 'AddMaterialState.loading(name: $name, description: $description, category: $category, quantity: $quantity, categories: $categories, imagePath: $imagePath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadingImpl&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}


@override
int get hashCode => Object.hash(runtimeType,name,description,category,quantity,const DeepCollectionEquality().hash(_categories),imagePath);

/// Create a copy of AddMaterialState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);








}


abstract class Loading implements AddMaterialState {
  const factory Loading({final  MaterialName name, final  MaterialDescription description, final  MaterialCategoryDropdown category, final  int quantity, final  List<MaterialCategory> categories, final  String? imagePath}) = _$LoadingImpl;
  

  

@override MaterialName get name;@override MaterialDescription get description;@override MaterialCategoryDropdown get category;@override int get quantity;@override List<MaterialCategory> get categories;@override String? get imagePath;
/// Create a copy of AddMaterialState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$NormalImplCopyWith<$Res> implements $AddMaterialStateCopyWith<$Res> {
  factory _$$NormalImplCopyWith(_$NormalImpl value, $Res Function(_$NormalImpl) then) = __$$NormalImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 MaterialName name, MaterialDescription description, MaterialCategoryDropdown category, int quantity, List<MaterialCategory> categories, String? imagePath
});



}

/// @nodoc
class __$$NormalImplCopyWithImpl<$Res> extends _$AddMaterialStateCopyWithImpl<$Res, _$NormalImpl> implements _$$NormalImplCopyWith<$Res> {
  __$$NormalImplCopyWithImpl(_$NormalImpl _value, $Res Function(_$NormalImpl) _then)
      : super(_value, _then);


/// Create a copy of AddMaterialState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? description = null,Object? category = null,Object? quantity = null,Object? categories = null,Object? imagePath = freezed,}) {
  return _then(_$NormalImpl(
name: null == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as MaterialName,description: null == description ? _value.description : description // ignore: cast_nullable_to_non_nullable
as MaterialDescription,category: null == category ? _value.category : category // ignore: cast_nullable_to_non_nullable
as MaterialCategoryDropdown,quantity: null == quantity ? _value.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<MaterialCategory>,imagePath: freezed == imagePath ? _value.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _$NormalImpl  implements Normal {
  const _$NormalImpl({this.name = const MaterialName.pure(), this.description = const MaterialDescription.pure(), this.category = const MaterialCategoryDropdown.pure(), this.quantity = 1, final  List<MaterialCategory> categories = const <MaterialCategory>[], this.imagePath}): _categories = categories;

  

@override@JsonKey() final  MaterialName name;
@override@JsonKey() final  MaterialDescription description;
@override@JsonKey() final  MaterialCategoryDropdown category;
@override@JsonKey() final  int quantity;
 final  List<MaterialCategory> _categories;
@override@JsonKey() List<MaterialCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override final  String? imagePath;

@override
String toString() {
  return 'AddMaterialState.normal(name: $name, description: $description, category: $category, quantity: $quantity, categories: $categories, imagePath: $imagePath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$NormalImpl&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}


@override
int get hashCode => Object.hash(runtimeType,name,description,category,quantity,const DeepCollectionEquality().hash(_categories),imagePath);

/// Create a copy of AddMaterialState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$NormalImplCopyWith<_$NormalImpl> get copyWith => __$$NormalImplCopyWithImpl<_$NormalImpl>(this, _$identity);








}


abstract class Normal implements AddMaterialState {
  const factory Normal({final  MaterialName name, final  MaterialDescription description, final  MaterialCategoryDropdown category, final  int quantity, final  List<MaterialCategory> categories, final  String? imagePath}) = _$NormalImpl;
  

  

@override MaterialName get name;@override MaterialDescription get description;@override MaterialCategoryDropdown get category;@override int get quantity;@override List<MaterialCategory> get categories;@override String? get imagePath;
/// Create a copy of AddMaterialState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$NormalImplCopyWith<_$NormalImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$UploadingImplCopyWith<$Res> implements $AddMaterialStateCopyWith<$Res> {
  factory _$$UploadingImplCopyWith(_$UploadingImpl value, $Res Function(_$UploadingImpl) then) = __$$UploadingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 MaterialName name, MaterialDescription description, MaterialCategoryDropdown category, int quantity, List<MaterialCategory> categories, String? imagePath
});



}

/// @nodoc
class __$$UploadingImplCopyWithImpl<$Res> extends _$AddMaterialStateCopyWithImpl<$Res, _$UploadingImpl> implements _$$UploadingImplCopyWith<$Res> {
  __$$UploadingImplCopyWithImpl(_$UploadingImpl _value, $Res Function(_$UploadingImpl) _then)
      : super(_value, _then);


/// Create a copy of AddMaterialState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? description = null,Object? category = null,Object? quantity = null,Object? categories = null,Object? imagePath = freezed,}) {
  return _then(_$UploadingImpl(
name: null == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as MaterialName,description: null == description ? _value.description : description // ignore: cast_nullable_to_non_nullable
as MaterialDescription,category: null == category ? _value.category : category // ignore: cast_nullable_to_non_nullable
as MaterialCategoryDropdown,quantity: null == quantity ? _value.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<MaterialCategory>,imagePath: freezed == imagePath ? _value.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _$UploadingImpl  implements Uploading {
  const _$UploadingImpl({this.name = const MaterialName.pure(), this.description = const MaterialDescription.pure(), this.category = const MaterialCategoryDropdown.pure(), this.quantity = 1, final  List<MaterialCategory> categories = const <MaterialCategory>[], this.imagePath}): _categories = categories;

  

@override@JsonKey() final  MaterialName name;
@override@JsonKey() final  MaterialDescription description;
@override@JsonKey() final  MaterialCategoryDropdown category;
@override@JsonKey() final  int quantity;
 final  List<MaterialCategory> _categories;
@override@JsonKey() List<MaterialCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override final  String? imagePath;

@override
String toString() {
  return 'AddMaterialState.uploading(name: $name, description: $description, category: $category, quantity: $quantity, categories: $categories, imagePath: $imagePath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$UploadingImpl&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}


@override
int get hashCode => Object.hash(runtimeType,name,description,category,quantity,const DeepCollectionEquality().hash(_categories),imagePath);

/// Create a copy of AddMaterialState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$UploadingImplCopyWith<_$UploadingImpl> get copyWith => __$$UploadingImplCopyWithImpl<_$UploadingImpl>(this, _$identity);








}


abstract class Uploading implements AddMaterialState {
  const factory Uploading({final  MaterialName name, final  MaterialDescription description, final  MaterialCategoryDropdown category, final  int quantity, final  List<MaterialCategory> categories, final  String? imagePath}) = _$UploadingImpl;
  

  

@override MaterialName get name;@override MaterialDescription get description;@override MaterialCategoryDropdown get category;@override int get quantity;@override List<MaterialCategory> get categories;@override String? get imagePath;
/// Create a copy of AddMaterialState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$UploadingImplCopyWith<_$UploadingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$UploadedImplCopyWith<$Res> implements $AddMaterialStateCopyWith<$Res> {
  factory _$$UploadedImplCopyWith(_$UploadedImpl value, $Res Function(_$UploadedImpl) then) = __$$UploadedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 MaterialName name, MaterialDescription description, MaterialCategoryDropdown category, int quantity, List<MaterialCategory> categories, String? imagePath
});



}

/// @nodoc
class __$$UploadedImplCopyWithImpl<$Res> extends _$AddMaterialStateCopyWithImpl<$Res, _$UploadedImpl> implements _$$UploadedImplCopyWith<$Res> {
  __$$UploadedImplCopyWithImpl(_$UploadedImpl _value, $Res Function(_$UploadedImpl) _then)
      : super(_value, _then);


/// Create a copy of AddMaterialState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? description = null,Object? category = null,Object? quantity = null,Object? categories = null,Object? imagePath = freezed,}) {
  return _then(_$UploadedImpl(
name: null == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as MaterialName,description: null == description ? _value.description : description // ignore: cast_nullable_to_non_nullable
as MaterialDescription,category: null == category ? _value.category : category // ignore: cast_nullable_to_non_nullable
as MaterialCategoryDropdown,quantity: null == quantity ? _value.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<MaterialCategory>,imagePath: freezed == imagePath ? _value.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _$UploadedImpl  implements Uploaded {
  const _$UploadedImpl({this.name = const MaterialName.pure(), this.description = const MaterialDescription.pure(), this.category = const MaterialCategoryDropdown.pure(), this.quantity = 1, final  List<MaterialCategory> categories = const <MaterialCategory>[], this.imagePath}): _categories = categories;

  

@override@JsonKey() final  MaterialName name;
@override@JsonKey() final  MaterialDescription description;
@override@JsonKey() final  MaterialCategoryDropdown category;
@override@JsonKey() final  int quantity;
 final  List<MaterialCategory> _categories;
@override@JsonKey() List<MaterialCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override final  String? imagePath;

@override
String toString() {
  return 'AddMaterialState.uploaded(name: $name, description: $description, category: $category, quantity: $quantity, categories: $categories, imagePath: $imagePath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$UploadedImpl&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}


@override
int get hashCode => Object.hash(runtimeType,name,description,category,quantity,const DeepCollectionEquality().hash(_categories),imagePath);

/// Create a copy of AddMaterialState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$UploadedImplCopyWith<_$UploadedImpl> get copyWith => __$$UploadedImplCopyWithImpl<_$UploadedImpl>(this, _$identity);








}


abstract class Uploaded implements AddMaterialState {
  const factory Uploaded({final  MaterialName name, final  MaterialDescription description, final  MaterialCategoryDropdown category, final  int quantity, final  List<MaterialCategory> categories, final  String? imagePath}) = _$UploadedImpl;
  

  

@override MaterialName get name;@override MaterialDescription get description;@override MaterialCategoryDropdown get category;@override int get quantity;@override List<MaterialCategory> get categories;@override String? get imagePath;
/// Create a copy of AddMaterialState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$UploadedImplCopyWith<_$UploadedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> implements $AddMaterialStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(_$SuccessImpl value, $Res Function(_$SuccessImpl) then) = __$$SuccessImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 MaterialName name, MaterialDescription description, MaterialCategoryDropdown category, int quantity, List<MaterialCategory> categories, String? imagePath, int materialId
});



}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res> extends _$AddMaterialStateCopyWithImpl<$Res, _$SuccessImpl> implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(_$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);


/// Create a copy of AddMaterialState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? description = null,Object? category = null,Object? quantity = null,Object? categories = null,Object? imagePath = freezed,Object? materialId = null,}) {
  return _then(_$SuccessImpl(
name: null == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as MaterialName,description: null == description ? _value.description : description // ignore: cast_nullable_to_non_nullable
as MaterialDescription,category: null == category ? _value.category : category // ignore: cast_nullable_to_non_nullable
as MaterialCategoryDropdown,quantity: null == quantity ? _value.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<MaterialCategory>,imagePath: freezed == imagePath ? _value.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,materialId: null == materialId ? _value.materialId : materialId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _$SuccessImpl  implements Success {
  const _$SuccessImpl({this.name = const MaterialName.pure(), this.description = const MaterialDescription.pure(), this.category = const MaterialCategoryDropdown.pure(), this.quantity = 1, final  List<MaterialCategory> categories = const <MaterialCategory>[], this.imagePath, this.materialId = 0}): _categories = categories;

  

@override@JsonKey() final  MaterialName name;
@override@JsonKey() final  MaterialDescription description;
@override@JsonKey() final  MaterialCategoryDropdown category;
@override@JsonKey() final  int quantity;
 final  List<MaterialCategory> _categories;
@override@JsonKey() List<MaterialCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override final  String? imagePath;
@override@JsonKey() final  int materialId;

@override
String toString() {
  return 'AddMaterialState.success(name: $name, description: $description, category: $category, quantity: $quantity, categories: $categories, imagePath: $imagePath, materialId: $materialId)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SuccessImpl&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.materialId, materialId) || other.materialId == materialId));
}


@override
int get hashCode => Object.hash(runtimeType,name,description,category,quantity,const DeepCollectionEquality().hash(_categories),imagePath,materialId);

/// Create a copy of AddMaterialState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$SuccessImplCopyWith<_$SuccessImpl> get copyWith => __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);








}


abstract class Success implements AddMaterialState {
  const factory Success({final  MaterialName name, final  MaterialDescription description, final  MaterialCategoryDropdown category, final  int quantity, final  List<MaterialCategory> categories, final  String? imagePath, final  int materialId}) = _$SuccessImpl;
  

  

@override MaterialName get name;@override MaterialDescription get description;@override MaterialCategoryDropdown get category;@override int get quantity;@override List<MaterialCategory> get categories;@override String? get imagePath; int get materialId;
/// Create a copy of AddMaterialState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$SuccessImplCopyWith<_$SuccessImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $AddMaterialStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String message, MaterialName name, MaterialDescription description, MaterialCategoryDropdown category, int quantity, List<MaterialCategory> categories, String? imagePath
});



}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$AddMaterialStateCopyWithImpl<$Res, _$ErrorImpl> implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);


/// Create a copy of AddMaterialState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? name = null,Object? description = null,Object? category = null,Object? quantity = null,Object? categories = null,Object? imagePath = freezed,}) {
  return _then(_$ErrorImpl(
null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as MaterialName,description: null == description ? _value.description : description // ignore: cast_nullable_to_non_nullable
as MaterialDescription,category: null == category ? _value.category : category // ignore: cast_nullable_to_non_nullable
as MaterialCategoryDropdown,quantity: null == quantity ? _value.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<MaterialCategory>,imagePath: freezed == imagePath ? _value.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _$ErrorImpl  implements Error {
  const _$ErrorImpl(this.message, {this.name = const MaterialName.pure(), this.description = const MaterialDescription.pure(), this.category = const MaterialCategoryDropdown.pure(), this.quantity = 1, final  List<MaterialCategory> categories = const <MaterialCategory>[], this.imagePath}): _categories = categories;

  

@override final  String message;
@override@JsonKey() final  MaterialName name;
@override@JsonKey() final  MaterialDescription description;
@override@JsonKey() final  MaterialCategoryDropdown category;
@override@JsonKey() final  int quantity;
 final  List<MaterialCategory> _categories;
@override@JsonKey() List<MaterialCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override final  String? imagePath;

@override
String toString() {
  return 'AddMaterialState.error(message: $message, name: $name, description: $description, category: $category, quantity: $quantity, categories: $categories, imagePath: $imagePath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ErrorImpl&&(identical(other.message, message) || other.message == message)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}


@override
int get hashCode => Object.hash(runtimeType,message,name,description,category,quantity,const DeepCollectionEquality().hash(_categories),imagePath);

/// Create a copy of AddMaterialState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);








}


abstract class Error implements AddMaterialState {
  const factory Error(final  String message, {final  MaterialName name, final  MaterialDescription description, final  MaterialCategoryDropdown category, final  int quantity, final  List<MaterialCategory> categories, final  String? imagePath}) = _$ErrorImpl;
  

  

 String get message;@override MaterialName get name;@override MaterialDescription get description;@override MaterialCategoryDropdown get category;@override int get quantity;@override List<MaterialCategory> get categories;@override String? get imagePath;
/// Create a copy of AddMaterialState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
