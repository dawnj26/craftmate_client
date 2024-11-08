// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_project_materials_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditProjectMaterialsEvent {










}

/// @nodoc
abstract class $EditProjectMaterialsEventCopyWith<$Res>  {
  factory $EditProjectMaterialsEventCopyWith(EditProjectMaterialsEvent value, $Res Function(EditProjectMaterialsEvent) then) = _$EditProjectMaterialsEventCopyWithImpl<$Res, EditProjectMaterialsEvent>;



}

/// @nodoc
class _$EditProjectMaterialsEventCopyWithImpl<$Res,$Val extends EditProjectMaterialsEvent> implements $EditProjectMaterialsEventCopyWith<$Res> {
  _$EditProjectMaterialsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of EditProjectMaterialsEvent
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>  {
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) = __$$StartedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 List<Material> materials
});



}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res> extends _$EditProjectMaterialsEventCopyWithImpl<$Res, _$StartedImpl> implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(_$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);


/// Create a copy of EditProjectMaterialsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? materials = null,}) {
  return _then(_$StartedImpl(
materials: null == materials ? _value._materials : materials // ignore: cast_nullable_to_non_nullable
as List<Material>,
  ));
}


}

/// @nodoc


class _$StartedImpl  implements _Started {
  const _$StartedImpl({required final  List<Material> materials}): _materials = materials;

  

 final  List<Material> _materials;
@override List<Material> get materials {
  if (_materials is EqualUnmodifiableListView) return _materials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materials);
}


@override
String toString() {
  return 'EditProjectMaterialsEvent.started(materials: $materials)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StartedImpl&&const DeepCollectionEquality().equals(other._materials, _materials));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_materials));

/// Create a copy of EditProjectMaterialsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$StartedImplCopyWith<_$StartedImpl> get copyWith => __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);








}


abstract class _Started implements EditProjectMaterialsEvent {
  const factory _Started({required final  List<Material> materials}) = _$StartedImpl;
  

  

