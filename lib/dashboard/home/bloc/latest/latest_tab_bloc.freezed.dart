// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'latest_tab_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LatestTabEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refreshed,
    required TResult Function() loadMoreProjects,
    required TResult Function(ProjectCategory category) categoryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? refreshed,
    TResult? Function()? loadMoreProjects,
    TResult? Function(ProjectCategory category)? categoryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshed,
    TResult Function()? loadMoreProjects,
    TResult Function(ProjectCategory category)? categoryChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Refreshed value) refreshed,
    required TResult Function(_LoadMoreProjects value) loadMoreProjects,
    required TResult Function(_CategoryChanged value) categoryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Refreshed value)? refreshed,
    TResult? Function(_LoadMoreProjects value)? loadMoreProjects,
    TResult? Function(_CategoryChanged value)? categoryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Refreshed value)? refreshed,
    TResult Function(_LoadMoreProjects value)? loadMoreProjects,
    TResult Function(_CategoryChanged value)? categoryChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatestTabEventCopyWith<$Res> {
  factory $LatestTabEventCopyWith(
          LatestTabEvent value, $Res Function(LatestTabEvent) then) =
      _$LatestTabEventCopyWithImpl<$Res, LatestTabEvent>;
}

/// @nodoc
class _$LatestTabEventCopyWithImpl<$Res, $Val extends LatestTabEvent>
    implements $LatestTabEventCopyWith<$Res> {
  _$LatestTabEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LatestTabEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$LatestTabEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LatestTabEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'LatestTabEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refreshed,
    required TResult Function() loadMoreProjects,
    required TResult Function(ProjectCategory category) categoryChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? refreshed,
    TResult? Function()? loadMoreProjects,
    TResult? Function(ProjectCategory category)? categoryChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshed,
    TResult Function()? loadMoreProjects,
    TResult Function(ProjectCategory category)? categoryChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Refreshed value) refreshed,
    required TResult Function(_LoadMoreProjects value) loadMoreProjects,
    required TResult Function(_CategoryChanged value) categoryChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Refreshed value)? refreshed,
    TResult? Function(_LoadMoreProjects value)? loadMoreProjects,
    TResult? Function(_CategoryChanged value)? categoryChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Refreshed value)? refreshed,
    TResult Function(_LoadMoreProjects value)? loadMoreProjects,
    TResult Function(_CategoryChanged value)? categoryChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LatestTabEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$RefreshedImplCopyWith<$Res> {
  factory _$$RefreshedImplCopyWith(
          _$RefreshedImpl value, $Res Function(_$RefreshedImpl) then) =
      __$$RefreshedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshedImplCopyWithImpl<$Res>
    extends _$LatestTabEventCopyWithImpl<$Res, _$RefreshedImpl>
    implements _$$RefreshedImplCopyWith<$Res> {
  __$$RefreshedImplCopyWithImpl(
      _$RefreshedImpl _value, $Res Function(_$RefreshedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LatestTabEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshedImpl implements _Refreshed {
  const _$RefreshedImpl();

  @override
  String toString() {
    return 'LatestTabEvent.refreshed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refreshed,
    required TResult Function() loadMoreProjects,
    required TResult Function(ProjectCategory category) categoryChanged,
  }) {
    return refreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? refreshed,
    TResult? Function()? loadMoreProjects,
    TResult? Function(ProjectCategory category)? categoryChanged,
  }) {
    return refreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshed,
    TResult Function()? loadMoreProjects,
    TResult Function(ProjectCategory category)? categoryChanged,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Refreshed value) refreshed,
    required TResult Function(_LoadMoreProjects value) loadMoreProjects,
    required TResult Function(_CategoryChanged value) categoryChanged,
  }) {
    return refreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Refreshed value)? refreshed,
    TResult? Function(_LoadMoreProjects value)? loadMoreProjects,
    TResult? Function(_CategoryChanged value)? categoryChanged,
  }) {
    return refreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Refreshed value)? refreshed,
    TResult Function(_LoadMoreProjects value)? loadMoreProjects,
    TResult Function(_CategoryChanged value)? categoryChanged,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed(this);
    }
    return orElse();
  }
}

