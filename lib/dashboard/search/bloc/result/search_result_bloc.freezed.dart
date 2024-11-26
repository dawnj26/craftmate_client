// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchResultEvent {

 String get query => throw _privateConstructorUsedError;







/// Create a copy of SearchResultEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$SearchResultEventCopyWith<SearchResultEvent> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $SearchResultEventCopyWith<$Res>  {
  factory $SearchResultEventCopyWith(SearchResultEvent value, $Res Function(SearchResultEvent) then) = _$SearchResultEventCopyWithImpl<$Res, SearchResultEvent>;
@useResult
$Res call({
 String query
});



}

/// @nodoc
class _$SearchResultEventCopyWithImpl<$Res,$Val extends SearchResultEvent> implements $SearchResultEventCopyWith<$Res> {
  _$SearchResultEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of SearchResultEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,}) {
  return _then(_value.copyWith(
query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as String,
  )as $Val);
}

}


/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> implements $SearchResultEventCopyWith<$Res> {
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) = __$$StartedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String query
});



}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res> extends _$SearchResultEventCopyWithImpl<$Res, _$StartedImpl> implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(_$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);


/// Create a copy of SearchResultEvent
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
  return 'SearchResultEvent.started(query: $query)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StartedImpl&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

/// Create a copy of SearchResultEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$StartedImplCopyWith<_$StartedImpl> get copyWith => __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);








}


abstract class _Started implements SearchResultEvent {
  const factory _Started(final  String query) = _$StartedImpl;
  

  

@override String get query;
/// Create a copy of SearchResultEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$StartedImplCopyWith<_$StartedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
mixin _$SearchResultState {

 List<Project> get projects => throw _privateConstructorUsedError; List<ProjectCategory> get categories => throw _privateConstructorUsedError; List<User> get users => throw _privateConstructorUsedError;







/// Create a copy of SearchResultState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$SearchResultStateCopyWith<SearchResultState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $SearchResultStateCopyWith<$Res>  {
  factory $SearchResultStateCopyWith(SearchResultState value, $Res Function(SearchResultState) then) = _$SearchResultStateCopyWithImpl<$Res, SearchResultState>;
@useResult
$Res call({
 List<Project> projects, List<ProjectCategory> categories, List<User> users
});



}

/// @nodoc
class _$SearchResultStateCopyWithImpl<$Res,$Val extends SearchResultState> implements $SearchResultStateCopyWith<$Res> {
  _$SearchResultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of SearchResultState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? projects = null,Object? categories = null,Object? users = null,}) {
  return _then(_value.copyWith(
projects: null == projects ? _value.projects : projects // ignore: cast_nullable_to_non_nullable
as List<Project>,categories: null == categories ? _value.categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,users: null == users ? _value.users : users // ignore: cast_nullable_to_non_nullable
as List<User>,
  )as $Val);
}

}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $SearchResultStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Project> projects, List<ProjectCategory> categories, List<User> users
});



}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$SearchResultStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of SearchResultState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? projects = null,Object? categories = null,Object? users = null,}) {
  return _then(_$InitialImpl(
projects: null == projects ? _value._projects : projects // ignore: cast_nullable_to_non_nullable
as List<Project>,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,users: null == users ? _value._users : users // ignore: cast_nullable_to_non_nullable
as List<User>,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl({final  List<Project> projects = const [], final  List<ProjectCategory> categories = const [], final  List<User> users = const []}): _projects = projects,_categories = categories,_users = users;

  

 final  List<Project> _projects;
@override@JsonKey() List<Project> get projects {
  if (_projects is EqualUnmodifiableListView) return _projects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_projects);
}

 final  List<ProjectCategory> _categories;
@override@JsonKey() List<ProjectCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<User> _users;
@override@JsonKey() List<User> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}


@override
String toString() {
  return 'SearchResultState.initial(projects: $projects, categories: $categories, users: $users)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&const DeepCollectionEquality().equals(other._projects, _projects)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._users, _users));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_projects),const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_users));

/// Create a copy of SearchResultState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements SearchResultState {
  const factory Initial({final  List<Project> projects, final  List<ProjectCategory> categories, final  List<User> users}) = _$InitialImpl;
  

  

@override List<Project> get projects;@override List<ProjectCategory> get categories;@override List<User> get users;
/// Create a copy of SearchResultState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> implements $SearchResultStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl value, $Res Function(_$LoadingImpl) then) = __$$LoadingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Project> projects, List<ProjectCategory> categories, List<User> users
});



}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$SearchResultStateCopyWithImpl<$Res, _$LoadingImpl> implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);


/// Create a copy of SearchResultState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? projects = null,Object? categories = null,Object? users = null,}) {
  return _then(_$LoadingImpl(
projects: null == projects ? _value._projects : projects // ignore: cast_nullable_to_non_nullable
as List<Project>,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,users: null == users ? _value._users : users // ignore: cast_nullable_to_non_nullable
as List<User>,
  ));
}


}

