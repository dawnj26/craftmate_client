// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_material_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SelectMaterialEvent {










}

/// @nodoc
abstract class $SelectMaterialEventCopyWith<$Res>  {
  factory $SelectMaterialEventCopyWith(SelectMaterialEvent value, $Res Function(SelectMaterialEvent) then) = _$SelectMaterialEventCopyWithImpl<$Res, SelectMaterialEvent>;



}

/// @nodoc
class _$SelectMaterialEventCopyWithImpl<$Res,$Val extends SelectMaterialEvent> implements $SelectMaterialEventCopyWith<$Res> {
  _$SelectMaterialEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of SelectMaterialEvent
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>  {
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) = __$$StartedImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res> extends _$SelectMaterialEventCopyWithImpl<$Res, _$StartedImpl> implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(_$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);


/// Create a copy of SelectMaterialEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$StartedImpl  implements _Started {
  const _$StartedImpl();

  



@override
String toString() {
  return 'SelectMaterialEvent.started()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StartedImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _Started implements SelectMaterialEvent {
  const factory _Started() = _$StartedImpl;
  

  



}

/// @nodoc
abstract class _$$MaterialSelectedImplCopyWith<$Res>  {
  factory _$$MaterialSelectedImplCopyWith(_$MaterialSelectedImpl value, $Res Function(_$MaterialSelectedImpl) then) = __$$MaterialSelectedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 int materialId
});



}

