// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ongoing_projects_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OngoingProjectsEvent {










}

/// @nodoc
abstract class $OngoingProjectsEventCopyWith<$Res>  {
  factory $OngoingProjectsEventCopyWith(OngoingProjectsEvent value, $Res Function(OngoingProjectsEvent) then) = _$OngoingProjectsEventCopyWithImpl<$Res, OngoingProjectsEvent>;



}

/// @nodoc
class _$OngoingProjectsEventCopyWithImpl<$Res,$Val extends OngoingProjectsEvent> implements $OngoingProjectsEventCopyWith<$Res> {
  _$OngoingProjectsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of OngoingProjectsEvent
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$FetchProjectsImplCopyWith<$Res>  {
  factory _$$FetchProjectsImplCopyWith(_$FetchProjectsImpl value, $Res Function(_$FetchProjectsImpl) then) = __$$FetchProjectsImplCopyWithImpl<$Res>;
@useResult
$Res call({
 ProjectFilter filter
});



}

/// @nodoc
class __$$FetchProjectsImplCopyWithImpl<$Res> extends _$OngoingProjectsEventCopyWithImpl<$Res, _$FetchProjectsImpl> implements _$$FetchProjectsImplCopyWith<$Res> {
  __$$FetchProjectsImplCopyWithImpl(_$FetchProjectsImpl _value, $Res Function(_$FetchProjectsImpl) _then)
      : super(_value, _then);


/// Create a copy of OngoingProjectsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? filter = null,}) {
  return _then(_$FetchProjectsImpl(
filter: null == filter ? _value.filter : filter // ignore: cast_nullable_to_non_nullable
as ProjectFilter,
  ));
}


}

/// @nodoc


class _$FetchProjectsImpl  implements _FetchProjects {
  const _$FetchProjectsImpl({required this.filter});

  

@override final  ProjectFilter filter;

@override
String toString() {
  return 'OngoingProjectsEvent.fetchProjects(filter: $filter)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$FetchProjectsImpl&&(identical(other.filter, filter) || other.filter == filter));
}


@override
int get hashCode => Object.hash(runtimeType,filter);

/// Create a copy of OngoingProjectsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$FetchProjectsImplCopyWith<_$FetchProjectsImpl> get copyWith => __$$FetchProjectsImplCopyWithImpl<_$FetchProjectsImpl>(this, _$identity);








}


abstract class _FetchProjects implements OngoingProjectsEvent {
  const factory _FetchProjects({required final  ProjectFilter filter}) = _$FetchProjectsImpl;
  

  

 ProjectFilter get filter;
/// Create a copy of OngoingProjectsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$FetchProjectsImplCopyWith<_$FetchProjectsImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$RefreshProjectsImplCopyWith<$Res>  {
  factory _$$RefreshProjectsImplCopyWith(_$RefreshProjectsImpl value, $Res Function(_$RefreshProjectsImpl) then) = __$$RefreshProjectsImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$RefreshProjectsImplCopyWithImpl<$Res> extends _$OngoingProjectsEventCopyWithImpl<$Res, _$RefreshProjectsImpl> implements _$$RefreshProjectsImplCopyWith<$Res> {
  __$$RefreshProjectsImplCopyWithImpl(_$RefreshProjectsImpl _value, $Res Function(_$RefreshProjectsImpl) _then)
      : super(_value, _then);


/// Create a copy of OngoingProjectsEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$RefreshProjectsImpl  implements _RefreshProjects {
  const _$RefreshProjectsImpl();

  



@override
String toString() {
  return 'OngoingProjectsEvent.refreshProjects()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$RefreshProjectsImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _RefreshProjects implements OngoingProjectsEvent {
  const factory _RefreshProjects() = _$RefreshProjectsImpl;
  

  



}

/// @nodoc
abstract class _$$LoadMoreProjectsImplCopyWith<$Res>  {
  factory _$$LoadMoreProjectsImplCopyWith(_$LoadMoreProjectsImpl value, $Res Function(_$LoadMoreProjectsImpl) then) = __$$LoadMoreProjectsImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$LoadMoreProjectsImplCopyWithImpl<$Res> extends _$OngoingProjectsEventCopyWithImpl<$Res, _$LoadMoreProjectsImpl> implements _$$LoadMoreProjectsImplCopyWith<$Res> {
  __$$LoadMoreProjectsImplCopyWithImpl(_$LoadMoreProjectsImpl _value, $Res Function(_$LoadMoreProjectsImpl) _then)
      : super(_value, _then);


/// Create a copy of OngoingProjectsEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$LoadMoreProjectsImpl  implements _LoadMoreProjects {
  const _$LoadMoreProjectsImpl();

  



@override
String toString() {
  return 'OngoingProjectsEvent.loadMoreProjects()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadMoreProjectsImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _LoadMoreProjects implements OngoingProjectsEvent {
  const factory _LoadMoreProjects() = _$LoadMoreProjectsImpl;
  

  



}

/// @nodoc
abstract class _$$FilterChangedImplCopyWith<$Res>  {
  factory _$$FilterChangedImplCopyWith(_$FilterChangedImpl value, $Res Function(_$FilterChangedImpl) then) = __$$FilterChangedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 ProjectFilter filter
});



}

/// @nodoc
class __$$FilterChangedImplCopyWithImpl<$Res> extends _$OngoingProjectsEventCopyWithImpl<$Res, _$FilterChangedImpl> implements _$$FilterChangedImplCopyWith<$Res> {
  __$$FilterChangedImplCopyWithImpl(_$FilterChangedImpl _value, $Res Function(_$FilterChangedImpl) _then)
      : super(_value, _then);


/// Create a copy of OngoingProjectsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? filter = null,}) {
  return _then(_$FilterChangedImpl(
filter: null == filter ? _value.filter : filter // ignore: cast_nullable_to_non_nullable
as ProjectFilter,
  ));
}


}

/// @nodoc


class _$FilterChangedImpl  implements _FilterChanged {
  const _$FilterChangedImpl({required this.filter});

  

@override final  ProjectFilter filter;

@override
String toString() {
  return 'OngoingProjectsEvent.filterChanged(filter: $filter)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$FilterChangedImpl&&(identical(other.filter, filter) || other.filter == filter));
}


@override
int get hashCode => Object.hash(runtimeType,filter);

/// Create a copy of OngoingProjectsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$FilterChangedImplCopyWith<_$FilterChangedImpl> get copyWith => __$$FilterChangedImplCopyWithImpl<_$FilterChangedImpl>(this, _$identity);








}


abstract class _FilterChanged implements OngoingProjectsEvent {
  const factory _FilterChanged({required final  ProjectFilter filter}) = _$FilterChangedImpl;
  

  

