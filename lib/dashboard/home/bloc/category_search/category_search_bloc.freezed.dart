// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategorySearchEvent {

 String get query => throw _privateConstructorUsedError;







/// Create a copy of CategorySearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$CategorySearchEventCopyWith<CategorySearchEvent> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $CategorySearchEventCopyWith<$Res>  {
  factory $CategorySearchEventCopyWith(CategorySearchEvent value, $Res Function(CategorySearchEvent) then) = _$CategorySearchEventCopyWithImpl<$Res, CategorySearchEvent>;
@useResult
$Res call({
 String query
});



}

/// @nodoc
class _$CategorySearchEventCopyWithImpl<$Res,$Val extends CategorySearchEvent> implements $CategorySearchEventCopyWith<$Res> {
  _$CategorySearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of CategorySearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,}) {
  return _then(_value.copyWith(
query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as String,
  )as $Val);
}

}


/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> implements $CategorySearchEventCopyWith<$Res> {
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) = __$$StartedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String query
});



}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res> extends _$CategorySearchEventCopyWithImpl<$Res, _$StartedImpl> implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(_$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);


/// Create a copy of CategorySearchEvent
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
  return 'CategorySearchEvent.started(query: $query)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StartedImpl&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

/// Create a copy of CategorySearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$StartedImplCopyWith<_$StartedImpl> get copyWith => __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);








}


abstract class _Started implements CategorySearchEvent {
  const factory _Started(final  String query) = _$StartedImpl;
  

  

@override String get query;
/// Create a copy of CategorySearchEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$StartedImplCopyWith<_$StartedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
mixin _$CategorySearchState {

 List<ProjectCategory> get categories => throw _privateConstructorUsedError; List<ProjectCategory> get filteredCategories => throw _privateConstructorUsedError;







/// Create a copy of CategorySearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$CategorySearchStateCopyWith<CategorySearchState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $CategorySearchStateCopyWith<$Res>  {
  factory $CategorySearchStateCopyWith(CategorySearchState value, $Res Function(CategorySearchState) then) = _$CategorySearchStateCopyWithImpl<$Res, CategorySearchState>;
@useResult
$Res call({
 List<ProjectCategory> categories, List<ProjectCategory> filteredCategories
});



}

/// @nodoc
class _$CategorySearchStateCopyWithImpl<$Res,$Val extends CategorySearchState> implements $CategorySearchStateCopyWith<$Res> {
  _$CategorySearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of CategorySearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = null,Object? filteredCategories = null,}) {
  return _then(_value.copyWith(
categories: null == categories ? _value.categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,filteredCategories: null == filteredCategories ? _value.filteredCategories : filteredCategories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,
  )as $Val);
}

}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $CategorySearchStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<ProjectCategory> categories, List<ProjectCategory> filteredCategories
});



}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$CategorySearchStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of CategorySearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = null,Object? filteredCategories = null,}) {
  return _then(_$InitialImpl(
categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,filteredCategories: null == filteredCategories ? _value._filteredCategories : filteredCategories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements _Initial {
  const _$InitialImpl({final  List<ProjectCategory> categories = const [], final  List<ProjectCategory> filteredCategories = const []}): _categories = categories,_filteredCategories = filteredCategories;

  

 final  List<ProjectCategory> _categories;
@override@JsonKey() List<ProjectCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<ProjectCategory> _filteredCategories;
@override@JsonKey() List<ProjectCategory> get filteredCategories {
  if (_filteredCategories is EqualUnmodifiableListView) return _filteredCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteredCategories);
}


@override
String toString() {
  return 'CategorySearchState.initial(categories: $categories, filteredCategories: $filteredCategories)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._filteredCategories, _filteredCategories));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_filteredCategories));

/// Create a copy of CategorySearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class _Initial implements CategorySearchState {
  const factory _Initial({final  List<ProjectCategory> categories, final  List<ProjectCategory> filteredCategories}) = _$InitialImpl;
  

  

@override List<ProjectCategory> get categories;@override List<ProjectCategory> get filteredCategories;
/// Create a copy of CategorySearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $CategorySearchStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(_$LoadedImpl value, $Res Function(_$LoadedImpl) then) = __$$LoadedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<ProjectCategory> categories, List<ProjectCategory> filteredCategories
});



}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res> extends _$CategorySearchStateCopyWithImpl<$Res, _$LoadedImpl> implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(_$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);


/// Create a copy of CategorySearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = null,Object? filteredCategories = null,}) {
  return _then(_$LoadedImpl(
categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,filteredCategories: null == filteredCategories ? _value._filteredCategories : filteredCategories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,
  ));
}


}

/// @nodoc


class _$LoadedImpl  implements _Loaded {
  const _$LoadedImpl({final  List<ProjectCategory> categories = const [], final  List<ProjectCategory> filteredCategories = const []}): _categories = categories,_filteredCategories = filteredCategories;

  

 final  List<ProjectCategory> _categories;
@override@JsonKey() List<ProjectCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<ProjectCategory> _filteredCategories;
@override@JsonKey() List<ProjectCategory> get filteredCategories {
  if (_filteredCategories is EqualUnmodifiableListView) return _filteredCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteredCategories);
}


@override
String toString() {
  return 'CategorySearchState.loaded(categories: $categories, filteredCategories: $filteredCategories)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadedImpl&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._filteredCategories, _filteredCategories));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_filteredCategories));

/// Create a copy of CategorySearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);








}


abstract class _Loaded implements CategorySearchState {
  const factory _Loaded({final  List<ProjectCategory> categories, final  List<ProjectCategory> filteredCategories}) = _$LoadedImpl;
  

  

@override List<ProjectCategory> get categories;@override List<ProjectCategory> get filteredCategories;
/// Create a copy of CategorySearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => throw _privateConstructorUsedError;

}