/// @nodoc
class __$$MaterialSelectedImplCopyWithImpl<$Res> extends _$SelectMaterialEventCopyWithImpl<$Res, _$MaterialSelectedImpl> implements _$$MaterialSelectedImplCopyWith<$Res> {
  __$$MaterialSelectedImplCopyWithImpl(_$MaterialSelectedImpl _value, $Res Function(_$MaterialSelectedImpl) _then)
      : super(_value, _then);


/// Create a copy of SelectMaterialEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? materialId = null,}) {
  return _then(_$MaterialSelectedImpl(
null == materialId ? _value.materialId : materialId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _$MaterialSelectedImpl  implements _MaterialSelected {
  const _$MaterialSelectedImpl(this.materialId);

  

@override final  int materialId;

@override
String toString() {
  return 'SelectMaterialEvent.materialSelected(materialId: $materialId)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$MaterialSelectedImpl&&(identical(other.materialId, materialId) || other.materialId == materialId));
}


@override
int get hashCode => Object.hash(runtimeType,materialId);

/// Create a copy of SelectMaterialEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$MaterialSelectedImplCopyWith<_$MaterialSelectedImpl> get copyWith => __$$MaterialSelectedImplCopyWithImpl<_$MaterialSelectedImpl>(this, _$identity);








}


abstract class _MaterialSelected implements SelectMaterialEvent {
  const factory _MaterialSelected(final  int materialId) = _$MaterialSelectedImpl;
  

  

 int get materialId;
/// Create a copy of SelectMaterialEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$MaterialSelectedImplCopyWith<_$MaterialSelectedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$AddedMaterialsImplCopyWith<$Res>  {
  factory _$$AddedMaterialsImplCopyWith(_$AddedMaterialsImpl value, $Res Function(_$AddedMaterialsImpl) then) = __$$AddedMaterialsImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$AddedMaterialsImplCopyWithImpl<$Res> extends _$SelectMaterialEventCopyWithImpl<$Res, _$AddedMaterialsImpl> implements _$$AddedMaterialsImplCopyWith<$Res> {
  __$$AddedMaterialsImplCopyWithImpl(_$AddedMaterialsImpl _value, $Res Function(_$AddedMaterialsImpl) _then)
      : super(_value, _then);


/// Create a copy of SelectMaterialEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$AddedMaterialsImpl  implements _AddedMaterials {
  const _$AddedMaterialsImpl();

  



@override
String toString() {
  return 'SelectMaterialEvent.addedMaterials()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$AddedMaterialsImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _AddedMaterials implements SelectMaterialEvent {
  const factory _AddedMaterials() = _$AddedMaterialsImpl;
  

  



}

/// @nodoc
abstract class _$$SearchStartedImplCopyWith<$Res>  {
  factory _$$SearchStartedImplCopyWith(_$SearchStartedImpl value, $Res Function(_$SearchStartedImpl) then) = __$$SearchStartedImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$SearchStartedImplCopyWithImpl<$Res> extends _$SelectMaterialEventCopyWithImpl<$Res, _$SearchStartedImpl> implements _$$SearchStartedImplCopyWith<$Res> {
  __$$SearchStartedImplCopyWithImpl(_$SearchStartedImpl _value, $Res Function(_$SearchStartedImpl) _then)
      : super(_value, _then);


/// Create a copy of SelectMaterialEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$SearchStartedImpl  implements _SearchStarted {
  const _$SearchStartedImpl();

  



@override
String toString() {
  return 'SelectMaterialEvent.searchStarted()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SearchStartedImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _SearchStarted implements SelectMaterialEvent {
  const factory _SearchStarted() = _$SearchStartedImpl;
  

  



}

/// @nodoc
abstract class _$$SearchCanceledImplCopyWith<$Res>  {
  factory _$$SearchCanceledImplCopyWith(_$SearchCanceledImpl value, $Res Function(_$SearchCanceledImpl) then) = __$$SearchCanceledImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$SearchCanceledImplCopyWithImpl<$Res> extends _$SelectMaterialEventCopyWithImpl<$Res, _$SearchCanceledImpl> implements _$$SearchCanceledImplCopyWith<$Res> {
  __$$SearchCanceledImplCopyWithImpl(_$SearchCanceledImpl _value, $Res Function(_$SearchCanceledImpl) _then)
      : super(_value, _then);


/// Create a copy of SelectMaterialEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$SearchCanceledImpl  implements _SearchCanceled {
  const _$SearchCanceledImpl();

  



@override
String toString() {
  return 'SelectMaterialEvent.searchCanceled()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SearchCanceledImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _SearchCanceled implements SelectMaterialEvent {
  const factory _SearchCanceled() = _$SearchCanceledImpl;
  

  



}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res>  {
  factory _$$SearchImplCopyWith(_$SearchImpl value, $Res Function(_$SearchImpl) then) = __$$SearchImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String query
});



}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res> extends _$SelectMaterialEventCopyWithImpl<$Res, _$SearchImpl> implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(_$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);


/// Create a copy of SelectMaterialEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,}) {
  return _then(_$SearchImpl(
null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$SearchImpl  implements _Search {
  const _$SearchImpl(this.query);

  

@override final  String query;

@override
String toString() {
  return 'SelectMaterialEvent.search(query: $query)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SearchImpl&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

/// Create a copy of SelectMaterialEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$SearchImplCopyWith<_$SearchImpl> get copyWith => __$$SearchImplCopyWithImpl<_$SearchImpl>(this, _$identity);








}


abstract class _Search implements SelectMaterialEvent {
  const factory _Search(final  String query) = _$SearchImpl;
  

  

 String get query;
/// Create a copy of SelectMaterialEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$SearchImplCopyWith<_$SearchImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
mixin _$SelectMaterialState {

 List<Material> get materials => throw _privateConstructorUsedError; Map<int, bool> get selectedMaterials => throw _privateConstructorUsedError;







/// Create a copy of SelectMaterialState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$SelectMaterialStateCopyWith<SelectMaterialState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $SelectMaterialStateCopyWith<$Res>  {
  factory $SelectMaterialStateCopyWith(SelectMaterialState value, $Res Function(SelectMaterialState) then) = _$SelectMaterialStateCopyWithImpl<$Res, SelectMaterialState>;
@useResult
$Res call({
 List<Material> materials, Map<int, bool> selectedMaterials
});



}

/// @nodoc
class _$SelectMaterialStateCopyWithImpl<$Res,$Val extends SelectMaterialState> implements $SelectMaterialStateCopyWith<$Res> {
  _$SelectMaterialStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of SelectMaterialState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? materials = null,Object? selectedMaterials = null,}) {
  return _then(_value.copyWith(
materials: null == materials ? _value.materials : materials // ignore: cast_nullable_to_non_nullable
as List<Material>,selectedMaterials: null == selectedMaterials ? _value.selectedMaterials : selectedMaterials // ignore: cast_nullable_to_non_nullable
as Map<int, bool>,
  )as $Val);
}

}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $SelectMaterialStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Material> materials, Map<int, bool> selectedMaterials
});



}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$SelectMaterialStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of SelectMaterialState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? materials = null,Object? selectedMaterials = null,}) {
  return _then(_$InitialImpl(
materials: null == materials ? _value._materials : materials // ignore: cast_nullable_to_non_nullable
as List<Material>,selectedMaterials: null == selectedMaterials ? _value._selectedMaterials : selectedMaterials // ignore: cast_nullable_to_non_nullable
as Map<int, bool>,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl({final  List<Material> materials = const [], final  Map<int, bool> selectedMaterials = const {}}): _materials = materials,_selectedMaterials = selectedMaterials;

  

 final  List<Material> _materials;
@override@JsonKey() List<Material> get materials {
  if (_materials is EqualUnmodifiableListView) return _materials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materials);
}

 final  Map<int, bool> _selectedMaterials;
@override@JsonKey() Map<int, bool> get selectedMaterials {
  if (_selectedMaterials is EqualUnmodifiableMapView) return _selectedMaterials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_selectedMaterials);
}


@override
String toString() {
  return 'SelectMaterialState.initial(materials: $materials, selectedMaterials: $selectedMaterials)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&const DeepCollectionEquality().equals(other._materials, _materials)&&const DeepCollectionEquality().equals(other._selectedMaterials, _selectedMaterials));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_materials),const DeepCollectionEquality().hash(_selectedMaterials));

/// Create a copy of SelectMaterialState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements SelectMaterialState {
  const factory Initial({final  List<Material> materials, final  Map<int, bool> selectedMaterials}) = _$InitialImpl;
  

  

@override List<Material> get materials;@override Map<int, bool> get selectedMaterials;
/// Create a copy of SelectMaterialState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$AddingImplCopyWith<$Res> implements $SelectMaterialStateCopyWith<$Res> {
  factory _$$AddingImplCopyWith(_$AddingImpl value, $Res Function(_$AddingImpl) then) = __$$AddingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Material> materials, Map<int, bool> selectedMaterials
});



}

/// @nodoc
class __$$AddingImplCopyWithImpl<$Res> extends _$SelectMaterialStateCopyWithImpl<$Res, _$AddingImpl> implements _$$AddingImplCopyWith<$Res> {
  __$$AddingImplCopyWithImpl(_$AddingImpl _value, $Res Function(_$AddingImpl) _then)
      : super(_value, _then);


/// Create a copy of SelectMaterialState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? materials = null,Object? selectedMaterials = null,}) {
  return _then(_$AddingImpl(
materials: null == materials ? _value._materials : materials // ignore: cast_nullable_to_non_nullable
as List<Material>,selectedMaterials: null == selectedMaterials ? _value._selectedMaterials : selectedMaterials // ignore: cast_nullable_to_non_nullable
as Map<int, bool>,
  ));
}


}

/// @nodoc


class _$AddingImpl  implements Adding {
  const _$AddingImpl({final  List<Material> materials = const [], final  Map<int, bool> selectedMaterials = const {}}): _materials = materials,_selectedMaterials = selectedMaterials;

  

 final  List<Material> _materials;
@override@JsonKey() List<Material> get materials {
  if (_materials is EqualUnmodifiableListView) return _materials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materials);
}

 final  Map<int, bool> _selectedMaterials;
@override@JsonKey() Map<int, bool> get selectedMaterials {
  if (_selectedMaterials is EqualUnmodifiableMapView) return _selectedMaterials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_selectedMaterials);
}


@override
String toString() {
  return 'SelectMaterialState.adding(materials: $materials, selectedMaterials: $selectedMaterials)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$AddingImpl&&const DeepCollectionEquality().equals(other._materials, _materials)&&const DeepCollectionEquality().equals(other._selectedMaterials, _selectedMaterials));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_materials),const DeepCollectionEquality().hash(_selectedMaterials));

/// Create a copy of SelectMaterialState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$AddingImplCopyWith<_$AddingImpl> get copyWith => __$$AddingImplCopyWithImpl<_$AddingImpl>(this, _$identity);








}


abstract class Adding implements SelectMaterialState {
  const factory Adding({final  List<Material> materials, final  Map<int, bool> selectedMaterials}) = _$AddingImpl;
  

  

@override List<Material> get materials;@override Map<int, bool> get selectedMaterials;
/// Create a copy of SelectMaterialState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$AddingImplCopyWith<_$AddingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$SearchingImplCopyWith<$Res> implements $SelectMaterialStateCopyWith<$Res> {
  factory _$$SearchingImplCopyWith(_$SearchingImpl value, $Res Function(_$SearchingImpl) then) = __$$SearchingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Material> materials, Map<int, bool> selectedMaterials
});



}

