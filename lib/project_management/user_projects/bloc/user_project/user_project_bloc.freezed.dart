// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_project_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserProjectEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProjectFilter filter) fetchProjects,
    required TResult Function() refreshProjects,
    required TResult Function() loadMoreProjects,
    required TResult Function(ProjectFilter filter) filterChanged,
    required TResult Function(ProjectSort sort, SortOrder order) sortChanged,
    required TResult Function(List<int> projectIds) deleteProjects,
    required TResult Function(Project project) deleteProject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProjectFilter filter)? fetchProjects,
    TResult? Function()? refreshProjects,
    TResult? Function()? loadMoreProjects,
    TResult? Function(ProjectFilter filter)? filterChanged,
    TResult? Function(ProjectSort sort, SortOrder order)? sortChanged,
    TResult? Function(List<int> projectIds)? deleteProjects,
    TResult? Function(Project project)? deleteProject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProjectFilter filter)? fetchProjects,
    TResult Function()? refreshProjects,
    TResult Function()? loadMoreProjects,
    TResult Function(ProjectFilter filter)? filterChanged,
    TResult Function(ProjectSort sort, SortOrder order)? sortChanged,
    TResult Function(List<int> projectIds)? deleteProjects,
    TResult Function(Project project)? deleteProject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProjects value) fetchProjects,
    required TResult Function(_RefreshProjects value) refreshProjects,
    required TResult Function(_LoadMoreProjects value) loadMoreProjects,
    required TResult Function(_FilterChanged value) filterChanged,
    required TResult Function(_SortChanged value) sortChanged,
    required TResult Function(_DeleteProjects value) deleteProjects,
    required TResult Function(_DeleteProject value) deleteProject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProjects value)? fetchProjects,
    TResult? Function(_RefreshProjects value)? refreshProjects,
    TResult? Function(_LoadMoreProjects value)? loadMoreProjects,
    TResult? Function(_FilterChanged value)? filterChanged,
    TResult? Function(_SortChanged value)? sortChanged,
    TResult? Function(_DeleteProjects value)? deleteProjects,
    TResult? Function(_DeleteProject value)? deleteProject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProjects value)? fetchProjects,
    TResult Function(_RefreshProjects value)? refreshProjects,
    TResult Function(_LoadMoreProjects value)? loadMoreProjects,
    TResult Function(_FilterChanged value)? filterChanged,
    TResult Function(_SortChanged value)? sortChanged,
    TResult Function(_DeleteProjects value)? deleteProjects,
    TResult Function(_DeleteProject value)? deleteProject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProjectEventCopyWith<$Res> {
  factory $UserProjectEventCopyWith(
          UserProjectEvent value, $Res Function(UserProjectEvent) then) =
      _$UserProjectEventCopyWithImpl<$Res, UserProjectEvent>;
}

/// @nodoc
class _$UserProjectEventCopyWithImpl<$Res, $Val extends UserProjectEvent>
    implements $UserProjectEventCopyWith<$Res> {
  _$UserProjectEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProjectEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchProjectsImplCopyWith<$Res> {
  factory _$$FetchProjectsImplCopyWith(
          _$FetchProjectsImpl value, $Res Function(_$FetchProjectsImpl) then) =
      __$$FetchProjectsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProjectFilter filter});
}

/// @nodoc
class __$$FetchProjectsImplCopyWithImpl<$Res>
    extends _$UserProjectEventCopyWithImpl<$Res, _$FetchProjectsImpl>
    implements _$$FetchProjectsImplCopyWith<$Res> {
  __$$FetchProjectsImplCopyWithImpl(
      _$FetchProjectsImpl _value, $Res Function(_$FetchProjectsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$FetchProjectsImpl(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as ProjectFilter,
    ));
  }
}

/// @nodoc

class _$FetchProjectsImpl implements _FetchProjects {
  const _$FetchProjectsImpl({required this.filter});

  @override
  final ProjectFilter filter;

  @override
  String toString() {
    return 'UserProjectEvent.fetchProjects(filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchProjectsImpl &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  /// Create a copy of UserProjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchProjectsImplCopyWith<_$FetchProjectsImpl> get copyWith =>
      __$$FetchProjectsImplCopyWithImpl<_$FetchProjectsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProjectFilter filter) fetchProjects,
    required TResult Function() refreshProjects,
    required TResult Function() loadMoreProjects,
    required TResult Function(ProjectFilter filter) filterChanged,
    required TResult Function(ProjectSort sort, SortOrder order) sortChanged,
    required TResult Function(List<int> projectIds) deleteProjects,
    required TResult Function(Project project) deleteProject,
  }) {
    return fetchProjects(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProjectFilter filter)? fetchProjects,
    TResult? Function()? refreshProjects,
    TResult? Function()? loadMoreProjects,
    TResult? Function(ProjectFilter filter)? filterChanged,
    TResult? Function(ProjectSort sort, SortOrder order)? sortChanged,
    TResult? Function(List<int> projectIds)? deleteProjects,
    TResult? Function(Project project)? deleteProject,
  }) {
    return fetchProjects?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProjectFilter filter)? fetchProjects,
    TResult Function()? refreshProjects,
    TResult Function()? loadMoreProjects,
    TResult Function(ProjectFilter filter)? filterChanged,
    TResult Function(ProjectSort sort, SortOrder order)? sortChanged,
    TResult Function(List<int> projectIds)? deleteProjects,
    TResult Function(Project project)? deleteProject,
    required TResult orElse(),
  }) {
    if (fetchProjects != null) {
      return fetchProjects(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProjects value) fetchProjects,
    required TResult Function(_RefreshProjects value) refreshProjects,
    required TResult Function(_LoadMoreProjects value) loadMoreProjects,
    required TResult Function(_FilterChanged value) filterChanged,
    required TResult Function(_SortChanged value) sortChanged,
    required TResult Function(_DeleteProjects value) deleteProjects,
    required TResult Function(_DeleteProject value) deleteProject,
  }) {
    return fetchProjects(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProjects value)? fetchProjects,
    TResult? Function(_RefreshProjects value)? refreshProjects,
    TResult? Function(_LoadMoreProjects value)? loadMoreProjects,
    TResult? Function(_FilterChanged value)? filterChanged,
    TResult? Function(_SortChanged value)? sortChanged,
    TResult? Function(_DeleteProjects value)? deleteProjects,
    TResult? Function(_DeleteProject value)? deleteProject,
  }) {
    return fetchProjects?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProjects value)? fetchProjects,
    TResult Function(_RefreshProjects value)? refreshProjects,
    TResult Function(_LoadMoreProjects value)? loadMoreProjects,
    TResult Function(_FilterChanged value)? filterChanged,
    TResult Function(_SortChanged value)? sortChanged,
    TResult Function(_DeleteProjects value)? deleteProjects,
    TResult Function(_DeleteProject value)? deleteProject,
    required TResult orElse(),
  }) {
    if (fetchProjects != null) {
      return fetchProjects(this);
    }
    return orElse();
  }
}

