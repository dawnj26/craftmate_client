// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_listing_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SavedListingEvent {










}

/// @nodoc
abstract class $SavedListingEventCopyWith<$Res>  {
  factory $SavedListingEventCopyWith(SavedListingEvent value, $Res Function(SavedListingEvent) then) = _$SavedListingEventCopyWithImpl<$Res, SavedListingEvent>;



}

/// @nodoc
class _$SavedListingEventCopyWithImpl<$Res,$Val extends SavedListingEvent> implements $SavedListingEventCopyWith<$Res> {
  _$SavedListingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of SavedListingEvent
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>  {
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) = __$$StartedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 int userId
});



}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res> extends _$SavedListingEventCopyWithImpl<$Res, _$StartedImpl> implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(_$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);


/// Create a copy of SavedListingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,}) {
  return _then(_$StartedImpl(
null == userId ? _value.userId : userId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _$StartedImpl  implements _Started {
  const _$StartedImpl(this.userId);

  

@override final  int userId;

@override
String toString() {
  return 'SavedListingEvent.started(userId: $userId)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StartedImpl&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

/// Create a copy of SavedListingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$StartedImplCopyWith<_$StartedImpl> get copyWith => __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);








}


abstract class _Started implements SavedListingEvent {
  const factory _Started(final  int userId) = _$StartedImpl;
  

  

 int get userId;
/// Create a copy of SavedListingEvent
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
class __$$CategorySelectedImplCopyWithImpl<$Res> extends _$SavedListingEventCopyWithImpl<$Res, _$CategorySelectedImpl> implements _$$CategorySelectedImplCopyWith<$Res> {
  __$$CategorySelectedImplCopyWithImpl(_$CategorySelectedImpl _value, $Res Function(_$CategorySelectedImpl) _then)
      : super(_value, _then);


/// Create a copy of SavedListingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = null,}) {
  return _then(_$CategorySelectedImpl(
null == category ? _value.category : category // ignore: cast_nullable_to_non_nullable
as ProjectCategory,
  ));
}

/// Create a copy of SavedListingEvent
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
  return 'SavedListingEvent.categorySelected(category: $category)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CategorySelectedImpl&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

/// Create a copy of SavedListingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CategorySelectedImplCopyWith<_$CategorySelectedImpl> get copyWith => __$$CategorySelectedImplCopyWithImpl<_$CategorySelectedImpl>(this, _$identity);








}


abstract class _CategorySelected implements SavedListingEvent {
  const factory _CategorySelected(final  ProjectCategory category) = _$CategorySelectedImpl;
  

  

 ProjectCategory get category;
/// Create a copy of SavedListingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$CategorySelectedImplCopyWith<_$CategorySelectedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
mixin _$SavedListingState {

 List<QueryProduct> get query => throw _privateConstructorUsedError; List<QueryProduct> get filteredQuery => throw _privateConstructorUsedError; List<ProjectCategory> get categories => throw _privateConstructorUsedError; ProjectCategory get selectedCategory => throw _privateConstructorUsedError;







/// Create a copy of SavedListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$SavedListingStateCopyWith<SavedListingState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $SavedListingStateCopyWith<$Res>  {
  factory $SavedListingStateCopyWith(SavedListingState value, $Res Function(SavedListingState) then) = _$SavedListingStateCopyWithImpl<$Res, SavedListingState>;
@useResult
$Res call({
 List<QueryProduct> query, List<QueryProduct> filteredQuery, List<ProjectCategory> categories, ProjectCategory selectedCategory
});


$ProjectCategoryCopyWith<$Res> get selectedCategory;
}

/// @nodoc
class _$SavedListingStateCopyWithImpl<$Res,$Val extends SavedListingState> implements $SavedListingStateCopyWith<$Res> {
  _$SavedListingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of SavedListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? filteredQuery = null,Object? categories = null,Object? selectedCategory = null,}) {
  return _then(_value.copyWith(
query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,filteredQuery: null == filteredQuery ? _value.filteredQuery : filteredQuery // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,categories: null == categories ? _value.categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,selectedCategory: null == selectedCategory ? _value.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as ProjectCategory,
  )as $Val);
}
/// Create a copy of SavedListingState
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
abstract class _$$InitialImplCopyWith<$Res> implements $SavedListingStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<QueryProduct> query, List<QueryProduct> filteredQuery, List<ProjectCategory> categories, ProjectCategory selectedCategory
});


@override $ProjectCategoryCopyWith<$Res> get selectedCategory;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$SavedListingStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of SavedListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? filteredQuery = null,Object? categories = null,Object? selectedCategory = null,}) {
  return _then(_$InitialImpl(
query: null == query ? _value._query : query // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,filteredQuery: null == filteredQuery ? _value._filteredQuery : filteredQuery // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,selectedCategory: null == selectedCategory ? _value.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as ProjectCategory,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl({final  List<QueryProduct> query = const [], final  List<QueryProduct> filteredQuery = const [], final  List<ProjectCategory> categories = const [], this.selectedCategory = const ProjectCategory()}): _query = query,_filteredQuery = filteredQuery,_categories = categories;

  

 final  List<QueryProduct> _query;
@override@JsonKey() List<QueryProduct> get query {
  if (_query is EqualUnmodifiableListView) return _query;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_query);
}

 final  List<QueryProduct> _filteredQuery;
@override@JsonKey() List<QueryProduct> get filteredQuery {
  if (_filteredQuery is EqualUnmodifiableListView) return _filteredQuery;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteredQuery);
}

 final  List<ProjectCategory> _categories;
@override@JsonKey() List<ProjectCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override@JsonKey() final  ProjectCategory selectedCategory;

@override
String toString() {
  return 'SavedListingState.initial(query: $query, filteredQuery: $filteredQuery, categories: $categories, selectedCategory: $selectedCategory)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&const DeepCollectionEquality().equals(other._query, _query)&&const DeepCollectionEquality().equals(other._filteredQuery, _filteredQuery)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_query),const DeepCollectionEquality().hash(_filteredQuery),const DeepCollectionEquality().hash(_categories),selectedCategory);

/// Create a copy of SavedListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements SavedListingState {
  const factory Initial({final  List<QueryProduct> query, final  List<QueryProduct> filteredQuery, final  List<ProjectCategory> categories, final  ProjectCategory selectedCategory}) = _$InitialImpl;
  

  

@override List<QueryProduct> get query;@override List<QueryProduct> get filteredQuery;@override List<ProjectCategory> get categories;@override ProjectCategory get selectedCategory;
/// Create a copy of SavedListingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> implements $SavedListingStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl value, $Res Function(_$LoadingImpl) then) = __$$LoadingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<QueryProduct> query, List<QueryProduct> filteredQuery, List<ProjectCategory> categories, ProjectCategory selectedCategory
});


