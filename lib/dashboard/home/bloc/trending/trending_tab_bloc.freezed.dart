// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trending_tab_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrendingTabEvent {










}

/// @nodoc
abstract class $TrendingTabEventCopyWith<$Res>  {
  factory $TrendingTabEventCopyWith(TrendingTabEvent value, $Res Function(TrendingTabEvent) then) = _$TrendingTabEventCopyWithImpl<$Res, TrendingTabEvent>;



}

/// @nodoc
class _$TrendingTabEventCopyWithImpl<$Res,$Val extends TrendingTabEvent> implements $TrendingTabEventCopyWith<$Res> {
  _$TrendingTabEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of TrendingTabEvent
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>  {
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) = __$$StartedImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res> extends _$TrendingTabEventCopyWithImpl<$Res, _$StartedImpl> implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(_$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);


/// Create a copy of TrendingTabEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$StartedImpl  implements _Started {
  const _$StartedImpl();

  



@override
String toString() {
  return 'TrendingTabEvent.started()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StartedImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _Started implements TrendingTabEvent {
  const factory _Started() = _$StartedImpl;
  

  



}

/// @nodoc
abstract class _$$RefreshedImplCopyWith<$Res>  {
  factory _$$RefreshedImplCopyWith(_$RefreshedImpl value, $Res Function(_$RefreshedImpl) then) = __$$RefreshedImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$RefreshedImplCopyWithImpl<$Res> extends _$TrendingTabEventCopyWithImpl<$Res, _$RefreshedImpl> implements _$$RefreshedImplCopyWith<$Res> {
  __$$RefreshedImplCopyWithImpl(_$RefreshedImpl _value, $Res Function(_$RefreshedImpl) _then)
      : super(_value, _then);


/// Create a copy of TrendingTabEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$RefreshedImpl  implements _Refreshed {
  const _$RefreshedImpl();

  



@override
String toString() {
  return 'TrendingTabEvent.refreshed()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$RefreshedImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _Refreshed implements TrendingTabEvent {
  const factory _Refreshed() = _$RefreshedImpl;
  

  



}

/// @nodoc
abstract class _$$LoadMoreProjectsImplCopyWith<$Res>  {
  factory _$$LoadMoreProjectsImplCopyWith(_$LoadMoreProjectsImpl value, $Res Function(_$LoadMoreProjectsImpl) then) = __$$LoadMoreProjectsImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$LoadMoreProjectsImplCopyWithImpl<$Res> extends _$TrendingTabEventCopyWithImpl<$Res, _$LoadMoreProjectsImpl> implements _$$LoadMoreProjectsImplCopyWith<$Res> {
  __$$LoadMoreProjectsImplCopyWithImpl(_$LoadMoreProjectsImpl _value, $Res Function(_$LoadMoreProjectsImpl) _then)
      : super(_value, _then);


/// Create a copy of TrendingTabEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$LoadMoreProjectsImpl  implements _LoadMoreProjects {
  const _$LoadMoreProjectsImpl();

  



@override
String toString() {
  return 'TrendingTabEvent.loadMoreProjects()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadMoreProjectsImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _LoadMoreProjects implements TrendingTabEvent {
  const factory _LoadMoreProjects() = _$LoadMoreProjectsImpl;
  

  



}

/// @nodoc
abstract class _$$FilterChangedImplCopyWith<$Res>  {
  factory _$$FilterChangedImplCopyWith(_$FilterChangedImpl value, $Res Function(_$FilterChangedImpl) then) = __$$FilterChangedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 MostFilter filter
});



}

/// @nodoc
class __$$FilterChangedImplCopyWithImpl<$Res> extends _$TrendingTabEventCopyWithImpl<$Res, _$FilterChangedImpl> implements _$$FilterChangedImplCopyWith<$Res> {
  __$$FilterChangedImplCopyWithImpl(_$FilterChangedImpl _value, $Res Function(_$FilterChangedImpl) _then)
      : super(_value, _then);


/// Create a copy of TrendingTabEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? filter = null,}) {
  return _then(_$FilterChangedImpl(
null == filter ? _value.filter : filter // ignore: cast_nullable_to_non_nullable
as MostFilter,
  ));
}


}

/// @nodoc


class _$FilterChangedImpl  implements _FilterChanged {
  const _$FilterChangedImpl(this.filter);

  

@override final  MostFilter filter;

@override
String toString() {
  return 'TrendingTabEvent.filterChanged(filter: $filter)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$FilterChangedImpl&&(identical(other.filter, filter) || other.filter == filter));
}


@override
int get hashCode => Object.hash(runtimeType,filter);

/// Create a copy of TrendingTabEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$FilterChangedImplCopyWith<_$FilterChangedImpl> get copyWith => __$$FilterChangedImplCopyWithImpl<_$FilterChangedImpl>(this, _$identity);








}


abstract class _FilterChanged implements TrendingTabEvent {
  const factory _FilterChanged(final  MostFilter filter) = _$FilterChangedImpl;
  

  