abstract class _FetchProjects implements UserProjectEvent {
  const factory _FetchProjects({required final ProjectFilter filter}) =
      _$FetchProjectsImpl;

  ProjectFilter get filter;

  /// Create a copy of UserProjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchProjectsImplCopyWith<_$FetchProjectsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshProjectsImplCopyWith<$Res> {
  factory _$$RefreshProjectsImplCopyWith(_$RefreshProjectsImpl value,
          $Res Function(_$RefreshProjectsImpl) then) =
      __$$RefreshProjectsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshProjectsImplCopyWithImpl<$Res>
    extends _$UserProjectEventCopyWithImpl<$Res, _$RefreshProjectsImpl>
    implements _$$RefreshProjectsImplCopyWith<$Res> {
  __$$RefreshProjectsImplCopyWithImpl(
      _$RefreshProjectsImpl _value, $Res Function(_$RefreshProjectsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProjectEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshProjectsImpl implements _RefreshProjects {
  const _$RefreshProjectsImpl();

  @override
  String toString() {
    return 'UserProjectEvent.refreshProjects()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshProjectsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProjectFilter filter) fetchProjects,
    required TResult Function() refreshProjects,
    required TResult Function() loadMoreProjects,
    required TResult Function(ProjectFilter filter) filterChanged,
    required TResult Function(ProjectSort sort, SortOrder order) sortChanged,
    required TResult Function(List<int> projectIds) deleteProjects,
    required TResult Function(Project project) deleteProject,
  }) {
    return refreshProjects();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProjectFilter filter)? fetchProjects,
    TResult? Function()? refreshProjects,
    TResult? Function()? loadMoreProjects,
    TResult? Function(ProjectFilter filter)? filterChanged,
    TResult? Function(ProjectSort sort, SortOrder order)? sortChanged,
    TResult? Function(List<int> projectIds)? deleteProjects,
    TResult? Function(Project project)? deleteProject,
  }) {
    return refreshProjects?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProjectFilter filter)? fetchProjects,
    TResult Function()? refreshProjects,
    TResult Function()? loadMoreProjects,
    TResult Function(ProjectFilter filter)? filterChanged,
    TResult Function(ProjectSort sort, SortOrder order)? sortChanged,
    TResult Function(List<int> projectIds)? deleteProjects,
    TResult Function(Project project)? deleteProject,
    required TResult orElse(),
  }) {
    if (refreshProjects != null) {
      return refreshProjects();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProjects value) fetchProjects,
    required TResult Function(_RefreshProjects value) refreshProjects,
    required TResult Function(_LoadMoreProjects value) loadMoreProjects,
    required TResult Function(_FilterChanged value) filterChanged,
    required TResult Function(_SortChanged value) sortChanged,
    required TResult Function(_DeleteProjects value) deleteProjects,
    required TResult Function(_DeleteProject value) deleteProject,
  }) {
    return refreshProjects(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProjects value)? fetchProjects,
    TResult? Function(_RefreshProjects value)? refreshProjects,
    TResult? Function(_LoadMoreProjects value)? loadMoreProjects,
    TResult? Function(_FilterChanged value)? filterChanged,
    TResult? Function(_SortChanged value)? sortChanged,
    TResult? Function(_DeleteProjects value)? deleteProjects,
    TResult? Function(_DeleteProject value)? deleteProject,
  }) {
    return refreshProjects?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProjects value)? fetchProjects,
    TResult Function(_RefreshProjects value)? refreshProjects,
    TResult Function(_LoadMoreProjects value)? loadMoreProjects,
    TResult Function(_FilterChanged value)? filterChanged,
    TResult Function(_SortChanged value)? sortChanged,
    TResult Function(_DeleteProjects value)? deleteProjects,
    TResult Function(_DeleteProject value)? deleteProject,
    required TResult orElse(),
  }) {
    if (refreshProjects != null) {
      return refreshProjects(this);
    }
    return orElse();
  }
}

abstract class _RefreshProjects implements UserProjectEvent {
  const factory _RefreshProjects() = _$RefreshProjectsImpl;
}