 List<Material> get materials;
/// Create a copy of EditProjectMaterialsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$StartedImplCopyWith<_$StartedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ReloadedImplCopyWith<$Res>  {
  factory _$$ReloadedImplCopyWith(_$ReloadedImpl value, $Res Function(_$ReloadedImpl) then) = __$$ReloadedImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$ReloadedImplCopyWithImpl<$Res> extends _$EditProjectMaterialsEventCopyWithImpl<$Res, _$ReloadedImpl> implements _$$ReloadedImplCopyWith<$Res> {
  __$$ReloadedImplCopyWithImpl(_$ReloadedImpl _value, $Res Function(_$ReloadedImpl) _then)
      : super(_value, _then);


/// Create a copy of EditProjectMaterialsEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$ReloadedImpl  implements _Reloaded {
  const _$ReloadedImpl();

  



@override
String toString() {
  return 'EditProjectMaterialsEvent.reloaded()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ReloadedImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _Reloaded implements EditProjectMaterialsEvent {
  const factory _Reloaded() = _$ReloadedImpl;
  

  



}

/// @nodoc
abstract class _$$AddMaterialImplCopyWith<$Res>  {
  factory _$$AddMaterialImplCopyWith(_$AddMaterialImpl value, $Res Function(_$AddMaterialImpl) then) = __$$AddMaterialImplCopyWithImpl<$Res>;
@useResult
$Res call({
 List<int> materialId
});



}

/// @nodoc
class __$$AddMaterialImplCopyWithImpl<$Res> extends _$EditProjectMaterialsEventCopyWithImpl<$Res, _$AddMaterialImpl> implements _$$AddMaterialImplCopyWith<$Res> {
  __$$AddMaterialImplCopyWithImpl(_$AddMaterialImpl _value, $Res Function(_$AddMaterialImpl) _then)
      : super(_value, _then);


/// Create a copy of EditProjectMaterialsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? materialId = null,}) {
  return _then(_$AddMaterialImpl(
materialId: null == materialId ? _value._materialId : materialId // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

/// @nodoc


class _$AddMaterialImpl  implements _AddMaterial {
  const _$AddMaterialImpl({required final  List<int> materialId}): _materialId = materialId;

  

 final  List<int> _materialId;
@override List<int> get materialId {
  if (_materialId is EqualUnmodifiableListView) return _materialId;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materialId);
}


@override
String toString() {
  return 'EditProjectMaterialsEvent.addMaterial(materialId: $materialId)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$AddMaterialImpl&&const DeepCollectionEquality().equals(other._materialId, _materialId));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_materialId));

/// Create a copy of EditProjectMaterialsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$AddMaterialImplCopyWith<_$AddMaterialImpl> get copyWith => __$$AddMaterialImplCopyWithImpl<_$AddMaterialImpl>(this, _$identity);








}


abstract class _AddMaterial implements EditProjectMaterialsEvent {
  const factory _AddMaterial({required final  List<int> materialId}) = _$AddMaterialImpl;
  

  

 List<int> get materialId;
/// Create a copy of EditProjectMaterialsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$AddMaterialImplCopyWith<_$AddMaterialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$DeleteMaterialsImplCopyWith<$Res>  {
  factory _$$DeleteMaterialsImplCopyWith(_$DeleteMaterialsImpl value, $Res Function(_$DeleteMaterialsImpl) then) = __$$DeleteMaterialsImplCopyWithImpl<$Res>;
@useResult
$Res call({
 List<int> materialIds
});



}

/// @nodoc
class __$$DeleteMaterialsImplCopyWithImpl<$Res> extends _$EditProjectMaterialsEventCopyWithImpl<$Res, _$DeleteMaterialsImpl> implements _$$DeleteMaterialsImplCopyWith<$Res> {
  __$$DeleteMaterialsImplCopyWithImpl(_$DeleteMaterialsImpl _value, $Res Function(_$DeleteMaterialsImpl) _then)
      : super(_value, _then);


/// Create a copy of EditProjectMaterialsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? materialIds = null,}) {
  return _then(_$DeleteMaterialsImpl(
materialIds: null == materialIds ? _value._materialIds : materialIds // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

/// @nodoc


class _$DeleteMaterialsImpl  implements _DeleteMaterials {
  const _$DeleteMaterialsImpl({required final  List<int> materialIds}): _materialIds = materialIds;

  

 final  List<int> _materialIds;
@override List<int> get materialIds {
  if (_materialIds is EqualUnmodifiableListView) return _materialIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materialIds);
}


@override
String toString() {
  return 'EditProjectMaterialsEvent.deleteMaterials(materialIds: $materialIds)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$DeleteMaterialsImpl&&const DeepCollectionEquality().equals(other._materialIds, _materialIds));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_materialIds));

/// Create a copy of EditProjectMaterialsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$DeleteMaterialsImplCopyWith<_$DeleteMaterialsImpl> get copyWith => __$$DeleteMaterialsImplCopyWithImpl<_$DeleteMaterialsImpl>(this, _$identity);








}


abstract class _DeleteMaterials implements EditProjectMaterialsEvent {
  const factory _DeleteMaterials({required final  List<int> materialIds}) = _$DeleteMaterialsImpl;
  

  

 List<int> get materialIds;
/// Create a copy of EditProjectMaterialsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$DeleteMaterialsImplCopyWith<_$DeleteMaterialsImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
mixin _$EditProjectMaterialsState {

 List<Material> get materials => throw _privateConstructorUsedError;







/// Create a copy of EditProjectMaterialsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$EditProjectMaterialsStateCopyWith<EditProjectMaterialsState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $EditProjectMaterialsStateCopyWith<$Res>  {
  factory $EditProjectMaterialsStateCopyWith(EditProjectMaterialsState value, $Res Function(EditProjectMaterialsState) then) = _$EditProjectMaterialsStateCopyWithImpl<$Res, EditProjectMaterialsState>;
@useResult
$Res call({
 List<Material> materials
});



}

/// @nodoc
class _$EditProjectMaterialsStateCopyWithImpl<$Res,$Val extends EditProjectMaterialsState> implements $EditProjectMaterialsStateCopyWith<$Res> {
  _$EditProjectMaterialsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of EditProjectMaterialsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? materials = null,}) {
  return _then(_value.copyWith(
materials: null == materials ? _value.materials : materials // ignore: cast_nullable_to_non_nullable
as List<Material>,
  )as $Val);
}

}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $EditProjectMaterialsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Material> materials
});



}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$EditProjectMaterialsStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of EditProjectMaterialsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? materials = null,}) {
  return _then(_$InitialImpl(
materials: null == materials ? _value._materials : materials // ignore: cast_nullable_to_non_nullable
as List<Material>,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl({final  List<Material> materials = const []}): _materials = materials;

  

 final  List<Material> _materials;
@override@JsonKey() List<Material> get materials {
  if (_materials is EqualUnmodifiableListView) return _materials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materials);
}


@override
String toString() {
  return 'EditProjectMaterialsState.initial(materials: $materials)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&const DeepCollectionEquality().equals(other._materials, _materials));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_materials));

/// Create a copy of EditProjectMaterialsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements EditProjectMaterialsState {
  const factory Initial({final  List<Material> materials}) = _$InitialImpl;
  

  

@override List<Material> get materials;
/// Create a copy of EditProjectMaterialsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> implements $EditProjectMaterialsStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl value, $Res Function(_$LoadingImpl) then) = __$$LoadingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Material> materials
});



}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$EditProjectMaterialsStateCopyWithImpl<$Res, _$LoadingImpl> implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);


/// Create a copy of EditProjectMaterialsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? materials = null,}) {
  return _then(_$LoadingImpl(
materials: null == materials ? _value._materials : materials // ignore: cast_nullable_to_non_nullable
as List<Material>,
  ));
}


}