 MostFilter get filter;
/// Create a copy of TrendingTabEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$FilterChangedImplCopyWith<_$FilterChangedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
mixin _$TrendingTabState {

 List<Project> get projects => throw _privateConstructorUsedError; Pagination<Project> get page => throw _privateConstructorUsedError; MostFilter get filter => throw _privateConstructorUsedError;







/// Create a copy of TrendingTabState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$TrendingTabStateCopyWith<TrendingTabState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $TrendingTabStateCopyWith<$Res>  {
  factory $TrendingTabStateCopyWith(TrendingTabState value, $Res Function(TrendingTabState) then) = _$TrendingTabStateCopyWithImpl<$Res, TrendingTabState>;
@useResult
$Res call({
 List<Project> projects, Pagination<Project> page, MostFilter filter
});


$PaginationCopyWith<Project, $Res> get page;
}

/// @nodoc
class _$TrendingTabStateCopyWithImpl<$Res,$Val extends TrendingTabState> implements $TrendingTabStateCopyWith<$Res> {
  _$TrendingTabStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of TrendingTabState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? projects = null,Object? page = null,Object? filter = null,}) {
  return _then(_value.copyWith(
projects: null == projects ? _value.projects : projects // ignore: cast_nullable_to_non_nullable
as List<Project>,page: null == page ? _value.page : page // ignore: cast_nullable_to_non_nullable
as Pagination<Project>,filter: null == filter ? _value.filter : filter // ignore: cast_nullable_to_non_nullable
as MostFilter,
  )as $Val);
}
/// Create a copy of TrendingTabState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<Project, $Res> get page {
  
  return $PaginationCopyWith<Project, $Res>(_value.page, (value) {
    return _then(_value.copyWith(page: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $TrendingTabStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Project> projects, Pagination<Project> page, MostFilter filter
});


@override $PaginationCopyWith<Project, $Res> get page;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$TrendingTabStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of TrendingTabState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? projects = null,Object? page = null,Object? filter = null,}) {
  return _then(_$InitialImpl(
projects: null == projects ? _value._projects : projects // ignore: cast_nullable_to_non_nullable
as List<Project>,page: null == page ? _value.page : page // ignore: cast_nullable_to_non_nullable
as Pagination<Project>,filter: null == filter ? _value.filter : filter // ignore: cast_nullable_to_non_nullable
as MostFilter,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl({final  List<Project> projects = const [], this.page = const Pagination(), this.filter = MostFilter.views}): _projects = projects;

  

 final  List<Project> _projects;
@override@JsonKey() List<Project> get projects {
  if (_projects is EqualUnmodifiableListView) return _projects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_projects);
}

@override@JsonKey() final  Pagination<Project> page;
@override@JsonKey() final  MostFilter filter;

@override
String toString() {
  return 'TrendingTabState.initial(projects: $projects, page: $page, filter: $filter)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&const DeepCollectionEquality().equals(other._projects, _projects)&&(identical(other.page, page) || other.page == page)&&(identical(other.filter, filter) || other.filter == filter));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_projects),page,filter);

/// Create a copy of TrendingTabState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements TrendingTabState {
  const factory Initial({final  List<Project> projects, final  Pagination<Project> page, final  MostFilter filter}) = _$InitialImpl;
  

  

@override List<Project> get projects;@override Pagination<Project> get page;@override MostFilter get filter;
/// Create a copy of TrendingTabState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> implements $TrendingTabStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl value, $Res Function(_$LoadingImpl) then) = __$$LoadingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Project> projects, Pagination<Project> page, MostFilter filter
});


@override $PaginationCopyWith<Project, $Res> get page;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$TrendingTabStateCopyWithImpl<$Res, _$LoadingImpl> implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);


/// Create a copy of TrendingTabState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? projects = null,Object? page = null,Object? filter = null,}) {
  return _then(_$LoadingImpl(
projects: null == projects ? _value._projects : projects // ignore: cast_nullable_to_non_nullable
as List<Project>,page: null == page ? _value.page : page // ignore: cast_nullable_to_non_nullable
as Pagination<Project>,filter: null == filter ? _value.filter : filter // ignore: cast_nullable_to_non_nullable
as MostFilter,
  ));
}


}

/// @nodoc


class _$LoadingImpl  implements Loading {
  const _$LoadingImpl({final  List<Project> projects = const [], this.page = const Pagination(), this.filter = MostFilter.views}): _projects = projects;

  

 final  List<Project> _projects;
@override@JsonKey() List<Project> get projects {
  if (_projects is EqualUnmodifiableListView) return _projects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_projects);
}

@override@JsonKey() final  Pagination<Project> page;
@override@JsonKey() final  MostFilter filter;