/// @nodoc
abstract class _$$LoadMoreProjectsImplCopyWith<$Res> {
  factory _$$LoadMoreProjectsImplCopyWith(_$LoadMoreProjectsImpl value,
          $Res Function(_$LoadMoreProjectsImpl) then) =
      __$$LoadMoreProjectsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreProjectsImplCopyWithImpl<$Res>
    extends _$UserProjectEventCopyWithImpl<$Res, _$LoadMoreProjectsImpl>
    implements _$$LoadMoreProjectsImplCopyWith<$Res> {
  __$$LoadMoreProjectsImplCopyWithImpl(_$LoadMoreProjectsImpl _value,
      $Res Function(_$LoadMoreProjectsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProjectEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadMoreProjectsImpl implements _LoadMoreProjects {
  const _$LoadMoreProjectsImpl();

  @override
  String toString() {
    return 'UserProjectEvent.loadMoreProjects()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreProjectsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProjectFilter filter) fetchProjects,
    required TResult Function() refreshProjects,
    required TResult Function() loadMoreProjects,
    required TResult Function(ProjectFilter filter) filterChanged,
    required TResult Function(ProjectSort sort, SortOrder order) sortChanged,
    required TResult Function(List<int> projectIds) deleteProjects,
    required TResult Function(Project project) deleteProject,
  }) {
    return loadMoreProjects();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProjectFilter filter)? fetchProjects,
    TResult? Function()? refreshProjects,
    TResult? Function()? loadMoreProjects,
    TResult? Function(ProjectFilter filter)? filterChanged,
    TResult? Function(ProjectSort sort, SortOrder order)? sortChanged,
    TResult? Function(List<int> projectIds)? deleteProjects,
    TResult? Function(Project project)? deleteProject,
  }) {
    return loadMoreProjects?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProjectFilter filter)? fetchProjects,
    TResult Function()? refreshProjects,
    TResult Function()? loadMoreProjects,
    TResult Function(ProjectFilter filter)? filterChanged,
    TResult Function(ProjectSort sort, SortOrder order)? sortChanged,
    TResult Function(List<int> projectIds)? deleteProjects,
    TResult Function(Project project)? deleteProject,
    required TResult orElse(),
  }) {
    if (loadMoreProjects != null) {
      return loadMoreProjects();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProjects value) fetchProjects,
    required TResult Function(_RefreshProjects value) refreshProjects,
    required TResult Function(_LoadMoreProjects value) loadMoreProjects,
    required TResult Function(_FilterChanged value) filterChanged,
    required TResult Function(_SortChanged value) sortChanged,
    required TResult Function(_DeleteProjects value) deleteProjects,
    required TResult Function(_DeleteProject value) deleteProject,
  }) {
    return loadMoreProjects(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProjects value)? fetchProjects,
    TResult? Function(_RefreshProjects value)? refreshProjects,
    TResult? Function(_LoadMoreProjects value)? loadMoreProjects,
    TResult? Function(_FilterChanged value)? filterChanged,
    TResult? Function(_SortChanged value)? sortChanged,
    TResult? Function(_DeleteProjects value)? deleteProjects,
    TResult? Function(_DeleteProject value)? deleteProject,
  }) {
    return loadMoreProjects?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProjects value)? fetchProjects,
    TResult Function(_RefreshProjects value)? refreshProjects,
    TResult Function(_LoadMoreProjects value)? loadMoreProjects,
    TResult Function(_FilterChanged value)? filterChanged,
    TResult Function(_SortChanged value)? sortChanged,
    TResult Function(_DeleteProjects value)? deleteProjects,
    TResult Function(_DeleteProject value)? deleteProject,
    required TResult orElse(),
  }) {
    if (loadMoreProjects != null) {
      return loadMoreProjects(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreProjects implements UserProjectEvent {
  const factory _LoadMoreProjects() = _$LoadMoreProjectsImpl;
}

/// @nodoc
abstract class _$$FilterChangedImplCopyWith<$Res> {
  factory _$$FilterChangedImplCopyWith(
          _$FilterChangedImpl value, $Res Function(_$FilterChangedImpl) then) =
      __$$FilterChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProjectFilter filter});
}

/// @nodoc
class __$$FilterChangedImplCopyWithImpl<$Res>
    extends _$UserProjectEventCopyWithImpl<$Res, _$FilterChangedImpl>
    implements _$$FilterChangedImplCopyWith<$Res> {
  __$$FilterChangedImplCopyWithImpl(
      _$FilterChangedImpl _value, $Res Function(_$FilterChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$FilterChangedImpl(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as ProjectFilter,
    ));
  }
}

/// @nodoc

class _$FilterChangedImpl implements _FilterChanged {
  const _$FilterChangedImpl({required this.filter});

  @override
  final ProjectFilter filter;

  @override
  String toString() {
    return 'UserProjectEvent.filterChanged(filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterChangedImpl &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  /// Create a copy of UserProjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterChangedImplCopyWith<_$FilterChangedImpl> get copyWith =>
      __$$FilterChangedImplCopyWithImpl<_$FilterChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProjectFilter filter) fetchProjects,
    required TResult Function() refreshProjects,
    required TResult Function() loadMoreProjects,
    required TResult Function(ProjectFilter filter) filterChanged,
    required TResult Function(ProjectSort sort, SortOrder order) sortChanged,
    required TResult Function(List<int> projectIds) deleteProjects,
    required TResult Function(Project project) deleteProject,
  }) {
    return filterChanged(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProjectFilter filter)? fetchProjects,
    TResult? Function()? refreshProjects,
    TResult? Function()? loadMoreProjects,
    TResult? Function(ProjectFilter filter)? filterChanged,
    TResult? Function(ProjectSort sort, SortOrder order)? sortChanged,
    TResult? Function(List<int> projectIds)? deleteProjects,
    TResult? Function(Project project)? deleteProject,
  }) {
    return filterChanged?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProjectFilter filter)? fetchProjects,
    TResult Function()? refreshProjects,
    TResult Function()? loadMoreProjects,
    TResult Function(ProjectFilter filter)? filterChanged,
    TResult Function(ProjectSort sort, SortOrder order)? sortChanged,
    TResult Function(List<int> projectIds)? deleteProjects,
    TResult Function(Project project)? deleteProject,
    required TResult orElse(),
  }) {
    if (filterChanged != null) {
      return filterChanged(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProjects value) fetchProjects,
    required TResult Function(_RefreshProjects value) refreshProjects,
    required TResult Function(_LoadMoreProjects value) loadMoreProjects,
    required TResult Function(_FilterChanged value) filterChanged,
    required TResult Function(_SortChanged value) sortChanged,
    required TResult Function(_DeleteProjects value) deleteProjects,
    required TResult Function(_DeleteProject value) deleteProject,
  }) {
    return filterChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProjects value)? fetchProjects,
    TResult? Function(_RefreshProjects value)? refreshProjects,
    TResult? Function(_LoadMoreProjects value)? loadMoreProjects,
    TResult? Function(_FilterChanged value)? filterChanged,
    TResult? Function(_SortChanged value)? sortChanged,
    TResult? Function(_DeleteProjects value)? deleteProjects,
    TResult? Function(_DeleteProject value)? deleteProject,
  }) {
    return filterChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProjects value)? fetchProjects,
    TResult Function(_RefreshProjects value)? refreshProjects,
    TResult Function(_LoadMoreProjects value)? loadMoreProjects,
    TResult Function(_FilterChanged value)? filterChanged,
    TResult Function(_SortChanged value)? sortChanged,
    TResult Function(_DeleteProjects value)? deleteProjects,
    TResult Function(_DeleteProject value)? deleteProject,
    required TResult orElse(),
  }) {
    if (filterChanged != null) {
      return filterChanged(this);
    }
    return orElse();
  }
}

abstract class _FilterChanged implements UserProjectEvent {
  const factory _FilterChanged({required final ProjectFilter filter}) =
      _$FilterChangedImpl;

  ProjectFilter get filter;

  /// Create a copy of UserProjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterChangedImplCopyWith<_$FilterChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SortChangedImplCopyWith<$Res> {
  factory _$$SortChangedImplCopyWith(
          _$SortChangedImpl value, $Res Function(_$SortChangedImpl) then) =
      __$$SortChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProjectSort sort, SortOrder order});
}

/// @nodoc
class __$$SortChangedImplCopyWithImpl<$Res>
    extends _$UserProjectEventCopyWithImpl<$Res, _$SortChangedImpl>
    implements _$$SortChangedImplCopyWith<$Res> {
  __$$SortChangedImplCopyWithImpl(
      _$SortChangedImpl _value, $Res Function(_$SortChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sort = null,
    Object? order = null,
  }) {
    return _then(_$SortChangedImpl(
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as ProjectSort,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SortOrder,
    ));
  }
}

/// @nodoc

class _$SortChangedImpl implements _SortChanged {
  const _$SortChangedImpl({required this.sort, required this.order});