/// @nodoc


class _$LoadingImpl  implements Loading {
  const _$LoadingImpl({final  List<Project> projects = const [], final  List<ProjectCategory> categories = const [], final  List<User> users = const []}): _projects = projects,_categories = categories,_users = users;

  

 final  List<Project> _projects;
@override@JsonKey() List<Project> get projects {
  if (_projects is EqualUnmodifiableListView) return _projects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_projects);
}

 final  List<ProjectCategory> _categories;
@override@JsonKey() List<ProjectCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<User> _users;
@override@JsonKey() List<User> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}


@override
String toString() {
  return 'SearchResultState.loading(projects: $projects, categories: $categories, users: $users)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadingImpl&&const DeepCollectionEquality().equals(other._projects, _projects)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._users, _users));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_projects),const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_users));

/// Create a copy of SearchResultState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);








}


abstract class Loading implements SearchResultState {
  const factory Loading({final  List<Project> projects, final  List<ProjectCategory> categories, final  List<User> users}) = _$LoadingImpl;
  

  

@override List<Project> get projects;@override List<ProjectCategory> get categories;@override List<User> get users;
/// Create a copy of SearchResultState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $SearchResultStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(_$LoadedImpl value, $Res Function(_$LoadedImpl) then) = __$$LoadedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Project> projects, List<ProjectCategory> categories, List<User> users
});



}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res> extends _$SearchResultStateCopyWithImpl<$Res, _$LoadedImpl> implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(_$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);


/// Create a copy of SearchResultState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? projects = null,Object? categories = null,Object? users = null,}) {
  return _then(_$LoadedImpl(
projects: null == projects ? _value._projects : projects // ignore: cast_nullable_to_non_nullable
as List<Project>,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,users: null == users ? _value._users : users // ignore: cast_nullable_to_non_nullable
as List<User>,
  ));
}


}

/// @nodoc


class _$LoadedImpl  implements Loaded {
  const _$LoadedImpl({required final  List<Project> projects, required final  List<ProjectCategory> categories, required final  List<User> users}): _projects = projects,_categories = categories,_users = users;

  

 final  List<Project> _projects;
@override List<Project> get projects {
  if (_projects is EqualUnmodifiableListView) return _projects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_projects);
}

 final  List<ProjectCategory> _categories;
@override List<ProjectCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<User> _users;
@override List<User> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}


@override
String toString() {
  return 'SearchResultState.loaded(projects: $projects, categories: $categories, users: $users)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadedImpl&&const DeepCollectionEquality().equals(other._projects, _projects)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._users, _users));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_projects),const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_users));

/// Create a copy of SearchResultState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);








}


abstract class Loaded implements SearchResultState {
  const factory Loaded({required final  List<Project> projects, required final  List<ProjectCategory> categories, required final  List<User> users}) = _$LoadedImpl;
  

  

@override List<Project> get projects;@override List<ProjectCategory> get categories;@override List<User> get users;
/// Create a copy of SearchResultState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $SearchResultStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Project> projects, List<ProjectCategory> categories, List<User> users, String message
});



}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$SearchResultStateCopyWithImpl<$Res, _$ErrorImpl> implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);


/// Create a copy of SearchResultState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? projects = null,Object? categories = null,Object? users = null,Object? message = null,}) {
  return _then(_$ErrorImpl(
projects: null == projects ? _value._projects : projects // ignore: cast_nullable_to_non_nullable
as List<Project>,categories: null == categories ? _value._categories : categories // ignore: cast_nullable_to_non_nullable
as List<ProjectCategory>,users: null == users ? _value._users : users // ignore: cast_nullable_to_non_nullable
as List<User>,message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$ErrorImpl  implements Error {
  const _$ErrorImpl({final  List<Project> projects = const [], final  List<ProjectCategory> categories = const [], final  List<User> users = const [], required this.message}): _projects = projects,_categories = categories,_users = users;

  

 final  List<Project> _projects;
@override@JsonKey() List<Project> get projects {
  if (_projects is EqualUnmodifiableListView) return _projects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_projects);
}

 final  List<ProjectCategory> _categories;
@override@JsonKey() List<ProjectCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<User> _users;
@override@JsonKey() List<User> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}

@override final  String message;

@override
String toString() {
  return 'SearchResultState.error(projects: $projects, categories: $categories, users: $users, message: $message)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ErrorImpl&&const DeepCollectionEquality().equals(other._projects, _projects)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._users, _users)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_projects),const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_users),message);

/// Create a copy of SearchResultState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);








}


abstract class Error implements SearchResultState {
  const factory Error({final  List<Project> projects, final  List<ProjectCategory> categories, final  List<User> users, required final  String message}) = _$ErrorImpl;
  

  

@override List<Project> get projects;@override List<ProjectCategory> get categories;@override List<User> get users; String get message;
/// Create a copy of SearchResultState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