/// @nodoc


class _$LoadingImpl  implements Loading {
  const _$LoadingImpl({final  List<Material> materials = const []}): _materials = materials;

  

 final  List<Material> _materials;
@override@JsonKey() List<Material> get materials {
  if (_materials is EqualUnmodifiableListView) return _materials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materials);
}


@override
String toString() {
  return 'EditProjectMaterialsState.loading(materials: $materials)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadingImpl&&const DeepCollectionEquality().equals(other._materials, _materials));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_materials));

/// Create a copy of EditProjectMaterialsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);








}


abstract class Loading implements EditProjectMaterialsState {
  const factory Loading({final  List<Material> materials}) = _$LoadingImpl;
  

  

@override List<Material> get materials;
/// Create a copy of EditProjectMaterialsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $EditProjectMaterialsStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(_$LoadedImpl value, $Res Function(_$LoadedImpl) then) = __$$LoadedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Material> materials
});



}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res> extends _$EditProjectMaterialsStateCopyWithImpl<$Res, _$LoadedImpl> implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(_$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);


/// Create a copy of EditProjectMaterialsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? materials = null,}) {
  return _then(_$LoadedImpl(
materials: null == materials ? _value._materials : materials // ignore: cast_nullable_to_non_nullable
as List<Material>,
  ));
}


}

/// @nodoc


class _$LoadedImpl  implements Loaded {
  const _$LoadedImpl({final  List<Material> materials = const []}): _materials = materials;

  

 final  List<Material> _materials;
@override@JsonKey() List<Material> get materials {
  if (_materials is EqualUnmodifiableListView) return _materials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materials);
}


@override
String toString() {
  return 'EditProjectMaterialsState.loaded(materials: $materials)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadedImpl&&const DeepCollectionEquality().equals(other._materials, _materials));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_materials));

/// Create a copy of EditProjectMaterialsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);








}


abstract class Loaded implements EditProjectMaterialsState {
  const factory Loaded({final  List<Material> materials}) = _$LoadedImpl;
  

  

@override List<Material> get materials;
/// Create a copy of EditProjectMaterialsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$DeletingImplCopyWith<$Res> implements $EditProjectMaterialsStateCopyWith<$Res> {
  factory _$$DeletingImplCopyWith(_$DeletingImpl value, $Res Function(_$DeletingImpl) then) = __$$DeletingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Material> materials
});



}

/// @nodoc
class __$$DeletingImplCopyWithImpl<$Res> extends _$EditProjectMaterialsStateCopyWithImpl<$Res, _$DeletingImpl> implements _$$DeletingImplCopyWith<$Res> {
  __$$DeletingImplCopyWithImpl(_$DeletingImpl _value, $Res Function(_$DeletingImpl) _then)
      : super(_value, _then);


/// Create a copy of EditProjectMaterialsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? materials = null,}) {
  return _then(_$DeletingImpl(
materials: null == materials ? _value._materials : materials // ignore: cast_nullable_to_non_nullable
as List<Material>,
  ));
}


}