 ProjectFilter get filter;
/// Create a copy of OngoingProjectsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$FilterChangedImplCopyWith<_$FilterChangedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$SortChangedImplCopyWith<$Res>  {
  factory _$$SortChangedImplCopyWith(_$SortChangedImpl value, $Res Function(_$SortChangedImpl) then) = __$$SortChangedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 ProjectSort sort, SortOrder order
});



}

/// @nodoc
class __$$SortChangedImplCopyWithImpl<$Res> extends _$OngoingProjectsEventCopyWithImpl<$Res, _$SortChangedImpl> implements _$$SortChangedImplCopyWith<$Res> {
  __$$SortChangedImplCopyWithImpl(_$SortChangedImpl _value, $Res Function(_$SortChangedImpl) _then)
      : super(_value, _then);


/// Create a copy of OngoingProjectsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sort = null,Object? order = null,}) {
  return _then(_$SortChangedImpl(
sort: null == sort ? _value.sort : sort // ignore: cast_nullable_to_non_nullable
as ProjectSort,order: null == order ? _value.order : order // ignore: cast_nullable_to_non_nullable
as SortOrder,
  ));
}


}

/// @nodoc


class _$SortChangedImpl  implements _SortChanged {
  const _$SortChangedImpl({required this.sort, required this.order});

  

@override final  ProjectSort sort;
@override final  SortOrder order;

@override
String toString() {
  return 'OngoingProjectsEvent.sortChanged(sort: $sort, order: $order)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SortChangedImpl&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.order, order) || other.order == order));
}


@override
int get hashCode => Object.hash(runtimeType,sort,order);

/// Create a copy of OngoingProjectsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$SortChangedImplCopyWith<_$SortChangedImpl> get copyWith => __$$SortChangedImplCopyWithImpl<_$SortChangedImpl>(this, _$identity);








}


abstract class _SortChanged implements OngoingProjectsEvent {
  const factory _SortChanged({required final  ProjectSort sort, required final  SortOrder order}) = _$SortChangedImpl;
  

  

 ProjectSort get sort; SortOrder get order;
/// Create a copy of OngoingProjectsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$SortChangedImplCopyWith<_$SortChangedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$DeleteProjectsImplCopyWith<$Res>  {
  factory _$$DeleteProjectsImplCopyWith(_$DeleteProjectsImpl value, $Res Function(_$DeleteProjectsImpl) then) = __$$DeleteProjectsImplCopyWithImpl<$Res>;
@useResult
$Res call({
 List<int> projectIds
});



}

