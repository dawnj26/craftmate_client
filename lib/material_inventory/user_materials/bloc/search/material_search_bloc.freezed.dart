// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'material_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MaterialSearchEvent {










}

/// @nodoc
abstract class $MaterialSearchEventCopyWith<$Res>  {
  factory $MaterialSearchEventCopyWith(MaterialSearchEvent value, $Res Function(MaterialSearchEvent) then) = _$MaterialSearchEventCopyWithImpl<$Res, MaterialSearchEvent>;



}

/// @nodoc
class _$MaterialSearchEventCopyWithImpl<$Res,$Val extends MaterialSearchEvent> implements $MaterialSearchEventCopyWith<$Res> {
  _$MaterialSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of MaterialSearchEvent
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$SearchMaterialImplCopyWith<$Res>  {
  factory _$$SearchMaterialImplCopyWith(_$SearchMaterialImpl value, $Res Function(_$SearchMaterialImpl) then) = __$$SearchMaterialImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String query
});



}

/// @nodoc
class __$$SearchMaterialImplCopyWithImpl<$Res> extends _$MaterialSearchEventCopyWithImpl<$Res, _$SearchMaterialImpl> implements _$$SearchMaterialImplCopyWith<$Res> {
  __$$SearchMaterialImplCopyWithImpl(_$SearchMaterialImpl _value, $Res Function(_$SearchMaterialImpl) _then)
      : super(_value, _then);


/// Create a copy of MaterialSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,}) {
  return _then(_$SearchMaterialImpl(
null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$SearchMaterialImpl  implements _SearchMaterial {
  const _$SearchMaterialImpl(this.query);

  

@override final  String query;

@override
String toString() {
  return 'MaterialSearchEvent.searchMaterial(query: $query)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SearchMaterialImpl&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

/// Create a copy of MaterialSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$SearchMaterialImplCopyWith<_$SearchMaterialImpl> get copyWith => __$$SearchMaterialImplCopyWithImpl<_$SearchMaterialImpl>(this, _$identity);








}


abstract class _SearchMaterial implements MaterialSearchEvent {
  const factory _SearchMaterial(final  String query) = _$SearchMaterialImpl;
  

  

 String get query;
/// Create a copy of MaterialSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$SearchMaterialImplCopyWith<_$SearchMaterialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ClearSearchImplCopyWith<$Res>  {
  factory _$$ClearSearchImplCopyWith(_$ClearSearchImpl value, $Res Function(_$ClearSearchImpl) then) = __$$ClearSearchImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$ClearSearchImplCopyWithImpl<$Res> extends _$MaterialSearchEventCopyWithImpl<$Res, _$ClearSearchImpl> implements _$$ClearSearchImplCopyWith<$Res> {
  __$$ClearSearchImplCopyWithImpl(_$ClearSearchImpl _value, $Res Function(_$ClearSearchImpl) _then)
      : super(_value, _then);


/// Create a copy of MaterialSearchEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$ClearSearchImpl  implements _ClearSearch {
  const _$ClearSearchImpl();

  



@override
String toString() {
  return 'MaterialSearchEvent.clearSearch()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ClearSearchImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _ClearSearch implements MaterialSearchEvent {
  const factory _ClearSearch() = _$ClearSearchImpl;
  

  



}

/// @nodoc
mixin _$MaterialSearchState {

 List<Material> get materials => throw _privateConstructorUsedError;







/// Create a copy of MaterialSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$MaterialSearchStateCopyWith<MaterialSearchState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $MaterialSearchStateCopyWith<$Res>  {
  factory $MaterialSearchStateCopyWith(MaterialSearchState value, $Res Function(MaterialSearchState) then) = _$MaterialSearchStateCopyWithImpl<$Res, MaterialSearchState>;
@useResult
$Res call({
 List<Material> materials
});



}

/// @nodoc
class _$MaterialSearchStateCopyWithImpl<$Res,$Val extends MaterialSearchState> implements $MaterialSearchStateCopyWith<$Res> {
  _$MaterialSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of MaterialSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? materials = null,}) {
  return _then(_value.copyWith(
materials: null == materials ? _value.materials : materials // ignore: cast_nullable_to_non_nullable
as List<Material>,
  )as $Val);
}

}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $MaterialSearchStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Material> materials
});



}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$MaterialSearchStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of MaterialSearchState
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
  return 'MaterialSearchState.initial(materials: $materials)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&const DeepCollectionEquality().equals(other._materials, _materials));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_materials));

/// Create a copy of MaterialSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements MaterialSearchState {
  const factory Initial({final  List<Material> materials}) = _$InitialImpl;
  

  

@override List<Material> get materials;
/// Create a copy of MaterialSearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> implements $MaterialSearchStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl value, $Res Function(_$LoadingImpl) then) = __$$LoadingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Material> materials
});



}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$MaterialSearchStateCopyWithImpl<$Res, _$LoadingImpl> implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);


/// Create a copy of MaterialSearchState
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
  return 'MaterialSearchState.loading(materials: $materials)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadingImpl&&const DeepCollectionEquality().equals(other._materials, _materials));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_materials));

/// Create a copy of MaterialSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);








}


abstract class Loading implements MaterialSearchState {
  const factory Loading({final  List<Material> materials}) = _$LoadingImpl;
  

  

@override List<Material> get materials;
/// Create a copy of MaterialSearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $MaterialSearchStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(_$LoadedImpl value, $Res Function(_$LoadedImpl) then) = __$$LoadedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Material> materials
});



}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res> extends _$MaterialSearchStateCopyWithImpl<$Res, _$LoadedImpl> implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(_$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);


/// Create a copy of MaterialSearchState
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
  const _$LoadedImpl({required final  List<Material> materials}): _materials = materials;

  

 final  List<Material> _materials;
@override List<Material> get materials {
  if (_materials is EqualUnmodifiableListView) return _materials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materials);
}


@override
String toString() {
  return 'MaterialSearchState.loaded(materials: $materials)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadedImpl&&const DeepCollectionEquality().equals(other._materials, _materials));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_materials));

/// Create a copy of MaterialSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);








}


abstract class Loaded implements MaterialSearchState {
  const factory Loaded({required final  List<Material> materials}) = _$LoadedImpl;
  

  

@override List<Material> get materials;
/// Create a copy of MaterialSearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $MaterialSearchStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Material> materials, String message
});



}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$MaterialSearchStateCopyWithImpl<$Res, _$ErrorImpl> implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);


/// Create a copy of MaterialSearchState
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
  return 'MaterialSearchState.error(materials: $materials, message: $message)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ErrorImpl&&const DeepCollectionEquality().equals(other._materials, _materials)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_materials),message);

/// Create a copy of MaterialSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);








}


abstract class Error implements MaterialSearchState {
  const factory Error({final  List<Material> materials, required final  String message}) = _$ErrorImpl;
  

  

@override List<Material> get materials; String get message;
/// Create a copy of MaterialSearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