abstract class _Refreshed implements LatestTabEvent {
  const factory _Refreshed() = _$RefreshedImpl;
}

/// @nodoc
abstract class _$$LoadMoreProjectsImplCopyWith<$Res> {
  factory _$$LoadMoreProjectsImplCopyWith(_$LoadMoreProjectsImpl value,
          $Res Function(_$LoadMoreProjectsImpl) then) =
      __$$LoadMoreProjectsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreProjectsImplCopyWithImpl<$Res>
    extends _$LatestTabEventCopyWithImpl<$Res, _$LoadMoreProjectsImpl>
    implements _$$LoadMoreProjectsImplCopyWith<$Res> {
  __$$LoadMoreProjectsImplCopyWithImpl(_$LoadMoreProjectsImpl _value,
      $Res Function(_$LoadMoreProjectsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LatestTabEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadMoreProjectsImpl implements _LoadMoreProjects {
  const _$LoadMoreProjectsImpl();

  @override
  String toString() {
    return 'LatestTabEvent.loadMoreProjects()';
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
    required TResult Function() started,
    required TResult Function() refreshed,
    required TResult Function() loadMoreProjects,
    required TResult Function(ProjectCategory category) categoryChanged,
  }) {
    return loadMoreProjects();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? refreshed,
    TResult? Function()? loadMoreProjects,
    TResult? Function(ProjectCategory category)? categoryChanged,
  }) {
    return loadMoreProjects?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshed,
    TResult Function()? loadMoreProjects,
    TResult Function(ProjectCategory category)? categoryChanged,
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
    required TResult Function(_Started value) started,
    required TResult Function(_Refreshed value) refreshed,
    required TResult Function(_LoadMoreProjects value) loadMoreProjects,
    required TResult Function(_CategoryChanged value) categoryChanged,
  }) {
    return loadMoreProjects(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Refreshed value)? refreshed,
    TResult? Function(_LoadMoreProjects value)? loadMoreProjects,
    TResult? Function(_CategoryChanged value)? categoryChanged,
  }) {
    return loadMoreProjects?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Refreshed value)? refreshed,
    TResult Function(_LoadMoreProjects value)? loadMoreProjects,
    TResult Function(_CategoryChanged value)? categoryChanged,
    required TResult orElse(),
  }) {
    if (loadMoreProjects != null) {
      return loadMoreProjects(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreProjects implements LatestTabEvent {
  const factory _LoadMoreProjects() = _$LoadMoreProjectsImpl;
}

/// @nodoc
abstract class _$$CategoryChangedImplCopyWith<$Res> {
  factory _$$CategoryChangedImplCopyWith(_$CategoryChangedImpl value,
          $Res Function(_$CategoryChangedImpl) then) =
      __$$CategoryChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProjectCategory category});

  $ProjectCategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$CategoryChangedImplCopyWithImpl<$Res>
    extends _$LatestTabEventCopyWithImpl<$Res, _$CategoryChangedImpl>
    implements _$$CategoryChangedImplCopyWith<$Res> {
  __$$CategoryChangedImplCopyWithImpl(
      _$CategoryChangedImpl _value, $Res Function(_$CategoryChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LatestTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$CategoryChangedImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ProjectCategory,
    ));
  }

  /// Create a copy of LatestTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectCategoryCopyWith<$Res> get category {
    return $ProjectCategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$CategoryChangedImpl implements _CategoryChanged {
  const _$CategoryChangedImpl(this.category);

  @override
  final ProjectCategory category;

  @override
  String toString() {
    return 'LatestTabEvent.categoryChanged(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryChangedImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of LatestTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryChangedImplCopyWith<_$CategoryChangedImpl> get copyWith =>
      __$$CategoryChangedImplCopyWithImpl<_$CategoryChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refreshed,
    required TResult Function() loadMoreProjects,
    required TResult Function(ProjectCategory category) categoryChanged,
  }) {
    return categoryChanged(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? refreshed,
    TResult? Function()? loadMoreProjects,
    TResult? Function(ProjectCategory category)? categoryChanged,
  }) {
    return categoryChanged?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshed,
    TResult Function()? loadMoreProjects,
    TResult Function(ProjectCategory category)? categoryChanged,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Refreshed value) refreshed,
    required TResult Function(_LoadMoreProjects value) loadMoreProjects,
    required TResult Function(_CategoryChanged value) categoryChanged,
  }) {
    return categoryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Refreshed value)? refreshed,
    TResult? Function(_LoadMoreProjects value)? loadMoreProjects,
    TResult? Function(_CategoryChanged value)? categoryChanged,
  }) {
    return categoryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Refreshed value)? refreshed,
    TResult Function(_LoadMoreProjects value)? loadMoreProjects,
    TResult Function(_CategoryChanged value)? categoryChanged,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(this);
    }
    return orElse();
  }
}