@override $ProjectCategoryCopyWith<$Res> get selectedCategory;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$SavedListingStateCopyWithImpl<$Res, _$LoadingImpl> implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);


/// Create a copy of SavedListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? filteredQuery = null,Object? categories = null,Object? selectedCategory = null,}) {
  return _then(_$LoadingImpl(
query: null == query ? _value._query : query // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,filteredQuery: null == filteredQuery ? _value._filteredQuery : filteredQuery // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,selectedCategory: null == selectedCategory ? _value.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as ProjectCategory,
  ));
}


}

/// @nodoc


class _$LoadingImpl  implements Loading {
  const _$LoadingImpl({final  List<QueryProduct> query = const [], final  List<QueryProduct> filteredQuery = const [], final  List<ProjectCategory> categories = const [], this.selectedCategory = const ProjectCategory()}): _query = query,_filteredQuery = filteredQuery,_categories = categories;

  

 final  List<QueryProduct> _query;
@override@JsonKey() List<QueryProduct> get query {
  if (_query is EqualUnmodifiableListView) return _query;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_query);
}

 final  List<QueryProduct> _filteredQuery;
@override@JsonKey() List<QueryProduct> get filteredQuery {
  if (_filteredQuery is EqualUnmodifiableListView) return _filteredQuery;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteredQuery);
}

 final  List<ProjectCategory> _categories;
@override@JsonKey() List<ProjectCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override@JsonKey() final  ProjectCategory selectedCategory;

@override
String toString() {
  return 'SavedListingState.loading(query: $query, filteredQuery: $filteredQuery, categories: $categories, selectedCategory: $selectedCategory)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadingImpl&&const DeepCollectionEquality().equals(other._query, _query)&&const DeepCollectionEquality().equals(other._filteredQuery, _filteredQuery)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_query),const DeepCollectionEquality().hash(_filteredQuery),const DeepCollectionEquality().hash(_categories),selectedCategory);

/// Create a copy of SavedListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);








}


abstract class Loading implements SavedListingState {
  const factory Loading({final  List<QueryProduct> query, final  List<QueryProduct> filteredQuery, final  List<ProjectCategory> categories, final  ProjectCategory selectedCategory}) = _$LoadingImpl;
  

  

@override List<QueryProduct> get query;@override List<QueryProduct> get filteredQuery;@override List<ProjectCategory> get categories;@override ProjectCategory get selectedCategory;
/// Create a copy of SavedListingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $SavedListingStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(_$LoadedImpl value, $Res Function(_$LoadedImpl) then) = __$$LoadedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<QueryProduct> query, List<QueryProduct> filteredQuery, List<ProjectCategory> categories, ProjectCategory selectedCategory
});


@override $ProjectCategoryCopyWith<$Res> get selectedCategory;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res> extends _$SavedListingStateCopyWithImpl<$Res, _$LoadedImpl> implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(_$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);