  @override
  final ProjectSort sort;
  @override
  final SortOrder order;

  @override
  String toString() {
    return 'UserProjectEvent.sortChanged(sort: $sort, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortChangedImpl &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sort, order);

  /// Create a copy of UserProjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SortChangedImplCopyWith<_$SortChangedImpl> get copyWith =>
      __$$SortChangedImplCopyWithImpl<_$SortChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProjectFilter filter) fetchProjects,
    required TResult Function() refreshProjects,
    required TResult Function() loadMoreProjects,
    required TResult Function(ProjectFilter filter) filterChanged,
    required TResult Function(ProjectSort sort, SortOrder order) sortChanged,
    required TResult Function(List<int> projectIds) deleteProjects,
    required TResult Function(Project project) deleteProject,
  }) {
    return sortChanged(sort, order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProjectFilter filter)? fetchProjects,
    TResult? Function()? refreshProjects,
    TResult? Function()? loadMoreProjects,
    TResult? Function(ProjectFilter filter)? filterChanged,
    TResult? Function(ProjectSort sort, SortOrder order)? sortChanged,
    TResult? Function(List<int> projectIds)? deleteProjects,
    TResult? Function(Project project)? deleteProject,
  }) {
    return sortChanged?.call(sort, order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProjectFilter filter)? fetchProjects,
    TResult Function()? refreshProjects,
    TResult Function()? loadMoreProjects,
    TResult Function(ProjectFilter filter)? filterChanged,
    TResult Function(ProjectSort sort, SortOrder order)? sortChanged,
    TResult Function(List<int> projectIds)? deleteProjects,
    TResult Function(Project project)? deleteProject,
    required TResult orElse(),
  }) {
    if (sortChanged != null) {
      return sortChanged(sort, order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProjects value) fetchProjects,
    required TResult Function(_RefreshProjects value) refreshProjects,
    required TResult Function(_LoadMoreProjects value) loadMoreProjects,
    required TResult Function(_FilterChanged value) filterChanged,
    required TResult Function(_SortChanged value) sortChanged,
    required TResult Function(_DeleteProjects value) deleteProjects,
    required TResult Function(_DeleteProject value) deleteProject,
  }) {
    return sortChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProjects value)? fetchProjects,
    TResult? Function(_RefreshProjects value)? refreshProjects,
    TResult? Function(_LoadMoreProjects value)? loadMoreProjects,
    TResult? Function(_FilterChanged value)? filterChanged,
    TResult? Function(_SortChanged value)? sortChanged,
    TResult? Function(_DeleteProjects value)? deleteProjects,
    TResult? Function(_DeleteProject value)? deleteProject,
  }) {
    return sortChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProjects value)? fetchProjects,
    TResult Function(_RefreshProjects value)? refreshProjects,
    TResult Function(_LoadMoreProjects value)? loadMoreProjects,
    TResult Function(_FilterChanged value)? filterChanged,
    TResult Function(_SortChanged value)? sortChanged,
    TResult Function(_DeleteProjects value)? deleteProjects,
    TResult Function(_DeleteProject value)? deleteProject,
    required TResult orElse(),
  }) {
    if (sortChanged != null) {
      return sortChanged(this);
    }
    return orElse();
  }
}

abstract class _SortChanged implements UserProjectEvent {
  const factory _SortChanged(
      {required final ProjectSort sort,
      required final SortOrder order}) = _$SortChangedImpl;

  ProjectSort get sort;
  SortOrder get order;

  /// Create a copy of UserProjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SortChangedImplCopyWith<_$SortChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteProjectsImplCopyWith<$Res> {
  factory _$$DeleteProjectsImplCopyWith(_$DeleteProjectsImpl value,
          $Res Function(_$DeleteProjectsImpl) then) =
      __$$DeleteProjectsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> projectIds});
}

/// @nodoc
class __$$DeleteProjectsImplCopyWithImpl<$Res>
    extends _$UserProjectEventCopyWithImpl<$Res, _$DeleteProjectsImpl>
    implements _$$DeleteProjectsImplCopyWith<$Res> {
  __$$DeleteProjectsImplCopyWithImpl(
      _$DeleteProjectsImpl _value, $Res Function(_$DeleteProjectsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectIds = null,
  }) {
    return _then(_$DeleteProjectsImpl(
      projectIds: null == projectIds
          ? _value._projectIds
          : projectIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$DeleteProjectsImpl implements _DeleteProjects {
  const _$DeleteProjectsImpl({required final List<int> projectIds})
      : _projectIds = projectIds;

  final List<int> _projectIds;
  @override
  List<int> get projectIds {
    if (_projectIds is EqualUnmodifiableListView) return _projectIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projectIds);
  }

  @override
  String toString() {
    return 'UserProjectEvent.deleteProjects(projectIds: $projectIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProjectsImpl &&
            const DeepCollectionEquality()
                .equals(other._projectIds, _projectIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_projectIds));

  /// Create a copy of UserProjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProjectsImplCopyWith<_$DeleteProjectsImpl> get copyWith =>
      __$$DeleteProjectsImplCopyWithImpl<_$DeleteProjectsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProjectFilter filter) fetchProjects,
    required TResult Function() refreshProjects,
    required TResult Function() loadMoreProjects,
    required TResult Function(ProjectFilter filter) filterChanged,
    required TResult Function(ProjectSort sort, SortOrder order) sortChanged,
    required TResult Function(List<int> projectIds) deleteProjects,
    required TResult Function(Project project) deleteProject,
  }) {
    return deleteProjects(projectIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProjectFilter filter)? fetchProjects,
    TResult? Function()? refreshProjects,
    TResult? Function()? loadMoreProjects,
    TResult? Function(ProjectFilter filter)? filterChanged,
    TResult? Function(ProjectSort sort, SortOrder order)? sortChanged,
    TResult? Function(List<int> projectIds)? deleteProjects,
    TResult? Function(Project project)? deleteProject,
  }) {
    return deleteProjects?.call(projectIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProjectFilter filter)? fetchProjects,
    TResult Function()? refreshProjects,
    TResult Function()? loadMoreProjects,
    TResult Function(ProjectFilter filter)? filterChanged,
    TResult Function(ProjectSort sort, SortOrder order)? sortChanged,
    TResult Function(List<int> projectIds)? deleteProjects,
    TResult Function(Project project)? deleteProject,
    required TResult orElse(),
  }) {
    if (deleteProjects != null) {
      return deleteProjects(projectIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProjects value) fetchProjects,
    required TResult Function(_RefreshProjects value) refreshProjects,
    required TResult Function(_LoadMoreProjects value) loadMoreProjects,
    required TResult Function(_FilterChanged value) filterChanged,
    required TResult Function(_SortChanged value) sortChanged,
    required TResult Function(_DeleteProjects value) deleteProjects,
    required TResult Function(_DeleteProject value) deleteProject,
  }) {
    return deleteProjects(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProjects value)? fetchProjects,
    TResult? Function(_RefreshProjects value)? refreshProjects,
    TResult? Function(_LoadMoreProjects value)? loadMoreProjects,
    TResult? Function(_FilterChanged value)? filterChanged,
    TResult? Function(_SortChanged value)? sortChanged,
    TResult? Function(_DeleteProjects value)? deleteProjects,
    TResult? Function(_DeleteProject value)? deleteProject,
  }) {
    return deleteProjects?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProjects value)? fetchProjects,
    TResult Function(_RefreshProjects value)? refreshProjects,
    TResult Function(_LoadMoreProjects value)? loadMoreProjects,
    TResult Function(_FilterChanged value)? filterChanged,
    TResult Function(_SortChanged value)? sortChanged,
    TResult Function(_DeleteProjects value)? deleteProjects,
    TResult Function(_DeleteProject value)? deleteProject,
    required TResult orElse(),
  }) {
    if (deleteProjects != null) {
      return deleteProjects(this);
    }
    return orElse();
  }
}