abstract class _CategoryChanged implements LatestTabEvent {
  const factory _CategoryChanged(final ProjectCategory category) =
      _$CategoryChangedImpl;

  ProjectCategory get category;

  /// Create a copy of LatestTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryChangedImplCopyWith<_$CategoryChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LatestTabState {
  List<Project> get projects => throw _privateConstructorUsedError;
  Pagination<Project> get page => throw _privateConstructorUsedError;
  List<ProjectCategory> get categories => throw _privateConstructorUsedError;
  ProjectCategory get selectedCategory => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Project> projects, Pagination<Project> page,
            List<ProjectCategory> categories, ProjectCategory selectedCategory)
        initial,
    required TResult Function(List<Project> projects, Pagination<Project> page,
            List<ProjectCategory> categories, ProjectCategory selectedCategory)
        loading,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> page,
            List<ProjectCategory> categories,
            ProjectCategory selectedCategory,
            String uuid)
        loaded,
    required TResult Function(
            String message,
            Pagination<Project> page,
            List<Project> projects,
            List<ProjectCategory> categories,
            ProjectCategory selectedCategory)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Project> projects, Pagination<Project> page,
            List<ProjectCategory> categories, ProjectCategory selectedCategory)?
        initial,
    TResult? Function(List<Project> projects, Pagination<Project> page,
            List<ProjectCategory> categories, ProjectCategory selectedCategory)?
        loading,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> page,
            List<ProjectCategory> categories,
            ProjectCategory selectedCategory,
            String uuid)?
        loaded,
    TResult? Function(
            String message,
            Pagination<Project> page,
            List<Project> projects,
            List<ProjectCategory> categories,
            ProjectCategory selectedCategory)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Project> projects, Pagination<Project> page,
            List<ProjectCategory> categories, ProjectCategory selectedCategory)?
        initial,
    TResult Function(List<Project> projects, Pagination<Project> page,
            List<ProjectCategory> categories, ProjectCategory selectedCategory)?
        loading,
    TResult Function(
            List<Project> projects,
            Pagination<Project> page,
            List<ProjectCategory> categories,
            ProjectCategory selectedCategory,
            String uuid)?
        loaded,
    TResult Function(
            String message,
            Pagination<Project> page,
            List<Project> projects,
            List<ProjectCategory> categories,
            ProjectCategory selectedCategory)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of LatestTabState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LatestTabStateCopyWith<LatestTabState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatestTabStateCopyWith<$Res> {
  factory $LatestTabStateCopyWith(
          LatestTabState value, $Res Function(LatestTabState) then) =
      _$LatestTabStateCopyWithImpl<$Res, LatestTabState>;
  @useResult
  $Res call(
      {List<Project> projects,
      Pagination<Project> page,
      List<ProjectCategory> categories,
      ProjectCategory selectedCategory});

  $PaginationCopyWith<Project, $Res> get page;
  $ProjectCategoryCopyWith<$Res> get selectedCategory;
}

