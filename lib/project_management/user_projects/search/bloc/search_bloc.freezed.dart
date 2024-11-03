// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProjectSearchEvent {










}

/// @nodoc
abstract class $ProjectSearchEventCopyWith<$Res>  {
  factory $ProjectSearchEventCopyWith(ProjectSearchEvent value, $Res Function(ProjectSearchEvent) then) = _$ProjectSearchEventCopyWithImpl<$Res, ProjectSearchEvent>;



}

/// @nodoc
class _$ProjectSearchEventCopyWithImpl<$Res,$Val extends ProjectSearchEvent> implements $ProjectSearchEventCopyWith<$Res> {
  _$ProjectSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ProjectSearchEvent
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$SearchProjectsImplCopyWith<$Res>  {
  factory _$$SearchProjectsImplCopyWith(_$SearchProjectsImpl value, $Res Function(_$SearchProjectsImpl) then) = __$$SearchProjectsImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String query
});



}

/// @nodoc
class __$$SearchProjectsImplCopyWithImpl<$Res> extends _$ProjectSearchEventCopyWithImpl<$Res, _$SearchProjectsImpl> implements _$$SearchProjectsImplCopyWith<$Res> {
  __$$SearchProjectsImplCopyWithImpl(_$SearchProjectsImpl _value, $Res Function(_$SearchProjectsImpl) _then)
      : super(_value, _then);


/// Create a copy of ProjectSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,}) {
  return _then(_$SearchProjectsImpl(
query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$SearchProjectsImpl  implements _SearchProjects {
  const _$SearchProjectsImpl({required this.query});

  

@override final  String query;

@override
String toString() {
  return 'ProjectSearchEvent.searchProjects(query: $query)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SearchProjectsImpl&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

/// Create a copy of ProjectSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$SearchProjectsImplCopyWith<_$SearchProjectsImpl> get copyWith => __$$SearchProjectsImplCopyWithImpl<_$SearchProjectsImpl>(this, _$identity);








}


abstract class _SearchProjects implements ProjectSearchEvent {
  const factory _SearchProjects({required final  String query}) = _$SearchProjectsImpl;
  

  

 String get query;
/// Create a copy of ProjectSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$SearchProjectsImplCopyWith<_$SearchProjectsImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadMoreProjectsImplCopyWith<$Res>  {
  factory _$$LoadMoreProjectsImplCopyWith(_$LoadMoreProjectsImpl value, $Res Function(_$LoadMoreProjectsImpl) then) = __$$LoadMoreProjectsImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$LoadMoreProjectsImplCopyWithImpl<$Res> extends _$ProjectSearchEventCopyWithImpl<$Res, _$LoadMoreProjectsImpl> implements _$$LoadMoreProjectsImplCopyWith<$Res> {
  __$$LoadMoreProjectsImplCopyWithImpl(_$LoadMoreProjectsImpl _value, $Res Function(_$LoadMoreProjectsImpl) _then)
      : super(_value, _then);


/// Create a copy of ProjectSearchEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$LoadMoreProjectsImpl  implements _LoadMoreProjects {
  const _$LoadMoreProjectsImpl();

  



@override
String toString() {
  return 'ProjectSearchEvent.loadMoreProjects()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadMoreProjectsImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _LoadMoreProjects implements ProjectSearchEvent {
  const factory _LoadMoreProjects() = _$LoadMoreProjectsImpl;
  

  



}

/// @nodoc
abstract class _$$ClearSearchImplCopyWith<$Res>  {
  factory _$$ClearSearchImplCopyWith(_$ClearSearchImpl value, $Res Function(_$ClearSearchImpl) then) = __$$ClearSearchImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$ClearSearchImplCopyWithImpl<$Res> extends _$ProjectSearchEventCopyWithImpl<$Res, _$ClearSearchImpl> implements _$$ClearSearchImplCopyWith<$Res> {
  __$$ClearSearchImplCopyWithImpl(_$ClearSearchImpl _value, $Res Function(_$ClearSearchImpl) _then)
      : super(_value, _then);


/// Create a copy of ProjectSearchEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$ClearSearchImpl  implements _ClearSearch {
  const _$ClearSearchImpl();

  



@override
String toString() {
  return 'ProjectSearchEvent.clearSearch()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ClearSearchImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _ClearSearch implements ProjectSearchEvent {
  const factory _ClearSearch() = _$ClearSearchImpl;
  

  



}

/// @nodoc
mixin _$ProjectSearchState {

 List<Project> get projects => throw _privateConstructorUsedError; Pagination<Project> get pagination => throw _privateConstructorUsedError;







/// Create a copy of ProjectSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ProjectSearchStateCopyWith<ProjectSearchState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ProjectSearchStateCopyWith<$Res>  {
  factory $ProjectSearchStateCopyWith(ProjectSearchState value, $Res Function(ProjectSearchState) then) = _$ProjectSearchStateCopyWithImpl<$Res, ProjectSearchState>;
@useResult
$Res call({
 List<Project> projects, Pagination<Project> pagination
});


$PaginationCopyWith<Project, $Res> get pagination;
}

/// @nodoc
class _$ProjectSearchStateCopyWithImpl<$Res,$Val extends ProjectSearchState> implements $ProjectSearchStateCopyWith<$Res> {
  _$ProjectSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ProjectSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? projects = null,Object? pagination = null,}) {
  return _then(_value.copyWith(
projects: null == projects ? _value.projects : projects // ignore: cast_nullable_to_non_nullable
as List<Project>,pagination: null == pagination ? _value.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination<Project>,
  )as $Val);
}
/// Create a copy of ProjectSearchState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<Project, $Res> get pagination {
  
  return $PaginationCopyWith<Project, $Res>(_value.pagination, (value) {
    return _then(_value.copyWith(pagination: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $ProjectSearchStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Project> projects, Pagination<Project> pagination
});


@override $PaginationCopyWith<Project, $Res> get pagination;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$ProjectSearchStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of ProjectSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? projects = null,Object? pagination = null,}) {
  return _then(_$InitialImpl(
projects: null == projects ? _value._projects : projects // ignore: cast_nullable_to_non_nullable
as List<Project>,pagination: null == pagination ? _value.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination<Project>,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl({final  List<Project> projects = const [], this.pagination = const Pagination()}): _projects = projects;

  

 final  List<Project> _projects;
@override@JsonKey() List<Project> get projects {
  if (_projects is EqualUnmodifiableListView) return _projects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_projects);
}

@override@JsonKey() final  Pagination<Project> pagination;

@override
String toString() {
  return 'ProjectSearchState.initial(projects: $projects, pagination: $pagination)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&const DeepCollectionEquality().equals(other._projects, _projects)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_projects),pagination);

/// Create a copy of ProjectSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements ProjectSearchState {
  const factory Initial({final  List<Project> projects, final  Pagination<Project> pagination}) = _$InitialImpl;
  

  

@override List<Project> get projects;@override Pagination<Project> get pagination;
/// Create a copy of ProjectSearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> implements $ProjectSearchStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl value, $Res Function(_$LoadingImpl) then) = __$$LoadingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Project> projects, Pagination<Project> pagination
});


@override $PaginationCopyWith<Project, $Res> get pagination;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$ProjectSearchStateCopyWithImpl<$Res, _$LoadingImpl> implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);


/// Create a copy of ProjectSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? projects = null,Object? pagination = null,}) {
  return _then(_$LoadingImpl(
projects: null == projects ? _value._projects : projects // ignore: cast_nullable_to_non_nullable
as List<Project>,pagination: null == pagination ? _value.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination<Project>,
  ));
}


}

/// @nodoc


class _$LoadingImpl  implements Loading {
  const _$LoadingImpl({final  List<Project> projects = const [], this.pagination = const Pagination()}): _projects = projects;

  

 final  List<Project> _projects;
@override@JsonKey() List<Project> get projects {
  if (_projects is EqualUnmodifiableListView) return _projects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_projects);
}

@override@JsonKey() final  Pagination<Project> pagination;

@override
String toString() {
  return 'ProjectSearchState.loading(projects: $projects, pagination: $pagination)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadingImpl&&const DeepCollectionEquality().equals(other._projects, _projects)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_projects),pagination);

/// Create a copy of ProjectSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);








}


abstract class Loading implements ProjectSearchState {
  const factory Loading({final  List<Project> projects, final  Pagination<Project> pagination}) = _$LoadingImpl;
  

  

@override List<Project> get projects;@override Pagination<Project> get pagination;
/// Create a copy of ProjectSearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $ProjectSearchStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(_$LoadedImpl value, $Res Function(_$LoadedImpl) then) = __$$LoadedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Project> projects, Pagination<Project> pagination
});


@override $PaginationCopyWith<Project, $Res> get pagination;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res> extends _$ProjectSearchStateCopyWithImpl<$Res, _$LoadedImpl> implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(_$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);


/// Create a copy of ProjectSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? projects = null,Object? pagination = null,}) {
  return _then(_$LoadedImpl(
projects: null == projects ? _value._projects : projects // ignore: cast_nullable_to_non_nullable
as List<Project>,pagination: null == pagination ? _value.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination<Project>,
  ));
}


}

/// @nodoc


class _$LoadedImpl  implements Loaded {
  const _$LoadedImpl({required final  List<Project> projects, required this.pagination}): _projects = projects;

  

 final  List<Project> _projects;
@override List<Project> get projects {
  if (_projects is EqualUnmodifiableListView) return _projects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_projects);
}

@override final  Pagination<Project> pagination;

@override
String toString() {
  return 'ProjectSearchState.loaded(projects: $projects, pagination: $pagination)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadedImpl&&const DeepCollectionEquality().equals(other._projects, _projects)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_projects),pagination);

/// Create a copy of ProjectSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);








}


abstract class Loaded implements ProjectSearchState {
  const factory Loaded({required final  List<Project> projects, required final  Pagination<Project> pagination}) = _$LoadedImpl;
  

  

@override List<Project> get projects;@override Pagination<Project> get pagination;
/// Create a copy of ProjectSearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $ProjectSearchStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Project> projects, Pagination<Project> pagination, String message
});


@override $PaginationCopyWith<Project, $Res> get pagination;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$ProjectSearchStateCopyWithImpl<$Res, _$ErrorImpl> implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);