/// @nodoc
class __$$SearchingImplCopyWithImpl<$Res> extends _$SelectMaterialStateCopyWithImpl<$Res, _$SearchingImpl> implements _$$SearchingImplCopyWith<$Res> {
  __$$SearchingImplCopyWithImpl(_$SearchingImpl _value, $Res Function(_$SearchingImpl) _then)
      : super(_value, _then);


/// Create a copy of SelectMaterialState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? materials = null,Object? selectedMaterials = null,}) {
  return _then(_$SearchingImpl(
materials: null == materials ? _value._materials : materials // ignore: cast_nullable_to_non_nullable
as List<Material>,selectedMaterials: null == selectedMaterials ? _value._selectedMaterials : selectedMaterials // ignore: cast_nullable_to_non_nullable
as Map<int, bool>,
  ));
}


}

/// @nodoc


class _$SearchingImpl  implements Searching {
  const _$SearchingImpl({final  List<Material> materials = const [], final  Map<int, bool> selectedMaterials = const {}}): _materials = materials,_selectedMaterials = selectedMaterials;

  

 final  List<Material> _materials;
@override@JsonKey() List<Material> get materials {
  if (_materials is EqualUnmodifiableListView) return _materials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materials);
}

 final  Map<int, bool> _selectedMaterials;