/// Create a copy of SavedListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? filteredQuery = null,Object? categories = null,Object? selectedCategory = null,}) {
  return _then(_$LoadedImpl(
query: null == query ? _value._query : query // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,filteredQuery: null == filteredQuery ? _value._filteredQuery : filteredQuery // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,selectedCategory: null == selectedCategory ? _value.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as ProjectCategory,
  ));
}


}

/// @nodoc


class _$LoadedImpl  implements Loaded {
  const _$LoadedImpl({required final  List<QueryProduct> query, required final  List<QueryProduct> filteredQuery, required final  List<ProjectCategory> categories, required this.selectedCategory}): _query = query,_filteredQuery = filteredQuery,_categories = categories;

  

 final  List<QueryProduct> _query;
@override List<QueryProduct> get query {
  if (_query is EqualUnmodifiableListView) return _query;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_query);
}

 final  List<QueryProduct> _filteredQuery;
@override List<QueryProduct> get filteredQuery {
  if (_filteredQuery is EqualUnmodifiableListView) return _filteredQuery;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteredQuery);
}

 final  List<ProjectCategory> _categories;
@override List<ProjectCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override final  ProjectCategory selectedCategory;

@override
String toString() {
  return 'SavedListingState.loaded(query: $query, filteredQuery: $filteredQuery, categories: $categories, selectedCategory: $selectedCategory)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadedImpl&&const DeepCollectionEquality().equals(other._query, _query)&&const DeepCollectionEquality().equals(other._filteredQuery, _filteredQuery)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_query),const DeepCollectionEquality().hash(_filteredQuery),const DeepCollectionEquality().hash(_categories),selectedCategory);

/// Create a copy of SavedListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);








}


abstract class Loaded implements SavedListingState {
  const factory Loaded({required final  List<QueryProduct> query, required final  List<QueryProduct> filteredQuery, required final  List<ProjectCategory> categories, required final  ProjectCategory selectedCategory}) = _$LoadedImpl;
  

  

@override List<QueryProduct> get query;@override List<QueryProduct> get filteredQuery;@override List<ProjectCategory> get categories;@override ProjectCategory get selectedCategory;
/// Create a copy of SavedListingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $SavedListingStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String message, List<QueryProduct> query, List<QueryProduct> filteredQuery, List<ProjectCategory> categories, ProjectCategory selectedCategory
});


@override $ProjectCategoryCopyWith<$Res> get selectedCategory;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$SavedListingStateCopyWithImpl<$Res, _$ErrorImpl> implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);


/// Create a copy of SavedListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? query = null,Object? filteredQuery = null,Object? categories = null,Object? selectedCategory = null,}) {
  return _then(_$ErrorImpl(
message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,query: null == query ? _value._query : query // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,filteredQuery: null == filteredQuery ? _value._filteredQuery : filteredQuery // ignore: cast_nullable_to_non_nullable
as List<QueryProduct>,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,selectedCategory: null == selectedCategory ? _value.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as ProjectCategory,
  ));
}


}

/// @nodoc


class _$ErrorImpl  implements Error {
  const _$ErrorImpl({required this.message, final  List<QueryProduct> query = const [], final  List<QueryProduct> filteredQuery = const [], final  List<ProjectCategory> categories = const [], this.selectedCategory = const ProjectCategory()}): _query = query,_filteredQuery = filteredQuery,_categories = categories;

  

@override final  String message;
 final  List<QueryProduct> _query;
@override@JsonKey() List<QueryProduct> get query {
  if (_query is EqualUnmodifiableListView) return _query;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_query);
}

 final  List<QueryProduct> _filteredQuery;
@override@JsonKey() List<QueryProduct> get filteredQuery {
  if (_filteredQuery is EqualUnmodifiableListView) return _filteredQuery;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteredQuery);
}

 final  List<ProjectCategory> _categories;
@override@JsonKey() List<ProjectCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override@JsonKey() final  ProjectCategory selectedCategory;

@override
String toString() {
  return 'SavedListingState.error(message: $message, query: $query, filteredQuery: $filteredQuery, categories: $categories, selectedCategory: $selectedCategory)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ErrorImpl&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._query, _query)&&const DeepCollectionEquality().equals(other._filteredQuery, _filteredQuery)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(_query),const DeepCollectionEquality().hash(_filteredQuery),const DeepCollectionEquality().hash(_categories),selectedCategory);

/// Create a copy of SavedListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);








}


abstract class Error implements SavedListingState {
  const factory Error({required final  String message, final  List<QueryProduct> query, final  List<QueryProduct> filteredQuery, final  List<ProjectCategory> categories, final  ProjectCategory selectedCategory}) = _$ErrorImpl;
  

  

 String get message;@override List<QueryProduct> get query;@override List<QueryProduct> get filteredQuery;@override List<ProjectCategory> get categories;@override ProjectCategory get selectedCategory;
/// Create a copy of SavedListingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