abstract class _DeleteProjects implements UserProjectEvent {
  const factory _DeleteProjects({required final List<int> projectIds}) =
      _$DeleteProjectsImpl;

  List<int> get projectIds;

  /// Create a copy of UserProjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteProjectsImplCopyWith<_$DeleteProjectsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteProjectImplCopyWith<$Res> {
  factory _$$DeleteProjectImplCopyWith(
          _$DeleteProjectImpl value, $Res Function(_$DeleteProjectImpl) then) =
      __$$DeleteProjectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Project project});

  $ProjectCopyWith<$Res> get project;
}

/// @nodoc
class __$$DeleteProjectImplCopyWithImpl<$Res>
    extends _$UserProjectEventCopyWithImpl<$Res, _$DeleteProjectImpl>
    implements _$$DeleteProjectImplCopyWith<$Res> {
  __$$DeleteProjectImplCopyWithImpl(
      _$DeleteProjectImpl _value, $Res Function(_$DeleteProjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project = null,
  }) {
    return _then(_$DeleteProjectImpl(
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project,
    ));
  }

  /// Create a copy of UserProjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectCopyWith<$Res> get project {
    return $ProjectCopyWith<$Res>(_value.project, (value) {
      return _then(_value.copyWith(project: value));
    });
  }
}

/// @nodoc

class _$DeleteProjectImpl implements _DeleteProject {
  const _$DeleteProjectImpl({required this.project});

  @override
  final Project project;

  @override
  String toString() {
    return 'UserProjectEvent.deleteProject(project: $project)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProjectImpl &&
            (identical(other.project, project) || other.project == project));
  }

  @override
  int get hashCode => Object.hash(runtimeType, project);

  /// Create a copy of UserProjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProjectImplCopyWith<_$DeleteProjectImpl> get copyWith =>
      __$$DeleteProjectImplCopyWithImpl<_$DeleteProjectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProjectFilter filter) fetchProjects,
    required TResult Function() refreshProjects,
    required TResult Function() loadMoreProjects,
    required TResult Function(ProjectFilter filter) filterChanged,
    required TResult Function(ProjectSort sort, SortOrder order) sortChanged,
    required TResult Function(List<int> projectIds) deleteProjects,
    required TResult Function(Project project) deleteProject,
  }) {
    return deleteProject(project);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProjectFilter filter)? fetchProjects,
    TResult? Function()? refreshProjects,
    TResult? Function()? loadMoreProjects,
    TResult? Function(ProjectFilter filter)? filterChanged,
    TResult? Function(ProjectSort sort, SortOrder order)? sortChanged,
    TResult? Function(List<int> projectIds)? deleteProjects,
    TResult? Function(Project project)? deleteProject,
  }) {
    return deleteProject?.call(project);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProjectFilter filter)? fetchProjects,
    TResult Function()? refreshProjects,
    TResult Function()? loadMoreProjects,
    TResult Function(ProjectFilter filter)? filterChanged,
    TResult Function(ProjectSort sort, SortOrder order)? sortChanged,
    TResult Function(List<int> projectIds)? deleteProjects,
    TResult Function(Project project)? deleteProject,
    required TResult orElse(),
  }) {
    if (deleteProject != null) {
      return deleteProject(project);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProjects value) fetchProjects,
    required TResult Function(_RefreshProjects value) refreshProjects,
    required TResult Function(_LoadMoreProjects value) loadMoreProjects,
    required TResult Function(_FilterChanged value) filterChanged,
    required TResult Function(_SortChanged value) sortChanged,
    required TResult Function(_DeleteProjects value) deleteProjects,
    required TResult Function(_DeleteProject value) deleteProject,
  }) {
    return deleteProject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProjects value)? fetchProjects,
    TResult? Function(_RefreshProjects value)? refreshProjects,
    TResult? Function(_LoadMoreProjects value)? loadMoreProjects,
    TResult? Function(_FilterChanged value)? filterChanged,
    TResult? Function(_SortChanged value)? sortChanged,
    TResult? Function(_DeleteProjects value)? deleteProjects,
    TResult? Function(_DeleteProject value)? deleteProject,
  }) {
    return deleteProject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProjects value)? fetchProjects,
    TResult Function(_RefreshProjects value)? refreshProjects,
    TResult Function(_LoadMoreProjects value)? loadMoreProjects,
    TResult Function(_FilterChanged value)? filterChanged,
    TResult Function(_SortChanged value)? sortChanged,
    TResult Function(_DeleteProjects value)? deleteProjects,
    TResult Function(_DeleteProject value)? deleteProject,
    required TResult orElse(),
  }) {
    if (deleteProject != null) {
      return deleteProject(this);
    }
    return orElse();
  }
}

abstract class _DeleteProject implements UserProjectEvent {
  const factory _DeleteProject({required final Project project}) =
      _$DeleteProjectImpl;

  Project get project;