/// @nodoc
class __$$DeleteProjectsImplCopyWithImpl<$Res> extends _$OngoingProjectsEventCopyWithImpl<$Res, _$DeleteProjectsImpl> implements _$$DeleteProjectsImplCopyWith<$Res> {
  __$$DeleteProjectsImplCopyWithImpl(_$DeleteProjectsImpl _value, $Res Function(_$DeleteProjectsImpl) _then)
      : super(_value, _then);


/// Create a copy of OngoingProjectsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? projectIds = null,}) {
  return _then(_$DeleteProjectsImpl(
projectIds: null == projectIds ? _value._projectIds : projectIds // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

/// @nodoc


class _$DeleteProjectsImpl  implements _DeleteProjects {
  const _$DeleteProjectsImpl({required final  List<int> projectIds}): _projectIds = projectIds;

  

 final  List<int> _projectIds;
@override List<int> get projectIds {
  if (_projectIds is EqualUnmodifiableListView) return _projectIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_projectIds);
}


@override
String toString() {
  return 'OngoingProjectsEvent.deleteProjects(projectIds: $projectIds)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$DeleteProjectsImpl&&const DeepCollectionEquality().equals(other._projectIds, _projectIds));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_projectIds));

/// Create a copy of OngoingProjectsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$DeleteProjectsImplCopyWith<_$DeleteProjectsImpl> get copyWith => __$$DeleteProjectsImplCopyWithImpl<_$DeleteProjectsImpl>(this, _$identity);








}


abstract class _DeleteProjects implements OngoingProjectsEvent {
  const factory _DeleteProjects({required final  List<int> projectIds}) = _$DeleteProjectsImpl;
  

  

 List<int> get projectIds;
/// Create a copy of OngoingProjectsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$DeleteProjectsImplCopyWith<_$DeleteProjectsImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$DeleteProjectImplCopyWith<$Res>  {
  factory _$$DeleteProjectImplCopyWith(_$DeleteProjectImpl value, $Res Function(_$DeleteProjectImpl) then) = __$$DeleteProjectImplCopyWithImpl<$Res>;
@useResult
$Res call({
 Project project
});


$ProjectCopyWith<$Res> get project;
}

/// @nodoc
class __$$DeleteProjectImplCopyWithImpl<$Res> extends _$OngoingProjectsEventCopyWithImpl<$Res, _$DeleteProjectImpl> implements _$$DeleteProjectImplCopyWith<$Res> {
  __$$DeleteProjectImplCopyWithImpl(_$DeleteProjectImpl _value, $Res Function(_$DeleteProjectImpl) _then)
      : super(_value, _then);


/// Create a copy of OngoingProjectsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? project = null,}) {
  return _then(_$DeleteProjectImpl(
project: null == project ? _value.project : project // ignore: cast_nullable_to_non_nullable
as Project,
  ));
}

/// Create a copy of OngoingProjectsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProjectCopyWith<$Res> get project {
  
  return $ProjectCopyWith<$Res>(_value.project, (value) {
    return _then(_value.copyWith(project: value) );
  });
}
}

/// @nodoc


class _$DeleteProjectImpl  implements _DeleteProject {
  const _$DeleteProjectImpl({required this.project});

  

@override final  Project project;

@override
String toString() {
  return 'OngoingProjectsEvent.deleteProject(project: $project)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$DeleteProjectImpl&&(identical(other.project, project) || other.project == project));
}


@override
int get hashCode => Object.hash(runtimeType,project);

/// Create a copy of OngoingProjectsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$DeleteProjectImplCopyWith<_$DeleteProjectImpl> get copyWith => __$$DeleteProjectImplCopyWithImpl<_$DeleteProjectImpl>(this, _$identity);








}


abstract class _DeleteProject implements OngoingProjectsEvent {
  const factory _DeleteProject({required final  Project project}) = _$DeleteProjectImpl;
  

  

 Project get project;
/// Create a copy of OngoingProjectsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$DeleteProjectImplCopyWith<_$DeleteProjectImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$CategoryChangedImplCopyWith<$Res>  {
  factory _$$CategoryChangedImplCopyWith(_$CategoryChangedImpl value, $Res Function(_$CategoryChangedImpl) then) = __$$CategoryChangedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 ProjectCategory category
});


$ProjectCategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$CategoryChangedImplCopyWithImpl<$Res> extends _$OngoingProjectsEventCopyWithImpl<$Res, _$CategoryChangedImpl> implements _$$CategoryChangedImplCopyWith<$Res> {
  __$$CategoryChangedImplCopyWithImpl(_$CategoryChangedImpl _value, $Res Function(_$CategoryChangedImpl) _then)
      : super(_value, _then);


/// Create a copy of OngoingProjectsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = null,}) {
  return _then(_$CategoryChangedImpl(
category: null == category ? _value.category : category // ignore: cast_nullable_to_non_nullable
as ProjectCategory,
  ));
}

/// Create a copy of OngoingProjectsEvent
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


class _$CategoryChangedImpl  implements _CategoryChanged {
  const _$CategoryChangedImpl({required this.category});

  

@override final  ProjectCategory category;

@override
String toString() {
  return 'OngoingProjectsEvent.categoryChanged(category: $category)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CategoryChangedImpl&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

/// Create a copy of OngoingProjectsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CategoryChangedImplCopyWith<_$CategoryChangedImpl> get copyWith => __$$CategoryChangedImplCopyWithImpl<_$CategoryChangedImpl>(this, _$identity);








}


abstract class _CategoryChanged implements OngoingProjectsEvent {
  const factory _CategoryChanged({required final  ProjectCategory category}) = _$CategoryChangedImpl;
  

  