@override@JsonKey() Map<int, bool> get selectedMaterials {
  if (_selectedMaterials is EqualUnmodifiableMapView) return _selectedMaterials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_selectedMaterials);
}


@override
String toString() {
  return 'SelectMaterialState.searching(materials: $materials, selectedMaterials: $selectedMaterials)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SearchingImpl&&const DeepCollectionEquality().equals(other._materials, _materials)&&const DeepCollectionEquality().equals(other._selectedMaterials, _selectedMaterials));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_materials),const DeepCollectionEquality().hash(_selectedMaterials));

/// Create a copy of SelectMaterialState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$SearchingImplCopyWith<_$SearchingImpl> get copyWith => __$$SearchingImplCopyWithImpl<_$SearchingImpl>(this, _$identity);








}


abstract class Searching implements SelectMaterialState {
  const factory Searching({final  List<Material> materials, final  Map<int, bool> selectedMaterials}) = _$SearchingImpl;
  

  

@override List<Material> get materials;@override Map<int, bool> get selectedMaterials;
/// Create a copy of SelectMaterialState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$SearchingImplCopyWith<_$SearchingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$AddedImplCopyWith<$Res> implements $SelectMaterialStateCopyWith<$Res> {
  factory _$$AddedImplCopyWith(_$AddedImpl value, $Res Function(_$AddedImpl) then) = __$$AddedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Material> materials, Map<int, bool> selectedMaterials
});



}

/// @nodoc
class __$$AddedImplCopyWithImpl<$Res> extends _$SelectMaterialStateCopyWithImpl<$Res, _$AddedImpl> implements _$$AddedImplCopyWith<$Res> {
  __$$AddedImplCopyWithImpl(_$AddedImpl _value, $Res Function(_$AddedImpl) _then)
      : super(_value, _then);


/// Create a copy of SelectMaterialState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? materials = null,Object? selectedMaterials = null,}) {
  return _then(_$AddedImpl(
materials: null == materials ? _value._materials : materials // ignore: cast_nullable_to_non_nullable
as List<Material>,selectedMaterials: null == selectedMaterials ? _value._selectedMaterials : selectedMaterials // ignore: cast_nullable_to_non_nullable
as Map<int, bool>,
  ));
}


}