@override
String toString() {
  return 'TrendingTabState.loading(projects: $projects, page: $page, filter: $filter)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadingImpl&&const DeepCollectionEquality().equals(other._projects, _projects)&&(identical(other.page, page) || other.page == page)&&(identical(other.filter, filter) || other.filter == filter));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_projects),page,filter);

/// Create a copy of TrendingTabState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);








}


abstract class Loading implements TrendingTabState {
  const factory Loading({final  List<Project> projects, final  Pagination<Project> page, final  MostFilter filter}) = _$LoadingImpl;
  

  

@override List<Project> get projects;@override Pagination<Project> get page;@override MostFilter get filter;
/// Create a copy of TrendingTabState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $TrendingTabStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(_$LoadedImpl value, $Res Function(_$LoadedImpl) then) = __$$LoadedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Project> projects, Pagination<Project> page, String uuid, MostFilter filter
});


@override $PaginationCopyWith<Project, $Res> get page;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res> extends _$TrendingTabStateCopyWithImpl<$Res, _$LoadedImpl> implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(_$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);


/// Create a copy of TrendingTabState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? projects = null,Object? page = null,Object? uuid = null,Object? filter = null,}) {
  return _then(_$LoadedImpl(
projects: null == projects ? _value._projects : projects // ignore: cast_nullable_to_non_nullable
as List<Project>,page: null == page ? _value.page : page // ignore: cast_nullable_to_non_nullable
as Pagination<Project>,uuid: null == uuid ? _value.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String,filter: null == filter ? _value.filter : filter // ignore: cast_nullable_to_non_nullable
as MostFilter,
  ));
}


}

/// @nodoc


class _$LoadedImpl  implements Loaded {
  const _$LoadedImpl({required final  List<Project> projects, required this.page, required this.uuid, this.filter = MostFilter.views}): _projects = projects;

  

 final  List<Project> _projects;
@override List<Project> get projects {
  if (_projects is EqualUnmodifiableListView) return _projects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_projects);
}

@override final  Pagination<Project> page;
@override final  String uuid;
@override@JsonKey() final  MostFilter filter;

@override
String toString() {
  return 'TrendingTabState.loaded(projects: $projects, page: $page, uuid: $uuid, filter: $filter)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadedImpl&&const DeepCollectionEquality().equals(other._projects, _projects)&&(identical(other.page, page) || other.page == page)&&(identical(other.uuid, uuid) || other.uuid == uuid)&&(identical(other.filter, filter) || other.filter == filter));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_projects),page,uuid,filter);

/// Create a copy of TrendingTabState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);








}


abstract class Loaded implements TrendingTabState {
  const factory Loaded({required final  List<Project> projects, required final  Pagination<Project> page, required final  String uuid, final  MostFilter filter}) = _$LoadedImpl;
  

  

@override List<Project> get projects;@override Pagination<Project> get page; String get uuid;@override MostFilter get filter;
/// Create a copy of TrendingTabState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $TrendingTabStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String message, List<Project> projects, Pagination<Project> page, MostFilter filter
});


@override $PaginationCopyWith<Project, $Res> get page;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$TrendingTabStateCopyWithImpl<$Res, _$ErrorImpl> implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);


/// Create a copy of TrendingTabState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? projects = null,Object? page = null,Object? filter = null,}) {
  return _then(_$ErrorImpl(
message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,projects: null == projects ? _value._projects : projects // ignore: cast_nullable_to_non_nullable
as List<Project>,page: null == page ? _value.page : page // ignore: cast_nullable_to_non_nullable
as Pagination<Project>,filter: null == filter ? _value.filter : filter // ignore: cast_nullable_to_non_nullable
as MostFilter,
  ));
}


}

/// @nodoc


class _$ErrorImpl  implements Error {
  const _$ErrorImpl({required this.message, required final  List<Project> projects, required this.page, this.filter = MostFilter.views}): _projects = projects;

  

@override final  String message;
 final  List<Project> _projects;
@override List<Project> get projects {
  if (_projects is EqualUnmodifiableListView) return _projects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_projects);
}

@override final  Pagination<Project> page;
@override@JsonKey() final  MostFilter filter;

@override
String toString() {
  return 'TrendingTabState.error(message: $message, projects: $projects, page: $page, filter: $filter)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ErrorImpl&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._projects, _projects)&&(identical(other.page, page) || other.page == page)&&(identical(other.filter, filter) || other.filter == filter));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(_projects),page,filter);

/// Create a copy of TrendingTabState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);








}


abstract class Error implements TrendingTabState {
  const factory Error({required final  String message, required final  List<Project> projects, required final  Pagination<Project> page, final  MostFilter filter}) = _$ErrorImpl;
  

  

 String get message;@override List<Project> get projects;@override Pagination<Project> get page;@override MostFilter get filter;
/// Create a copy of TrendingTabState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