 ProjectCategory get category;
/// Create a copy of OngoingProjectsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$CategoryChangedImplCopyWith<_$CategoryChangedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
mixin _$OngoingProjectsState {

 List<Project> get projects => throw _privateConstructorUsedError; Pagination<Project> get paginatedProjects => throw _privateConstructorUsedError; ProjectFilter get filter => throw _privateConstructorUsedError; ProjectSort get sort => throw _privateConstructorUsedError; SortOrder get order => throw _privateConstructorUsedError; List<ProjectCategory> get categories => throw _privateConstructorUsedError; ProjectCategory get selectedCategory => throw _privateConstructorUsedError;







/// Create a copy of OngoingProjectsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$OngoingProjectsStateCopyWith<OngoingProjectsState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $OngoingProjectsStateCopyWith<$Res>  {
  factory $OngoingProjectsStateCopyWith(OngoingProjectsState value, $Res Function(OngoingProjectsState) then) = _$OngoingProjectsStateCopyWithImpl<$Res, OngoingProjectsState>;
@useResult
$Res call({
 List<Project> projects, Pagination<Project> paginatedProjects, ProjectFilter filter, ProjectSort sort, SortOrder order, List<ProjectCategory> categories, ProjectCategory selectedCategory
});


$PaginationCopyWith<Project, $Res> get paginatedProjects;$ProjectCategoryCopyWith<$Res> get selectedCategory;
}

/// @nodoc
class _$OngoingProjectsStateCopyWithImpl<$Res,$Val extends OngoingProjectsState> implements $OngoingProjectsStateCopyWith<$Res> {
  _$OngoingProjectsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of OngoingProjectsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? projects = null,Object? paginatedProjects = null,Object? filter = null,Object? sort = null,Object? order = null,Object? categories = null,Object? selectedCategory = null,}) {
  return _then(_value.copyWith(
projects: null == projects ? _value.projects : projects // ignore: cast_nullable_to_non_nullable
as List<Project>,paginatedProjects: null == paginatedProjects ? _value.paginatedProjects : paginatedProjects // ignore: cast_nullable_to_non_nullable
as Pagination<Project>,filter: null == filter ? _value.filter : filter // ignore: cast_nullable_to_non_nullable
as ProjectFilter,sort: null == sort ? _value.sort : sort // ignore: cast_nullable_to_non_nullable
as ProjectSort,order: null == order ? _value.order : order // ignore: cast_nullable_to_non_nullable
as SortOrder,categories: null == categories ? _value.categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,selectedCategory: null == selectedCategory ? _value.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as ProjectCategory,
  )as $Val);
}
/// Create a copy of OngoingProjectsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<Project, $Res> get paginatedProjects {
  
  return $PaginationCopyWith<Project, $Res>(_value.paginatedProjects, (value) {
    return _then(_value.copyWith(paginatedProjects: value) as $Val);
  });
}/// Create a copy of OngoingProjectsState
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
abstract class _$$InitialImplCopyWith<$Res> implements $OngoingProjectsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Project> projects, Pagination<Project> paginatedProjects, ProjectFilter filter, ProjectSort sort, SortOrder order, List<ProjectCategory> categories, ProjectCategory selectedCategory
});


@override $PaginationCopyWith<Project, $Res> get paginatedProjects;@override $ProjectCategoryCopyWith<$Res> get selectedCategory;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$OngoingProjectsStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of OngoingProjectsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? projects = null,Object? paginatedProjects = null,Object? filter = null,Object? sort = null,Object? order = null,Object? categories = null,Object? selectedCategory = null,}) {
  return _then(_$InitialImpl(
projects: null == projects ? _value._projects : projects // ignore: cast_nullable_to_non_nullable
as List<Project>,paginatedProjects: null == paginatedProjects ? _value.paginatedProjects : paginatedProjects // ignore: cast_nullable_to_non_nullable
as Pagination<Project>,filter: null == filter ? _value.filter : filter // ignore: cast_nullable_to_non_nullable
as ProjectFilter,sort: null == sort ? _value.sort : sort // ignore: cast_nullable_to_non_nullable
as ProjectSort,order: null == order ? _value.order : order // ignore: cast_nullable_to_non_nullable
as SortOrder,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,selectedCategory: null == selectedCategory ? _value.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as ProjectCategory,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl({final  List<Project> projects = const [], this.paginatedProjects = const Pagination(), this.filter = ProjectFilter.all, this.sort = ProjectSort.lastModified, this.order = SortOrder.desc, final  List<ProjectCategory> categories = const [], this.selectedCategory = const ProjectCategory(name: 'All')}): _projects = projects,_categories = categories;

  

 final  List<Project> _projects;
@override@JsonKey() List<Project> get projects {
  if (_projects is EqualUnmodifiableListView) return _projects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_projects);
}

@override@JsonKey() final  Pagination<Project> paginatedProjects;
@override@JsonKey() final  ProjectFilter filter;
@override@JsonKey() final  ProjectSort sort;
@override@JsonKey() final  SortOrder order;
 final  List<ProjectCategory> _categories;
@override@JsonKey() List<ProjectCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override@JsonKey() final  ProjectCategory selectedCategory;

@override
String toString() {
  return 'OngoingProjectsState.initial(projects: $projects, paginatedProjects: $paginatedProjects, filter: $filter, sort: $sort, order: $order, categories: $categories, selectedCategory: $selectedCategory)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&const DeepCollectionEquality().equals(other._projects, _projects)&&(identical(other.paginatedProjects, paginatedProjects) || other.paginatedProjects == paginatedProjects)&&(identical(other.filter, filter) || other.filter == filter)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.order, order) || other.order == order)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_projects),paginatedProjects,filter,sort,order,const DeepCollectionEquality().hash(_categories),selectedCategory);

/// Create a copy of OngoingProjectsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements OngoingProjectsState {
  const factory Initial({final  List<Project> projects, final  Pagination<Project> paginatedProjects, final  ProjectFilter filter, final  ProjectSort sort, final  SortOrder order, final  List<ProjectCategory> categories, final  ProjectCategory selectedCategory}) = _$InitialImpl;
  

  

@override List<Project> get projects;@override Pagination<Project> get paginatedProjects;@override ProjectFilter get filter;@override ProjectSort get sort;@override SortOrder get order;@override List<ProjectCategory> get categories;@override ProjectCategory get selectedCategory;
/// Create a copy of OngoingProjectsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> implements $OngoingProjectsStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl value, $Res Function(_$LoadingImpl) then) = __$$LoadingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Project> projects, Pagination<Project> paginatedProjects, ProjectFilter filter, ProjectSort sort, SortOrder order, List<ProjectCategory> categories, ProjectCategory selectedCategory
});


@override $PaginationCopyWith<Project, $Res> get paginatedProjects;@override $ProjectCategoryCopyWith<$Res> get selectedCategory;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$OngoingProjectsStateCopyWithImpl<$Res, _$LoadingImpl> implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);