/// @nodoc


class _$AddedImpl  implements Added {
  const _$AddedImpl({final  List<Material> materials = const [], final  Map<int, bool> selectedMaterials = const {}}): _materials = materials,_selectedMaterials = selectedMaterials;

  

 final  List<Material> _materials;
@override@JsonKey() List<Material> get materials {
  if (_materials is EqualUnmodifiableListView) return _materials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materials);
}

 final  Map<int, bool> _selectedMaterials;
@override@JsonKey() Map<int, bool> get selectedMaterials {
  if (_selectedMaterials is EqualUnmodifiableMapView) return _selectedMaterials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_selectedMaterials);
}


@override
String toString() {
  return 'SelectMaterialState.added(materials: $materials, selectedMaterials: $selectedMaterials)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$AddedImpl&&const DeepCollectionEquality().equals(other._materials, _materials)&&const DeepCollectionEquality().equals(other._selectedMaterials, _selectedMaterials));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_materials),const DeepCollectionEquality().hash(_selectedMaterials));

/// Create a copy of SelectMaterialState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$AddedImplCopyWith<_$AddedImpl> get copyWith => __$$AddedImplCopyWithImpl<_$AddedImpl>(this, _$identity);








}


abstract class Added implements SelectMaterialState {
  const factory Added({final  List<Material> materials, final  Map<int, bool> selectedMaterials}) = _$AddedImpl;
  

  

@override List<Material> get materials;@override Map<int, bool> get selectedMaterials;
/// Create a copy of SelectMaterialState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$AddedImplCopyWith<_$AddedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> implements $SelectMaterialStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl value, $Res Function(_$LoadingImpl) then) = __$$LoadingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Material> materials, Map<int, bool> selectedMaterials
});



}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$SelectMaterialStateCopyWithImpl<$Res, _$LoadingImpl> implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);


/// Create a copy of SelectMaterialState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? materials = null,Object? selectedMaterials = null,}) {
  return _then(_$LoadingImpl(
materials: null == materials ? _value._materials : materials // ignore: cast_nullable_to_non_nullable
as List<Material>,selectedMaterials: null == selectedMaterials ? _value._selectedMaterials : selectedMaterials // ignore: cast_nullable_to_non_nullable
as Map<int, bool>,
  ));
}


}

/// @nodoc


class _$LoadingImpl  implements Loading {
  const _$LoadingImpl({final  List<Material> materials = const [], final  Map<int, bool> selectedMaterials = const {}}): _materials = materials,_selectedMaterials = selectedMaterials;

  

 final  List<Material> _materials;
@override@JsonKey() List<Material> get materials {
  if (_materials is EqualUnmodifiableListView) return _materials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materials);
}

 final  Map<int, bool> _selectedMaterials;
@override@JsonKey() Map<int, bool> get selectedMaterials {
  if (_selectedMaterials is EqualUnmodifiableMapView) return _selectedMaterials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_selectedMaterials);
}


@override
String toString() {
  return 'SelectMaterialState.loading(materials: $materials, selectedMaterials: $selectedMaterials)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadingImpl&&const DeepCollectionEquality().equals(other._materials, _materials)&&const DeepCollectionEquality().equals(other._selectedMaterials, _selectedMaterials));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_materials),const DeepCollectionEquality().hash(_selectedMaterials));

/// Create a copy of SelectMaterialState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);








}


abstract class Loading implements SelectMaterialState {
  const factory Loading({final  List<Material> materials, final  Map<int, bool> selectedMaterials}) = _$LoadingImpl;
  

  

@override List<Material> get materials;@override Map<int, bool> get selectedMaterials;
/// Create a copy of SelectMaterialState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $SelectMaterialStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(_$LoadedImpl value, $Res Function(_$LoadedImpl) then) = __$$LoadedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Material> materials, Map<int, bool> selectedMaterials
});



}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res> extends _$SelectMaterialStateCopyWithImpl<$Res, _$LoadedImpl> implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(_$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);