/// @nodoc
class _$LatestTabStateCopyWithImpl<$Res, $Val extends LatestTabState>
    implements $LatestTabStateCopyWith<$Res> {
  _$LatestTabStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LatestTabState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
    Object? page = null,
    Object? categories = null,
    Object? selectedCategory = null,
  }) {
    return _then(_value.copyWith(
      projects: null == projects
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Pagination<Project>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ProjectCategory>,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as ProjectCategory,
    ) as $Val);
  }

  /// Create a copy of LatestTabState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<Project, $Res> get page {
    return $PaginationCopyWith<Project, $Res>(_value.page, (value) {
      return _then(_value.copyWith(page: value) as $Val);
    });
  }

  /// Create a copy of LatestTabState
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
abstract class _$$InitialImplCopyWith<$Res>
    implements $LatestTabStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Project> projects,
      Pagination<Project> page,
      List<ProjectCategory> categories,
      ProjectCategory selectedCategory});

  @override
  $PaginationCopyWith<Project, $Res> get page;
  @override
  $ProjectCategoryCopyWith<$Res> get selectedCategory;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LatestTabStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LatestTabState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
    Object? page = null,
    Object? categories = null,
    Object? selectedCategory = null,
  }) {
    return _then(_$InitialImpl(
      projects: null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Pagination<Project>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ProjectCategory>,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as ProjectCategory,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl(
      {final List<Project> projects = const [],
      this.page = const Pagination(),
      final List<ProjectCategory> categories = const [],
      this.selectedCategory = const ProjectCategory(name: 'All')})
      : _projects = projects,
        _categories = categories;

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
  final Pagination<Project> page;
  final List<ProjectCategory> _categories;
  @override
  @JsonKey()
  List<ProjectCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final ProjectCategory selectedCategory;

  @override
  String toString() {
    return 'LatestTabState.initial(projects: $projects, page: $page, categories: $categories, selectedCategory: $selectedCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_projects),
      page,
      const DeepCollectionEquality().hash(_categories),
      selectedCategory);

  /// Create a copy of LatestTabState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Project> projects, Pagination<Project> page,
            List<ProjectCategory> categories, ProjectCategory selectedCategory)
        initial,
    required TResult Function(List<Project> projects, Pagination<Project> page,
            List<ProjectCategory> categories, ProjectCategory selectedCategory)
        loading,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> page,
            List<ProjectCategory> categories,
            ProjectCategory selectedCategory,
            String uuid)
        loaded,
    required TResult Function(
            String message,
            Pagination<Project> page,
            List<Project> projects,
            List<ProjectCategory> categories,
            ProjectCategory selectedCategory)
        error,
  }) {
    return initial(projects, page, categories, selectedCategory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Project> projects, Pagination<Project> page,
            List<ProjectCategory> categories, ProjectCategory selectedCategory)?
        initial,
    TResult? Function(List<Project> projects, Pagination<Project> page,
            List<ProjectCategory> categories, ProjectCategory selectedCategory)?
        loading,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> page,
            List<ProjectCategory> categories,
            ProjectCategory selectedCategory,
            String uuid)?
        loaded,
    TResult? Function(
            String message,
            Pagination<Project> page,
            List<Project> projects,
            List<ProjectCategory> categories,
            ProjectCategory selectedCategory)?
        error,
  }) {
    return initial?.call(projects, page, categories, selectedCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Project> projects, Pagination<Project> page,
            List<ProjectCategory> categories, ProjectCategory selectedCategory)?
        initial,
    TResult Function(List<Project> projects, Pagination<Project> page,
            List<ProjectCategory> categories, ProjectCategory selectedCategory)?
        loading,
    TResult Function(
            List<Project> projects,
            Pagination<Project> page,
            List<ProjectCategory> categories,
            ProjectCategory selectedCategory,
            String uuid)?
        loaded,
    TResult Function(
            String message,
            Pagination<Project> page,
            List<Project> projects,
            List<ProjectCategory> categories,
            ProjectCategory selectedCategory)?
        error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(projects, page, categories, selectedCategory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements LatestTabState {
  const factory Initial(
      {final List<Project> projects,
      final Pagination<Project> page,
      final List<ProjectCategory> categories,
      final ProjectCategory selectedCategory}) = _$InitialImpl;

  @override
  List<Project> get projects;
  @override
  Pagination<Project> get page;
  @override
  List<ProjectCategory> get categories;
  @override
  ProjectCategory get selectedCategory;

  /// Create a copy of LatestTabState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $LatestTabStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Project> projects,
      Pagination<Project> page,
      List<ProjectCategory> categories,
      ProjectCategory selectedCategory});

  @override
  $PaginationCopyWith<Project, $Res> get page;
  @override
  $ProjectCategoryCopyWith<$Res> get selectedCategory;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$LatestTabStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of LatestTabState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
    Object? page = null,
    Object? categories = null,
    Object? selectedCategory = null,
  }) {
    return _then(_$LoadingImpl(
      projects: null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Pagination<Project>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ProjectCategory>,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as ProjectCategory,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl(
      {final List<Project> projects = const [],
      this.page = const Pagination(),
      final List<ProjectCategory> categories = const [],
      this.selectedCategory = const ProjectCategory(name: 'All')})
      : _projects = projects,
        _categories = categories;

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
  final Pagination<Project> page;
  final List<ProjectCategory> _categories;
  @override
  @JsonKey()
  List<ProjectCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final ProjectCategory selectedCategory;

  @override
  String toString() {
    return 'LatestTabState.loading(projects: $projects, page: $page, categories: $categories, selectedCategory: $selectedCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_projects),
      page,
      const DeepCollectionEquality().hash(_categories),
      selectedCategory);

  /// Create a copy of LatestTabState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Project> projects, Pagination<Project> page,
            List<ProjectCategory> categories, ProjectCategory selectedCategory)
        initial,
    required TResult Function(List<Project> projects, Pagination<Project> page,
            List<ProjectCategory> categories, ProjectCategory selectedCategory)
        loading,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> page,
            List<ProjectCategory> categories,
            ProjectCategory selectedCategory,
            String uuid)
        loaded,
    required TResult Function(
            String message,
            Pagination<Project> page,
            List<Project> projects,
            List<ProjectCategory> categories,
            ProjectCategory selectedCategory)
        error,
  }) {
    return loading(projects, page, categories, selectedCategory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Project> projects, Pagination<Project> page,
            List<ProjectCategory> categories, ProjectCategory selectedCategory)?
        initial,
    TResult? Function(List<Project> projects, Pagination<Project> page,
            List<ProjectCategory> categories, ProjectCategory selectedCategory)?
        loading,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> page,
            List<ProjectCategory> categories,
            ProjectCategory selectedCategory,
            String uuid)?
        loaded,
    TResult? Function(
            String message,
            Pagination<Project> page,
            List<Project> projects,
            List<ProjectCategory> categories,
            ProjectCategory selectedCategory)?
        error,
  }) {
    return loading?.call(projects, page, categories, selectedCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Project> projects, Pagination<Project> page,
            List<ProjectCategory> categories, ProjectCategory selectedCategory)?
        initial,
    TResult Function(List<Project> projects, Pagination<Project> page,
            List<ProjectCategory> categories, ProjectCategory selectedCategory)?
        loading,
    TResult Function(
            List<Project> projects,
            Pagination<Project> page,
            List<ProjectCategory> categories,
            ProjectCategory selectedCategory,
            String uuid)?
        loaded,
    TResult Function(
            String message,
            Pagination<Project> page,
            List<Project> projects,
            List<ProjectCategory> categories,
            ProjectCategory selectedCategory)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(projects, page, categories, selectedCategory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements LatestTabState {
  const factory Loading(
      {final List<Project> projects,
      final Pagination<Project> page,
      final List<ProjectCategory> categories,
      final ProjectCategory selectedCategory}) = _$LoadingImpl;

  @override
  List<Project> get projects;
  @override
  Pagination<Project> get page;
  @override
  List<ProjectCategory> get categories;
  @override
  ProjectCategory get selectedCategory;

  /// Create a copy of LatestTabState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res>
    implements $LatestTabStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Project> projects,
      Pagination<Project> page,
      List<ProjectCategory> categories,
      ProjectCategory selectedCategory,
      String uuid});

  @override
  $PaginationCopyWith<Project, $Res> get page;
  @override
  $ProjectCategoryCopyWith<$Res> get selectedCategory;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$LatestTabStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LatestTabState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
    Object? page = null,
    Object? categories = null,
    Object? selectedCategory = null,
    Object? uuid = null,
  }) {
    return _then(_$LoadedImpl(
      projects: null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Pagination<Project>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ProjectCategory>,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as ProjectCategory,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements Loaded {
  const _$LoadedImpl(
      {required final List<Project> projects,
      required this.page,
      required final List<ProjectCategory> categories,
      this.selectedCategory = const ProjectCategory(name: 'All'),
      this.uuid = ''})
      : _projects = projects,
        _categories = categories;

  final List<Project> _projects;
  @override
  List<Project> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  @override
  final Pagination<Project> page;
  final List<ProjectCategory> _categories;
  @override
  List<ProjectCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final ProjectCategory selectedCategory;
  @override
  @JsonKey()
  final String uuid;

  @override
  String toString() {
    return 'LatestTabState.loaded(projects: $projects, page: $page, categories: $categories, selectedCategory: $selectedCategory, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_projects),
      page,
      const DeepCollectionEquality().hash(_categories),
      selectedCategory,
      uuid);

  /// Create a copy of LatestTabState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Project> projects, Pagination<Project> page,
            List<ProjectCategory> categories, ProjectCategory selectedCategory)
        initial,
    required TResult Function(List<Project> projects, Pagination<Project> page,
            List<ProjectCategory> categories, ProjectCategory selectedCategory)
        loading,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> page,
            List<ProjectCategory> categories,
            ProjectCategory selectedCategory,
            String uuid)
        loaded,
    required TResult Function(
            String message,
            Pagination<Project> page,
            List<Project> projects,
            List<ProjectCategory> categories,
            ProjectCategory selectedCategory)
        error,
  }) {
    return loaded(projects, page, categories, selectedCategory, uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Project> projects, Pagination<Project> page,
            List<ProjectCategory> categories, ProjectCategory selectedCategory)?
        initial,
    TResult? Function(List<Project> projects, Pagination<Project> page,
            List<ProjectCategory> categories, ProjectCategory selectedCategory)?
        loading,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> page,
            List<ProjectCategory> categories,
            ProjectCategory selectedCategory,
            String uuid)?
        loaded,
    TResult? Function(
            String message,
            Pagination<Project> page,
            List<Project> projects,
            List<ProjectCategory> categories,
            ProjectCategory selectedCategory)?
        error,
  }) {
    return loaded?.call(projects, page, categories, selectedCategory, uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Project> projects, Pagination<Project> page,
            List<ProjectCategory> categories, ProjectCategory selectedCategory)?
        initial,
    TResult Function(List<Project> projects, Pagination<Project> page,
            List<ProjectCategory> categories, ProjectCategory selectedCategory)?
        loading,
    TResult Function(
            List<Project> projects,
            Pagination<Project> page,
            List<ProjectCategory> categories,
            ProjectCategory selectedCategory,
            String uuid)?
        loaded,
    TResult Function(
            String message,
            Pagination<Project> page,
            List<Project> projects,
            List<ProjectCategory> categories,
            ProjectCategory selectedCategory)?
        error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(projects, page, categories, selectedCategory, uuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements LatestTabState {
  const factory Loaded(
      {required final List<Project> projects,
      required final Pagination<Project> page,
      required final List<ProjectCategory> categories,
      final ProjectCategory selectedCategory,
      final String uuid}) = _$LoadedImpl;

  @override
  List<Project> get projects;
  @override
  Pagination<Project> get page;
  @override
  List<ProjectCategory> get categories;
  @override
  ProjectCategory get selectedCategory;
  String get uuid;

  /// Create a copy of LatestTabState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res>
    implements $LatestTabStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      Pagination<Project> page,
      List<Project> projects,
      List<ProjectCategory> categories,
      ProjectCategory selectedCategory});

  @override
  $PaginationCopyWith<Project, $Res> get page;
  @override
  $ProjectCategoryCopyWith<$Res> get selectedCategory;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$LatestTabStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of LatestTabState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? page = null,
    Object? projects = null,
    Object? categories = null,
    Object? selectedCategory = null,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Pagination<Project>,
      projects: null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ProjectCategory>,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as ProjectCategory,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl(
      {required this.message,
      this.page = const Pagination(),
      final List<Project> projects = const [],
      final List<ProjectCategory> categories = const [],
      this.selectedCategory = const ProjectCategory(name: 'All')})
      : _projects = projects,
        _categories = categories;

  @override
  final String message;
  @override
  @JsonKey()
  final Pagination<Project> page;
  final List<Project> _projects;
  @override
  @JsonKey()
  List<Project> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  final List<ProjectCategory> _categories;
  @override
  @JsonKey()
  List<ProjectCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final ProjectCategory selectedCategory;

  @override
  String toString() {
    return 'LatestTabState.error(message: $message, page: $page, projects: $projects, categories: $categories, selectedCategory: $selectedCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      message,
      page,
      const DeepCollectionEquality().hash(_projects),
      const DeepCollectionEquality().hash(_categories),
      selectedCategory);

  /// Create a copy of LatestTabState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Project> projects, Pagination<Project> page,
            List<ProjectCategory> categories, ProjectCategory selectedCategory)
        initial,
    required TResult Function(List<Project> projects, Pagination<Project> page,
            List<ProjectCategory> categories, ProjectCategory selectedCategory)
        loading,
    required TResult Function(
            List<Project> projects,
            Pagination<Project> page,
            List<ProjectCategory> categories,
            ProjectCategory selectedCategory,
            String uuid)
        loaded,
    required TResult Function(
            String message,
            Pagination<Project> page,
            List<Project> projects,
            List<ProjectCategory> categories,
            ProjectCategory selectedCategory)
        error,
  }) {
    return error(message, page, projects, categories, selectedCategory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Project> projects, Pagination<Project> page,
            List<ProjectCategory> categories, ProjectCategory selectedCategory)?
        initial,
    TResult? Function(List<Project> projects, Pagination<Project> page,
            List<ProjectCategory> categories, ProjectCategory selectedCategory)?
        loading,
    TResult? Function(
            List<Project> projects,
            Pagination<Project> page,
            List<ProjectCategory> categories,
            ProjectCategory selectedCategory,
            String uuid)?
        loaded,
    TResult? Function(
            String message,
            Pagination<Project> page,
            List<Project> projects,
            List<ProjectCategory> categories,
            ProjectCategory selectedCategory)?
        error,
  }) {
    return error?.call(message, page, projects, categories, selectedCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Project> projects, Pagination<Project> page,
            List<ProjectCategory> categories, ProjectCategory selectedCategory)?
        initial,
    TResult Function(List<Project> projects, Pagination<Project> page,
            List<ProjectCategory> categories, ProjectCategory selectedCategory)?
        loading,
    TResult Function(
            List<Project> projects,
            Pagination<Project> page,
            List<ProjectCategory> categories,
            ProjectCategory selectedCategory,
            String uuid)?
        loaded,
    TResult Function(
            String message,
            Pagination<Project> page,
            List<Project> projects,
            List<ProjectCategory> categories,
            ProjectCategory selectedCategory)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, page, projects, categories, selectedCategory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements LatestTabState {
  const factory Error(
      {required final String message,
      final Pagination<Project> page,
      final List<Project> projects,
      final List<ProjectCategory> categories,
      final ProjectCategory selectedCategory}) = _$ErrorImpl;

  String get message;
  @override
  Pagination<Project> get page;
  @override
  List<Project> get projects;
  @override
  List<ProjectCategory> get categories;
  @override
  ProjectCategory get selectedCategory;

  /// Create a copy of LatestTabState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