/// Create a copy of OngoingProjectsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? projects = null,Object? paginatedProjects = null,Object? filter = null,Object? sort = null,Object? order = null,Object? categories = null,Object? selectedCategory = null,}) {
  return _then(_$LoadingImpl(
projects: null == projects ? _value._projects : projects // ignore: cast_nullable_to_non_nullable
as List<Project>,paginatedProjects: null == paginatedProjects ? _value.paginatedProjects : paginatedProjects // ignore: cast_nullable_to_non_nullable
as Pagination<Project>,filter: null == filter ? _value.filter : filter // ignore: cast_nullable_to_non_nullable
as ProjectFilter,sort: null == sort ? _value.sort : sort // ignore: cast_nullable_to_non_nullable
as ProjectSort,order: null == order ? _value.order : order // ignore: cast_nullable_to_non_nullable
as SortOrder,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,selectedCategory: null == selectedCategory ? _value.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as ProjectCategory,
  ));
}


}

/// @nodoc


class _$LoadingImpl  implements Loading {
  const _$LoadingImpl({final  List<Project> projects = const [], this.paginatedProjects = const Pagination(), this.filter = ProjectFilter.all, this.sort = ProjectSort.lastModified, this.order = SortOrder.desc, final  List<ProjectCategory> categories = const [], this.selectedCategory = const ProjectCategory(name: 'All')}): _projects = projects,_categories = categories;

  

 final  List<Project> _projects;
@override@JsonKey() List<Project> get projects {
  if (_projects is EqualUnmodifiableListView) return _projects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_projects);
}

@override@JsonKey() final  Pagination<Project> paginatedProjects;
@override@JsonKey() final  ProjectFilter filter;
@override@JsonKey() final  ProjectSort sort;
@override@JsonKey() final  SortOrder order;
 final  List<ProjectCategory> _categories;
@override@JsonKey() List<ProjectCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override@JsonKey() final  ProjectCategory selectedCategory;

@override
String toString() {
  return 'OngoingProjectsState.loading(projects: $projects, paginatedProjects: $paginatedProjects, filter: $filter, sort: $sort, order: $order, categories: $categories, selectedCategory: $selectedCategory)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadingImpl&&const DeepCollectionEquality().equals(other._projects, _projects)&&(identical(other.paginatedProjects, paginatedProjects) || other.paginatedProjects == paginatedProjects)&&(identical(other.filter, filter) || other.filter == filter)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.order, order) || other.order == order)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_projects),paginatedProjects,filter,sort,order,const DeepCollectionEquality().hash(_categories),selectedCategory);

/// Create a copy of OngoingProjectsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);








}


abstract class Loading implements OngoingProjectsState {
  const factory Loading({final  List<Project> projects, final  Pagination<Project> paginatedProjects, final  ProjectFilter filter, final  ProjectSort sort, final  SortOrder order, final  List<ProjectCategory> categories, final  ProjectCategory selectedCategory}) = _$LoadingImpl;
  

  

@override List<Project> get projects;@override Pagination<Project> get paginatedProjects;@override ProjectFilter get filter;@override ProjectSort get sort;@override SortOrder get order;@override List<ProjectCategory> get categories;@override ProjectCategory get selectedCategory;
/// Create a copy of OngoingProjectsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $OngoingProjectsStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(_$LoadedImpl value, $Res Function(_$LoadedImpl) then) = __$$LoadedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Project> projects, Pagination<Project> paginatedProjects, ProjectFilter filter, ProjectSort sort, SortOrder order, List<ProjectCategory> categories, ProjectCategory selectedCategory, String? uuid
});


@override $PaginationCopyWith<Project, $Res> get paginatedProjects;@override $ProjectCategoryCopyWith<$Res> get selectedCategory;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res> extends _$OngoingProjectsStateCopyWithImpl<$Res, _$LoadedImpl> implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(_$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);