/// Create a copy of SelectMaterialState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? materials = null,Object? selectedMaterials = null,}) {
  return _then(_$LoadedImpl(
materials: null == materials ? _value._materials : materials // ignore: cast_nullable_to_non_nullable
as List<Material>,selectedMaterials: null == selectedMaterials ? _value._selectedMaterials : selectedMaterials // ignore: cast_nullable_to_non_nullable
as Map<int, bool>,
  ));
}


}

/// @nodoc


class _$LoadedImpl  implements Loaded {
  const _$LoadedImpl({required final  List<Material> materials, required final  Map<int, bool> selectedMaterials}): _materials = materials,_selectedMaterials = selectedMaterials;

  

 final  List<Material> _materials;
@override List<Material> get materials {
  if (_materials is EqualUnmodifiableListView) return _materials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materials);
}

 final  Map<int, bool> _selectedMaterials;
@override Map<int, bool> get selectedMaterials {
  if (_selectedMaterials is EqualUnmodifiableMapView) return _selectedMaterials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_selectedMaterials);
}


@override
String toString() {
  return 'SelectMaterialState.loaded(materials: $materials, selectedMaterials: $selectedMaterials)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadedImpl&&const DeepCollectionEquality().equals(other._materials, _materials)&&const DeepCollectionEquality().equals(other._selectedMaterials, _selectedMaterials));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_materials),const DeepCollectionEquality().hash(_selectedMaterials));

/// Create a copy of SelectMaterialState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);








}


abstract class Loaded implements SelectMaterialState {
  const factory Loaded({required final  List<Material> materials, required final  Map<int, bool> selectedMaterials}) = _$LoadedImpl;
  

  

@override List<Material> get materials;@override Map<int, bool> get selectedMaterials;
/// Create a copy of SelectMaterialState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $SelectMaterialStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String message, List<Material> materials, Map<int, bool> selectedMaterials
});



}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$SelectMaterialStateCopyWithImpl<$Res, _$ErrorImpl> implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);


/// Create a copy of SelectMaterialState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? materials = null,Object? selectedMaterials = null,}) {
  return _then(_$ErrorImpl(
message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,materials: null == materials ? _value._materials : materials // ignore: cast_nullable_to_non_nullable
as List<Material>,selectedMaterials: null == selectedMaterials ? _value._selectedMaterials : selectedMaterials // ignore: cast_nullable_to_non_nullable
as Map<int, bool>,
  ));
}


}

/// @nodoc


class _$ErrorImpl  implements Error {
  const _$ErrorImpl({required this.message, final  List<Material> materials = const [], final  Map<int, bool> selectedMaterials = const {}}): _materials = materials,_selectedMaterials = selectedMaterials;

  

@override final  String message;
 final  List<Material> _materials;
@override@JsonKey() List<Material> get materials {
  if (_materials is EqualUnmodifiableListView) return _materials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materials);
}

 final  Map<int, bool> _selectedMaterials;
@override@JsonKey() Map<int, bool> get selectedMaterials {
  if (_selectedMaterials is EqualUnmodifiableMapView) return _selectedMaterials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_selectedMaterials);
}


@override
String toString() {
  return 'SelectMaterialState.error(message: $message, materials: $materials, selectedMaterials: $selectedMaterials)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ErrorImpl&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._materials, _materials)&&const DeepCollectionEquality().equals(other._selectedMaterials, _selectedMaterials));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(_materials),const DeepCollectionEquality().hash(_selectedMaterials));

/// Create a copy of SelectMaterialState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);








}


abstract class Error implements SelectMaterialState {
  const factory Error({required final  String message, final  List<Material> materials, final  Map<int, bool> selectedMaterials}) = _$ErrorImpl;
  

  

 String get message;@override List<Material> get materials;@override Map<int, bool> get selectedMaterials;
/// Create a copy of SelectMaterialState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