  /// Create a copy of UserProjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteProjectImplCopyWith<_$DeleteProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserProjectState {
  List<Project> get projects => throw _privateConstructorUsedError;
  Pagination<Project> get paginatedProjects =>
      throw _privateConstructorUsedError;
  ProjectFilter get filter => throw _privateConstructorUsedError;
  ProjectSort get sort => throw _privateConstructorUsedError;
  SortOrder get order => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)
        initial,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)
        loading,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String? uuid)
        loaded,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)
        deleting,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)
        deleted,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String message)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        initial,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        loading,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String? uuid)?
        loaded,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        deleting,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        deleted,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String message)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        initial,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        loading,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String? uuid)?
        loaded,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        deleting,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        deleted,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String message)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of UserProjectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProjectStateCopyWith<UserProjectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProjectStateCopyWith<$Res> {
  factory $UserProjectStateCopyWith(
          UserProjectState value, $Res Function(UserProjectState) then) =
      _$UserProjectStateCopyWithImpl<$Res, UserProjectState>;
  @useResult
  $Res call(
      {List<Project> projects,
      Pagination<Project> paginatedProjects,
      ProjectFilter filter,
      ProjectSort sort,
      SortOrder order});

  $PaginationCopyWith<Project, $Res> get paginatedProjects;
}

/// @nodoc
class _$UserProjectStateCopyWithImpl<$Res, $Val extends UserProjectState>
    implements $UserProjectStateCopyWith<$Res> {
  _$UserProjectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProjectState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
    Object? paginatedProjects = null,
    Object? filter = null,
    Object? sort = null,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      projects: null == projects
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      paginatedProjects: null == paginatedProjects
          ? _value.paginatedProjects
          : paginatedProjects // ignore: cast_nullable_to_non_nullable
              as Pagination<Project>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as ProjectFilter,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as ProjectSort,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SortOrder,
    ) as $Val);
  }

  /// Create a copy of UserProjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<Project, $Res> get paginatedProjects {
    return $PaginationCopyWith<Project, $Res>(_value.paginatedProjects,
        (value) {
      return _then(_value.copyWith(paginatedProjects: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $UserProjectStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Project> projects,
      Pagination<Project> paginatedProjects,
      ProjectFilter filter,
      ProjectSort sort,
      SortOrder order});

  @override
  $PaginationCopyWith<Project, $Res> get paginatedProjects;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UserProjectStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProjectState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
    Object? paginatedProjects = null,
    Object? filter = null,
    Object? sort = null,
    Object? order = null,
  }) {
    return _then(_$InitialImpl(
      projects: null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      paginatedProjects: null == paginatedProjects
          ? _value.paginatedProjects
          : paginatedProjects // ignore: cast_nullable_to_non_nullable
              as Pagination<Project>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as ProjectFilter,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as ProjectSort,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SortOrder,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {final List<Project> projects = const [],
      this.paginatedProjects = const Pagination(),
      this.filter = ProjectFilter.all,
      this.sort = ProjectSort.lastModified,
      this.order = SortOrder.desc})
      : _projects = projects;

  final List<Project> _projects;
  @override
  @JsonKey()
  List<Project> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  @override
  @JsonKey()
  final Pagination<Project> paginatedProjects;
  @override
  @JsonKey()
  final ProjectFilter filter;
  @override
  @JsonKey()
  final ProjectSort sort;
  @override
  @JsonKey()
  final SortOrder order;

  @override
  String toString() {
    return 'UserProjectState.initial(projects: $projects, paginatedProjects: $paginatedProjects, filter: $filter, sort: $sort, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            (identical(other.paginatedProjects, paginatedProjects) ||
                other.paginatedProjects == paginatedProjects) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_projects),
      paginatedProjects,
      filter,
      sort,
      order);

  /// Create a copy of UserProjectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)
        initial,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)
        loading,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String? uuid)
        loaded,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)
        deleting,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)
        deleted,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String message)
        error,
  }) {
    return initial(projects, paginatedProjects, filter, sort, order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        initial,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        loading,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String? uuid)?
        loaded,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        deleting,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        deleted,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String message)?
        error,
  }) {
    return initial?.call(projects, paginatedProjects, filter, sort, order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        initial,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        loading,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String? uuid)?
        loaded,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        deleting,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        deleted,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String message)?
        error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(projects, paginatedProjects, filter, sort, order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserProjectState {
  const factory _Initial(
      {final List<Project> projects,
      final Pagination<Project> paginatedProjects,
      final ProjectFilter filter,
      final ProjectSort sort,
      final SortOrder order}) = _$InitialImpl;

  @override
  List<Project> get projects;
  @override
  Pagination<Project> get paginatedProjects;
  @override
  ProjectFilter get filter;
  @override
  ProjectSort get sort;
  @override
  SortOrder get order;

  /// Create a copy of UserProjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $UserProjectStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Project> projects,
      Pagination<Project> paginatedProjects,
      ProjectFilter filter,
      ProjectSort sort,
      SortOrder order});

  @override
  $PaginationCopyWith<Project, $Res> get paginatedProjects;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$UserProjectStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProjectState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
    Object? paginatedProjects = null,
    Object? filter = null,
    Object? sort = null,
    Object? order = null,
  }) {
    return _then(_$LoadingImpl(
      projects: null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      paginatedProjects: null == paginatedProjects
          ? _value.paginatedProjects
          : paginatedProjects // ignore: cast_nullable_to_non_nullable
              as Pagination<Project>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as ProjectFilter,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as ProjectSort,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SortOrder,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(
      {final List<Project> projects = const [],
      this.paginatedProjects = const Pagination(),
      this.filter = ProjectFilter.all,
      this.sort = ProjectSort.lastModified,
      this.order = SortOrder.desc})
      : _projects = projects;

  final List<Project> _projects;
  @override
  @JsonKey()
  List<Project> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  @override
  @JsonKey()
  final Pagination<Project> paginatedProjects;
  @override
  @JsonKey()
  final ProjectFilter filter;
  @override
  @JsonKey()
  final ProjectSort sort;
  @override
  @JsonKey()
  final SortOrder order;

  @override
  String toString() {
    return 'UserProjectState.loading(projects: $projects, paginatedProjects: $paginatedProjects, filter: $filter, sort: $sort, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            (identical(other.paginatedProjects, paginatedProjects) ||
                other.paginatedProjects == paginatedProjects) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_projects),
      paginatedProjects,
      filter,
      sort,
      order);

  /// Create a copy of UserProjectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)
        initial,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)
        loading,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String? uuid)
        loaded,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)
        deleting,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)
        deleted,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String message)
        error,
  }) {
    return loading(projects, paginatedProjects, filter, sort, order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        initial,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        loading,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String? uuid)?
        loaded,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        deleting,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        deleted,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String message)?
        error,
  }) {
    return loading?.call(projects, paginatedProjects, filter, sort, order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        initial,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        loading,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String? uuid)?
        loaded,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        deleting,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        deleted,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String message)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(projects, paginatedProjects, filter, sort, order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements UserProjectState {
  const factory _Loading(
      {final List<Project> projects,
      final Pagination<Project> paginatedProjects,
      final ProjectFilter filter,
      final ProjectSort sort,
      final SortOrder order}) = _$LoadingImpl;

  @override
  List<Project> get projects;
  @override
  Pagination<Project> get paginatedProjects;
  @override
  ProjectFilter get filter;
  @override
  ProjectSort get sort;
  @override
  SortOrder get order;

  /// Create a copy of UserProjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res>
    implements $UserProjectStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Project> projects,
      Pagination<Project> paginatedProjects,
      ProjectFilter filter,
      ProjectSort sort,
      SortOrder order,
      String? uuid});

  @override
  $PaginationCopyWith<Project, $Res> get paginatedProjects;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$UserProjectStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProjectState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
    Object? paginatedProjects = null,
    Object? filter = null,
    Object? sort = null,
    Object? order = null,
    Object? uuid = freezed,
  }) {
    return _then(_$LoadedImpl(
      projects: null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      paginatedProjects: null == paginatedProjects
          ? _value.paginatedProjects
          : paginatedProjects // ignore: cast_nullable_to_non_nullable
              as Pagination<Project>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as ProjectFilter,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as ProjectSort,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SortOrder,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {final List<Project> projects = const [],
      this.paginatedProjects = const Pagination(),
      this.filter = ProjectFilter.all,
      this.sort = ProjectSort.lastModified,
      this.order = SortOrder.desc,
      this.uuid})
      : _projects = projects;

  final List<Project> _projects;
  @override
  @JsonKey()
  List<Project> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  @override
  @JsonKey()
  final Pagination<Project> paginatedProjects;
  @override
  @JsonKey()
  final ProjectFilter filter;
  @override
  @JsonKey()
  final ProjectSort sort;
  @override
  @JsonKey()
  final SortOrder order;
  @override
  final String? uuid;

  @override
  String toString() {
    return 'UserProjectState.loaded(projects: $projects, paginatedProjects: $paginatedProjects, filter: $filter, sort: $sort, order: $order, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            (identical(other.paginatedProjects, paginatedProjects) ||
                other.paginatedProjects == paginatedProjects) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_projects),
      paginatedProjects,
      filter,
      sort,
      order,
      uuid);

  /// Create a copy of UserProjectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)
        initial,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)
        loading,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String? uuid)
        loaded,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)
        deleting,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)
        deleted,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String message)
        error,
  }) {
    return loaded(projects, paginatedProjects, filter, sort, order, uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        initial,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        loading,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String? uuid)?
        loaded,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        deleting,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        deleted,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String message)?
        error,
  }) {
    return loaded?.call(projects, paginatedProjects, filter, sort, order, uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        initial,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        loading,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String? uuid)?
        loaded,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        deleting,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        deleted,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String message)?
        error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(projects, paginatedProjects, filter, sort, order, uuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements UserProjectState {
  const factory _Loaded(
      {final List<Project> projects,
      final Pagination<Project> paginatedProjects,
      final ProjectFilter filter,
      final ProjectSort sort,
      final SortOrder order,
      final String? uuid}) = _$LoadedImpl;

  @override
  List<Project> get projects;
  @override
  Pagination<Project> get paginatedProjects;
  @override
  ProjectFilter get filter;
  @override
  ProjectSort get sort;
  @override
  SortOrder get order;
  String? get uuid;

  /// Create a copy of UserProjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletingImplCopyWith<$Res>
    implements $UserProjectStateCopyWith<$Res> {
  factory _$$DeletingImplCopyWith(
          _$DeletingImpl value, $Res Function(_$DeletingImpl) then) =
      __$$DeletingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Project> projects,
      Pagination<Project> paginatedProjects,
      ProjectFilter filter,
      ProjectSort sort,
      SortOrder order});

  @override
  $PaginationCopyWith<Project, $Res> get paginatedProjects;
}