/// Create a copy of OngoingProjectsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? projects = null,Object? paginatedProjects = null,Object? filter = null,Object? sort = null,Object? order = null,Object? categories = null,Object? selectedCategory = null,Object? uuid = freezed,}) {
  return _then(_$LoadedImpl(
projects: null == projects ? _value._projects : projects // ignore: cast_nullable_to_non_nullable
as List<Project>,paginatedProjects: null == paginatedProjects ? _value.paginatedProjects : paginatedProjects // ignore: cast_nullable_to_non_nullable
as Pagination<Project>,filter: null == filter ? _value.filter : filter // ignore: cast_nullable_to_non_nullable
as ProjectFilter,sort: null == sort ? _value.sort : sort // ignore: cast_nullable_to_non_nullable
as ProjectSort,order: null == order ? _value.order : order // ignore: cast_nullable_to_non_nullable
as SortOrder,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,selectedCategory: null == selectedCategory ? _value.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as ProjectCategory,uuid: freezed == uuid ? _value.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _$LoadedImpl  implements Loaded {
  const _$LoadedImpl({final  List<Project> projects = const [], this.paginatedProjects = const Pagination(), this.filter = ProjectFilter.all, this.sort = ProjectSort.lastModified, this.order = SortOrder.desc, final  List<ProjectCategory> categories = const [], this.selectedCategory = const ProjectCategory(name: 'All'), this.uuid}): _projects = projects,_categories = categories;

  

 final  List<Project> _projects;
@override@JsonKey() List<Project> get projects {
  if (_projects is EqualUnmodifiableListView) return _projects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_projects);
}

@override@JsonKey() final  Pagination<Project> paginatedProjects;
@override@JsonKey() final  ProjectFilter filter;
@override@JsonKey() final  ProjectSort sort;
@override@JsonKey() final  SortOrder order;
 final  List<ProjectCategory> _categories;
@override@JsonKey() List<ProjectCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override@JsonKey() final  ProjectCategory selectedCategory;
@override final  String? uuid;

@override
String toString() {
  return 'OngoingProjectsState.loaded(projects: $projects, paginatedProjects: $paginatedProjects, filter: $filter, sort: $sort, order: $order, categories: $categories, selectedCategory: $selectedCategory, uuid: $uuid)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadedImpl&&const DeepCollectionEquality().equals(other._projects, _projects)&&(identical(other.paginatedProjects, paginatedProjects) || other.paginatedProjects == paginatedProjects)&&(identical(other.filter, filter) || other.filter == filter)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.order, order) || other.order == order)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&(identical(other.uuid, uuid) || other.uuid == uuid));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_projects),paginatedProjects,filter,sort,order,const DeepCollectionEquality().hash(_categories),selectedCategory,uuid);

/// Create a copy of OngoingProjectsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);








}


abstract class Loaded implements OngoingProjectsState {
  const factory Loaded({final  List<Project> projects, final  Pagination<Project> paginatedProjects, final  ProjectFilter filter, final  ProjectSort sort, final  SortOrder order, final  List<ProjectCategory> categories, final  ProjectCategory selectedCategory, final  String? uuid}) = _$LoadedImpl;
  

  

@override List<Project> get projects;@override Pagination<Project> get paginatedProjects;@override ProjectFilter get filter;@override ProjectSort get sort;@override SortOrder get order;@override List<ProjectCategory> get categories;@override ProjectCategory get selectedCategory; String? get uuid;
/// Create a copy of OngoingProjectsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$DeletingImplCopyWith<$Res> implements $OngoingProjectsStateCopyWith<$Res> {
  factory _$$DeletingImplCopyWith(_$DeletingImpl value, $Res Function(_$DeletingImpl) then) = __$$DeletingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Project> projects, Pagination<Project> paginatedProjects, ProjectFilter filter, ProjectSort sort, SortOrder order, List<ProjectCategory> categories, ProjectCategory selectedCategory
});


@override $PaginationCopyWith<Project, $Res> get paginatedProjects;@override $ProjectCategoryCopyWith<$Res> get selectedCategory;
}

/// @nodoc
class __$$DeletingImplCopyWithImpl<$Res> extends _$OngoingProjectsStateCopyWithImpl<$Res, _$DeletingImpl> implements _$$DeletingImplCopyWith<$Res> {
  __$$DeletingImplCopyWithImpl(_$DeletingImpl _value, $Res Function(_$DeletingImpl) _then)
      : super(_value, _then);


/// Create a copy of OngoingProjectsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? projects = null,Object? paginatedProjects = null,Object? filter = null,Object? sort = null,Object? order = null,Object? categories = null,Object? selectedCategory = null,}) {
  return _then(_$DeletingImpl(
projects: null == projects ? _value._projects : projects // ignore: cast_nullable_to_non_nullable
as List<Project>,paginatedProjects: null == paginatedProjects ? _value.paginatedProjects : paginatedProjects // ignore: cast_nullable_to_non_nullable
as Pagination<Project>,filter: null == filter ? _value.filter : filter // ignore: cast_nullable_to_non_nullable
as ProjectFilter,sort: null == sort ? _value.sort : sort // ignore: cast_nullable_to_non_nullable
as ProjectSort,order: null == order ? _value.order : order // ignore: cast_nullable_to_non_nullable
as SortOrder,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,selectedCategory: null == selectedCategory ? _value.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as ProjectCategory,
  ));
}


}

/// @nodoc


class _$DeletingImpl  implements Deleting {
  const _$DeletingImpl({final  List<Project> projects = const [], this.paginatedProjects = const Pagination(), this.filter = ProjectFilter.all, this.sort = ProjectSort.lastModified, this.order = SortOrder.desc, final  List<ProjectCategory> categories = const [], this.selectedCategory = const ProjectCategory(name: 'All')}): _projects = projects,_categories = categories;

  

 final  List<Project> _projects;
@override@JsonKey() List<Project> get projects {
  if (_projects is EqualUnmodifiableListView) return _projects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_projects);
}