/// Create a copy of ProjectSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? projects = null,Object? pagination = null,Object? message = null,}) {
  return _then(_$ErrorImpl(
projects: null == projects ? _value._projects : projects // ignore: cast_nullable_to_non_nullable
as List<Project>,pagination: null == pagination ? _value.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination<Project>,message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$ErrorImpl  implements Error {
  const _$ErrorImpl({final  List<Project> projects = const [], this.pagination = const Pagination(), required this.message}): _projects = projects;

  

 final  List<Project> _projects;
@override@JsonKey() List<Project> get projects {
  if (_projects is EqualUnmodifiableListView) return _projects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_projects);
}

@override@JsonKey() final  Pagination<Project> pagination;
@override final  String message;

@override
String toString() {
  return 'ProjectSearchState.error(projects: $projects, pagination: $pagination, message: $message)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ErrorImpl&&const DeepCollectionEquality().equals(other._projects, _projects)&&(identical(other.pagination, pagination) || other.pagination == pagination)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_projects),pagination,message);

/// Create a copy of ProjectSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);








}


abstract class Error implements ProjectSearchState {
  const factory Error({final  List<Project> projects, final  Pagination<Project> pagination, required final  String message}) = _$ErrorImpl;
  

  

@override List<Project> get projects;@override Pagination<Project> get pagination; String get message;
/// Create a copy of ProjectSearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