/// @nodoc
class __$$DeletingImplCopyWithImpl<$Res>
    extends _$UserProjectStateCopyWithImpl<$Res, _$DeletingImpl>
    implements _$$DeletingImplCopyWith<$Res> {
  __$$DeletingImplCopyWithImpl(
      _$DeletingImpl _value, $Res Function(_$DeletingImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProjectState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
    Object? paginatedProjects = null,
    Object? filter = null,
    Object? sort = null,
    Object? order = null,
  }) {
    return _then(_$DeletingImpl(
      projects: null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      paginatedProjects: null == paginatedProjects
          ? _value.paginatedProjects
          : paginatedProjects // ignore: cast_nullable_to_non_nullable
              as Pagination<Project>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as ProjectFilter,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as ProjectSort,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SortOrder,
    ));
  }
}

/// @nodoc

class _$DeletingImpl implements _Deleting {
  const _$DeletingImpl(
      {final List<Project> projects = const [],
      this.paginatedProjects = const Pagination(),
      this.filter = ProjectFilter.all,
      this.sort = ProjectSort.lastModified,
      this.order = SortOrder.desc})
      : _projects = projects;

  final List<Project> _projects;
  @override
  @JsonKey()
  List<Project> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  @override
  @JsonKey()
  final Pagination<Project> paginatedProjects;
  @override
  @JsonKey()
  final ProjectFilter filter;
  @override
  @JsonKey()
  final ProjectSort sort;
  @override
  @JsonKey()
  final SortOrder order;

  @override
  String toString() {
    return 'UserProjectState.deleting(projects: $projects, paginatedProjects: $paginatedProjects, filter: $filter, sort: $sort, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletingImpl &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            (identical(other.paginatedProjects, paginatedProjects) ||
                other.paginatedProjects == paginatedProjects) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_projects),
      paginatedProjects,
      filter,
      sort,
      order);

  /// Create a copy of UserProjectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletingImplCopyWith<_$DeletingImpl> get copyWith =>
      __$$DeletingImplCopyWithImpl<_$DeletingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)
        initial,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)
        loading,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String? uuid)
        loaded,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)
        deleting,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)
        deleted,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String message)
        error,
  }) {
    return deleting(projects, paginatedProjects, filter, sort, order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        initial,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        loading,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String? uuid)?
        loaded,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        deleting,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        deleted,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String message)?
        error,
  }) {
    return deleting?.call(projects, paginatedProjects, filter, sort, order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        initial,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        loading,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String? uuid)?
        loaded,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        deleting,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        deleted,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String message)?
        error,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting(projects, paginatedProjects, filter, sort, order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Error value) error,
  }) {
    return deleting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Error value)? error,
  }) {
    return deleting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting(this);
    }
    return orElse();
  }
}

abstract class _Deleting implements UserProjectState {
  const factory _Deleting(
      {final List<Project> projects,
      final Pagination<Project> paginatedProjects,
      final ProjectFilter filter,
      final ProjectSort sort,
      final SortOrder order}) = _$DeletingImpl;