@override@JsonKey() final  Pagination<Project> paginatedProjects;
@override@JsonKey() final  ProjectFilter filter;
@override@JsonKey() final  ProjectSort sort;
@override@JsonKey() final  SortOrder order;
 final  List<ProjectCategory> _categories;
@override@JsonKey() List<ProjectCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override@JsonKey() final  ProjectCategory selectedCategory;

@override
String toString() {
  return 'OngoingProjectsState.deleting(projects: $projects, paginatedProjects: $paginatedProjects, filter: $filter, sort: $sort, order: $order, categories: $categories, selectedCategory: $selectedCategory)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$DeletingImpl&&const DeepCollectionEquality().equals(other._projects, _projects)&&(identical(other.paginatedProjects, paginatedProjects) || other.paginatedProjects == paginatedProjects)&&(identical(other.filter, filter) || other.filter == filter)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.order, order) || other.order == order)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_projects),paginatedProjects,filter,sort,order,const DeepCollectionEquality().hash(_categories),selectedCategory);

/// Create a copy of OngoingProjectsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$DeletingImplCopyWith<_$DeletingImpl> get copyWith => __$$DeletingImplCopyWithImpl<_$DeletingImpl>(this, _$identity);








}


abstract class Deleting implements OngoingProjectsState {
  const factory Deleting({final  List<Project> projects, final  Pagination<Project> paginatedProjects, final  ProjectFilter filter, final  ProjectSort sort, final  SortOrder order, final  List<ProjectCategory> categories, final  ProjectCategory selectedCategory}) = _$DeletingImpl;
  

  

@override List<Project> get projects;@override Pagination<Project> get paginatedProjects;@override ProjectFilter get filter;@override ProjectSort get sort;@override SortOrder get order;@override List<ProjectCategory> get categories;@override ProjectCategory get selectedCategory;
/// Create a copy of OngoingProjectsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$DeletingImplCopyWith<_$DeletingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$DeletedImplCopyWith<$Res> implements $OngoingProjectsStateCopyWith<$Res> {
  factory _$$DeletedImplCopyWith(_$DeletedImpl value, $Res Function(_$DeletedImpl) then) = __$$DeletedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Project> projects, Pagination<Project> paginatedProjects, ProjectFilter filter, ProjectSort sort, SortOrder order, List<ProjectCategory> categories, ProjectCategory selectedCategory
});


@override $PaginationCopyWith<Project, $Res> get paginatedProjects;@override $ProjectCategoryCopyWith<$Res> get selectedCategory;
}

/// @nodoc
class __$$DeletedImplCopyWithImpl<$Res> extends _$OngoingProjectsStateCopyWithImpl<$Res, _$DeletedImpl> implements _$$DeletedImplCopyWith<$Res> {
  __$$DeletedImplCopyWithImpl(_$DeletedImpl _value, $Res Function(_$DeletedImpl) _then)
      : super(_value, _then);


/// Create a copy of OngoingProjectsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? projects = null,Object? paginatedProjects = null,Object? filter = null,Object? sort = null,Object? order = null,Object? categories = null,Object? selectedCategory = null,}) {
  return _then(_$DeletedImpl(
projects: null == projects ? _value._projects : projects // ignore: cast_nullable_to_non_nullable
as List<Project>,paginatedProjects: null == paginatedProjects ? _value.paginatedProjects : paginatedProjects // ignore: cast_nullable_to_non_nullable
as Pagination<Project>,filter: null == filter ? _value.filter : filter // ignore: cast_nullable_to_non_nullable
as ProjectFilter,sort: null == sort ? _value.sort : sort // ignore: cast_nullable_to_non_nullable
as ProjectSort,order: null == order ? _value.order : order // ignore: cast_nullable_to_non_nullable
as SortOrder,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,selectedCategory: null == selectedCategory ? _value.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as ProjectCategory,
  ));
}


}

/// @nodoc


class _$DeletedImpl  implements Deleted {
  const _$DeletedImpl({final  List<Project> projects = const [], this.paginatedProjects = const Pagination(), this.filter = ProjectFilter.all, this.sort = ProjectSort.lastModified, this.order = SortOrder.desc, final  List<ProjectCategory> categories = const [], this.selectedCategory = const ProjectCategory(name: 'All')}): _projects = projects,_categories = categories;

  

 final  List<Project> _projects;
@override@JsonKey() List<Project> get projects {
  if (_projects is EqualUnmodifiableListView) return _projects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_projects);
}

@override@JsonKey() final  Pagination<Project> paginatedProjects;
@override@JsonKey() final  ProjectFilter filter;
@override@JsonKey() final  ProjectSort sort;
@override@JsonKey() final  SortOrder order;
 final  List<ProjectCategory> _categories;
@override@JsonKey() List<ProjectCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override@JsonKey() final  ProjectCategory selectedCategory;

@override
String toString() {
  return 'OngoingProjectsState.deleted(projects: $projects, paginatedProjects: $paginatedProjects, filter: $filter, sort: $sort, order: $order, categories: $categories, selectedCategory: $selectedCategory)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$DeletedImpl&&const DeepCollectionEquality().equals(other._projects, _projects)&&(identical(other.paginatedProjects, paginatedProjects) || other.paginatedProjects == paginatedProjects)&&(identical(other.filter, filter) || other.filter == filter)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.order, order) || other.order == order)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_projects),paginatedProjects,filter,sort,order,const DeepCollectionEquality().hash(_categories),selectedCategory);

/// Create a copy of OngoingProjectsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$DeletedImplCopyWith<_$DeletedImpl> get copyWith => __$$DeletedImplCopyWithImpl<_$DeletedImpl>(this, _$identity);








}