/// @nodoc


class _$DeletingImpl  implements Deleting {
  const _$DeletingImpl({final  List<Material> materials = const []}): _materials = materials;

  

 final  List<Material> _materials;
@override@JsonKey() List<Material> get materials {
  if (_materials is EqualUnmodifiableListView) return _materials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materials);
}


@override
String toString() {
  return 'EditProjectMaterialsState.deleting(materials: $materials)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$DeletingImpl&&const DeepCollectionEquality().equals(other._materials, _materials));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_materials));

/// Create a copy of EditProjectMaterialsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$DeletingImplCopyWith<_$DeletingImpl> get copyWith => __$$DeletingImplCopyWithImpl<_$DeletingImpl>(this, _$identity);








}


abstract class Deleting implements EditProjectMaterialsState {
  const factory Deleting({final  List<Material> materials}) = _$DeletingImpl;
  

  

@override List<Material> get materials;
/// Create a copy of EditProjectMaterialsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$DeletingImplCopyWith<_$DeletingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$DeletedImplCopyWith<$Res> implements $EditProjectMaterialsStateCopyWith<$Res> {
  factory _$$DeletedImplCopyWith(_$DeletedImpl value, $Res Function(_$DeletedImpl) then) = __$$DeletedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Material> materials
});



}

/// @nodoc
class __$$DeletedImplCopyWithImpl<$Res> extends _$EditProjectMaterialsStateCopyWithImpl<$Res, _$DeletedImpl> implements _$$DeletedImplCopyWith<$Res> {
  __$$DeletedImplCopyWithImpl(_$DeletedImpl _value, $Res Function(_$DeletedImpl) _then)
      : super(_value, _then);


/// Create a copy of EditProjectMaterialsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? materials = null,}) {
  return _then(_$DeletedImpl(
materials: null == materials ? _value._materials : materials // ignore: cast_nullable_to_non_nullable
as List<Material>,
  ));
}


}

/// @nodoc


class _$DeletedImpl  implements Deleted {
  const _$DeletedImpl({final  List<Material> materials = const []}): _materials = materials;

  

 final  List<Material> _materials;
@override@JsonKey() List<Material> get materials {
  if (_materials is EqualUnmodifiableListView) return _materials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materials);
}


@override
String toString() {
  return 'EditProjectMaterialsState.deleted(materials: $materials)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$DeletedImpl&&const DeepCollectionEquality().equals(other._materials, _materials));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_materials));

/// Create a copy of EditProjectMaterialsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$DeletedImplCopyWith<_$DeletedImpl> get copyWith => __$$DeletedImplCopyWithImpl<_$DeletedImpl>(this, _$identity);








}


abstract class Deleted implements EditProjectMaterialsState {
  const factory Deleted({final  List<Material> materials}) = _$DeletedImpl;
  

  

@override List<Material> get materials;
/// Create a copy of EditProjectMaterialsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$DeletedImplCopyWith<_$DeletedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $EditProjectMaterialsStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Material> materials, String message
});



}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$EditProjectMaterialsStateCopyWithImpl<$Res, _$ErrorImpl> implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);


/// Create a copy of EditProjectMaterialsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? materials = null,Object? message = null,}) {
  return _then(_$ErrorImpl(
materials: null == materials ? _value._materials : materials // ignore: cast_nullable_to_non_nullable
as List<Material>,message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$ErrorImpl  implements Error {
  const _$ErrorImpl({final  List<Material> materials = const [], required this.message}): _materials = materials;

  

 final  List<Material> _materials;
@override@JsonKey() List<Material> get materials {
  if (_materials is EqualUnmodifiableListView) return _materials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materials);
}

@override final  String message;

@override
String toString() {
  return 'EditProjectMaterialsState.error(materials: $materials, message: $message)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ErrorImpl&&const DeepCollectionEquality().equals(other._materials, _materials)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_materials),message);

/// Create a copy of EditProjectMaterialsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);








}


abstract class Error implements EditProjectMaterialsState {
  const factory Error({final  List<Material> materials, required final  String message}) = _$ErrorImpl;
  

  

@override List<Material> get materials; String get message;
/// Create a copy of EditProjectMaterialsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