  @override
  List<Project> get projects;
  @override
  Pagination<Project> get paginatedProjects;
  @override
  ProjectFilter get filter;
  @override
  ProjectSort get sort;
  @override
  SortOrder get order;

  /// Create a copy of UserProjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeletingImplCopyWith<_$DeletingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletedImplCopyWith<$Res>
    implements $UserProjectStateCopyWith<$Res> {
  factory _$$DeletedImplCopyWith(
          _$DeletedImpl value, $Res Function(_$DeletedImpl) then) =
      __$$DeletedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Project> projects,
      Pagination<Project> paginatedProjects,
      ProjectFilter filter,
      ProjectSort sort,
      SortOrder order});

  @override
  $PaginationCopyWith<Project, $Res> get paginatedProjects;
}

/// @nodoc
class __$$DeletedImplCopyWithImpl<$Res>
    extends _$UserProjectStateCopyWithImpl<$Res, _$DeletedImpl>
    implements _$$DeletedImplCopyWith<$Res> {
  __$$DeletedImplCopyWithImpl(
      _$DeletedImpl _value, $Res Function(_$DeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProjectState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
    Object? paginatedProjects = null,
    Object? filter = null,
    Object? sort = null,
    Object? order = null,
  }) {
    return _then(_$DeletedImpl(
      projects: null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      paginatedProjects: null == paginatedProjects
          ? _value.paginatedProjects
          : paginatedProjects // ignore: cast_nullable_to_non_nullable
              as Pagination<Project>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as ProjectFilter,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as ProjectSort,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SortOrder,
    ));
  }
}

/// @nodoc

class _$DeletedImpl implements _Deleted {
  const _$DeletedImpl(
      {final List<Project> projects = const [],
      this.paginatedProjects = const Pagination(),
      this.filter = ProjectFilter.all,
      this.sort = ProjectSort.lastModified,
      this.order = SortOrder.desc})
      : _projects = projects;

  final List<Project> _projects;
  @override
  @JsonKey()
  List<Project> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  @override
  @JsonKey()
  final Pagination<Project> paginatedProjects;
  @override
  @JsonKey()
  final ProjectFilter filter;
  @override
  @JsonKey()
  final ProjectSort sort;
  @override
  @JsonKey()
  final SortOrder order;

  @override
  String toString() {
    return 'UserProjectState.deleted(projects: $projects, paginatedProjects: $paginatedProjects, filter: $filter, sort: $sort, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletedImpl &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            (identical(other.paginatedProjects, paginatedProjects) ||
                other.paginatedProjects == paginatedProjects) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_projects),
      paginatedProjects,
      filter,
      sort,
      order);

  /// Create a copy of UserProjectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      __$$DeletedImplCopyWithImpl<_$DeletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)
        initial,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)
        loading,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String? uuid)
        loaded,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)
        deleting,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)
        deleted,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String message)
        error,
  }) {
    return deleted(projects, paginatedProjects, filter, sort, order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        initial,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        loading,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String? uuid)?
        loaded,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        deleting,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        deleted,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String message)?
        error,
  }) {
    return deleted?.call(projects, paginatedProjects, filter, sort, order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        initial,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        loading,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String? uuid)?
        loaded,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        deleting,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        deleted,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String message)?
        error,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(projects, paginatedProjects, filter, sort, order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Error value) error,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Error value)? error,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements UserProjectState {
  const factory _Deleted(
      {final List<Project> projects,
      final Pagination<Project> paginatedProjects,
      final ProjectFilter filter,
      final ProjectSort sort,
      final SortOrder order}) = _$DeletedImpl;

  @override
  List<Project> get projects;
  @override
  Pagination<Project> get paginatedProjects;
  @override
  ProjectFilter get filter;
  @override
  ProjectSort get sort;
  @override
  SortOrder get order;

  /// Create a copy of UserProjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res>
    implements $UserProjectStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Project> projects,
      Pagination<Project> paginatedProjects,
      ProjectFilter filter,
      ProjectSort sort,
      SortOrder order,
      String message});

  @override
  $PaginationCopyWith<Project, $Res> get paginatedProjects;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$UserProjectStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProjectState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
    Object? paginatedProjects = null,
    Object? filter = null,
    Object? sort = null,
    Object? order = null,
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      projects: null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      paginatedProjects: null == paginatedProjects
          ? _value.paginatedProjects
          : paginatedProjects // ignore: cast_nullable_to_non_nullable
              as Pagination<Project>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as ProjectFilter,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as ProjectSort,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SortOrder,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(
      {final List<Project> projects = const [],
      this.paginatedProjects = const Pagination(),
      this.filter = ProjectFilter.all,
      this.sort = ProjectSort.lastModified,
      this.order = SortOrder.desc,
      required this.message})
      : _projects = projects;

  final List<Project> _projects;
  @override
  @JsonKey()
  List<Project> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  @override
  @JsonKey()
  final Pagination<Project> paginatedProjects;
  @override
  @JsonKey()
  final ProjectFilter filter;
  @override
  @JsonKey()
  final ProjectSort sort;
  @override
  @JsonKey()
  final SortOrder order;
  @override
  final String message;

  @override
  String toString() {
    return 'UserProjectState.error(projects: $projects, paginatedProjects: $paginatedProjects, filter: $filter, sort: $sort, order: $order, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            (identical(other.paginatedProjects, paginatedProjects) ||
                other.paginatedProjects == paginatedProjects) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_projects),
      paginatedProjects,
      filter,
      sort,
      order,
      message);

  /// Create a copy of UserProjectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)
        initial,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)
        loading,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String? uuid)
        loaded,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)
        deleting,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)
        deleted,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String message)
        error,
  }) {
    return error(projects, paginatedProjects, filter, sort, order, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        initial,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        loading,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String? uuid)?
        loaded,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        deleting,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        deleted,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String message)?
        error,
  }) {
    return error?.call(
        projects, paginatedProjects, filter, sort, order, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        initial,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        loading,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String? uuid)?
        loaded,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        deleting,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order)?
        deleted,
    TResult Function(
            List<Project> projects,
            Pagination<Project> paginatedProjects,
            ProjectFilter filter,
            ProjectSort sort,
            SortOrder order,
            String message)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(projects, paginatedProjects, filter, sort, order, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements UserProjectState {
  const factory _Error(
      {final List<Project> projects,
      final Pagination<Project> paginatedProjects,
      final ProjectFilter filter,
      final ProjectSort sort,
      final SortOrder order,
      required final String message}) = _$ErrorImpl;

  @override
  List<Project> get projects;
  @override
  Pagination<Project> get paginatedProjects;
  @override
  ProjectFilter get filter;
  @override
  ProjectSort get sort;
  @override
  SortOrder get order;
  String get message;

  /// Create a copy of UserProjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