abstract class Deleted implements OngoingProjectsState {
  const factory Deleted({final  List<Project> projects, final  Pagination<Project> paginatedProjects, final  ProjectFilter filter, final  ProjectSort sort, final  SortOrder order, final  List<ProjectCategory> categories, final  ProjectCategory selectedCategory}) = _$DeletedImpl;
  

  

@override List<Project> get projects;@override Pagination<Project> get paginatedProjects;@override ProjectFilter get filter;@override ProjectSort get sort;@override SortOrder get order;@override List<ProjectCategory> get categories;@override ProjectCategory get selectedCategory;
/// Create a copy of OngoingProjectsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$DeletedImplCopyWith<_$DeletedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> implements $OngoingProjectsStateCopyWith<$Res> {
  factory _$$FailedImplCopyWith(_$FailedImpl value, $Res Function(_$FailedImpl) then) = __$$FailedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Project> projects, Pagination<Project> paginatedProjects, ProjectFilter filter, ProjectSort sort, SortOrder order, List<ProjectCategory> categories, ProjectCategory selectedCategory, String errMessage
});


@override $PaginationCopyWith<Project, $Res> get paginatedProjects;@override $ProjectCategoryCopyWith<$Res> get selectedCategory;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res> extends _$OngoingProjectsStateCopyWithImpl<$Res, _$FailedImpl> implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(_$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);


/// Create a copy of OngoingProjectsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? projects = null,Object? paginatedProjects = null,Object? filter = null,Object? sort = null,Object? order = null,Object? categories = null,Object? selectedCategory = null,Object? errMessage = null,}) {
  return _then(_$FailedImpl(
projects: null == projects ? _value._projects : projects // ignore: cast_nullable_to_non_nullable
as List<Project>,paginatedProjects: null == paginatedProjects ? _value.paginatedProjects : paginatedProjects // ignore: cast_nullable_to_non_nullable
as Pagination<Project>,filter: null == filter ? _value.filter : filter // ignore: cast_nullable_to_non_nullable
as ProjectFilter,sort: null == sort ? _value.sort : sort // ignore: cast_nullable_to_non_nullable
as ProjectSort,order: null == order ? _value.order : order // ignore: cast_nullable_to_non_nullable
as SortOrder,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,selectedCategory: null == selectedCategory ? _value.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as ProjectCategory,errMessage: null == errMessage ? _value.errMessage : errMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$FailedImpl  implements Failed {
  const _$FailedImpl({final  List<Project> projects = const [], this.paginatedProjects = const Pagination(), this.filter = ProjectFilter.all, this.sort = ProjectSort.lastModified, this.order = SortOrder.desc, final  List<ProjectCategory> categories = const [], this.selectedCategory = const ProjectCategory(name: 'All'), required this.errMessage}): _projects = projects,_categories = categories;

  

 final  List<Project> _projects;
@override@JsonKey() List<Project> get projects {
  if (_projects is EqualUnmodifiableListView) return _projects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_projects);
}

@override@JsonKey() final  Pagination<Project> paginatedProjects;
@override@JsonKey() final  ProjectFilter filter;
@override@JsonKey() final  ProjectSort sort;
@override@JsonKey() final  SortOrder order;
 final  List<ProjectCategory> _categories;
@override@JsonKey() List<ProjectCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override@JsonKey() final  ProjectCategory selectedCategory;
@override final  String errMessage;

@override
String toString() {
  return 'OngoingProjectsState.failed(projects: $projects, paginatedProjects: $paginatedProjects, filter: $filter, sort: $sort, order: $order, categories: $categories, selectedCategory: $selectedCategory, errMessage: $errMessage)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$FailedImpl&&const DeepCollectionEquality().equals(other._projects, _projects)&&(identical(other.paginatedProjects, paginatedProjects) || other.paginatedProjects == paginatedProjects)&&(identical(other.filter, filter) || other.filter == filter)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.order, order) || other.order == order)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&(identical(other.errMessage, errMessage) || other.errMessage == errMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_projects),paginatedProjects,filter,sort,order,const DeepCollectionEquality().hash(_categories),selectedCategory,errMessage);

/// Create a copy of OngoingProjectsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$FailedImplCopyWith<_$FailedImpl> get copyWith => __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);








}


abstract class Failed implements OngoingProjectsState {
  const factory Failed({final  List<Project> projects, final  Pagination<Project> paginatedProjects, final  ProjectFilter filter, final  ProjectSort sort, final  SortOrder order, final  List<ProjectCategory> categories, final  ProjectCategory selectedCategory, required final  String errMessage}) = _$FailedImpl;
  

  

@override List<Project> get projects;@override Pagination<Project> get paginatedProjects;@override ProjectFilter get filter;@override ProjectSort get sort;@override SortOrder get order;@override List<ProjectCategory> get categories;@override ProjectCategory get selectedCategory; String get errMessage;
/// Create a copy of OngoingProjectsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$FailedImplCopyWith<_$FailedImpl> get copyWith => throw _privateConstructorUsedError;

}
