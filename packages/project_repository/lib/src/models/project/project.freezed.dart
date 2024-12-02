// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Project _$ProjectFromJson(Map<String, dynamic> json) {
  return _Project.fromJson(json);
}

/// @nodoc
mixin _$Project {
  User get creator => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  ProjectVisibility get visibility => throw _privateConstructorUsedError;
  bool get isLiked => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;
  int get commentCount => throw _privateConstructorUsedError;
  int get forkCount => throw _privateConstructorUsedError;
  int get viewCount => throw _privateConstructorUsedError;
  bool get forkable => throw _privateConstructorUsedError;
  @JsonKey(fromJson: DateTime.parse)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: DateTime.parse)
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseDateTime)
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseDateTime)
  DateTime? get startedAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseDateTime)
  DateTime? get expectedCompletionAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseDateTime)
  DateTime? get completedAt => throw _privateConstructorUsedError;
  List<dynamic>? get description => throw _privateConstructorUsedError;
  List<Tag>? get tags => throw _privateConstructorUsedError;
  List<Step>? get steps => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  ProjectFork? get fork => throw _privateConstructorUsedError;
  List<Material>? get materials => throw _privateConstructorUsedError;
  ProjectCategory? get category => throw _privateConstructorUsedError;

  /// Serializes this Project to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectCopyWith<Project> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res, Project>;
  @useResult
  $Res call(
      {User creator,
      int id,
      String title,
      ProjectVisibility visibility,
      bool isLiked,
      int likeCount,
      int commentCount,
      int forkCount,
      int viewCount,
      bool forkable,
      @JsonKey(fromJson: DateTime.parse) DateTime createdAt,
      @JsonKey(fromJson: DateTime.parse) DateTime updatedAt,
      @JsonKey(fromJson: _parseDateTime) DateTime? deletedAt,
      @JsonKey(fromJson: _parseDateTime) DateTime? startedAt,
      @JsonKey(fromJson: _parseDateTime) DateTime? expectedCompletionAt,
      @JsonKey(fromJson: _parseDateTime) DateTime? completedAt,
      List<dynamic>? description,
      List<Tag>? tags,
      List<Step>? steps,
      String? imageUrl,
      ProjectFork? fork,
      List<Material>? materials,
      ProjectCategory? category});

  $UserCopyWith<$Res> get creator;
  $ProjectForkCopyWith<$Res>? get fork;
  $ProjectCategoryCopyWith<$Res>? get category;
}

/// @nodoc
class _$ProjectCopyWithImpl<$Res, $Val extends Project>
    implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creator = null,
    Object? id = null,
    Object? title = null,
    Object? visibility = null,
    Object? isLiked = null,
    Object? likeCount = null,
    Object? commentCount = null,
    Object? forkCount = null,
    Object? viewCount = null,
    Object? forkable = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
    Object? startedAt = freezed,
    Object? expectedCompletionAt = freezed,
    Object? completedAt = freezed,
    Object? description = freezed,
    Object? tags = freezed,
    Object? steps = freezed,
    Object? imageUrl = freezed,
    Object? fork = freezed,
    Object? materials = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as User,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as ProjectVisibility,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      forkCount: null == forkCount
          ? _value.forkCount
          : forkCount // ignore: cast_nullable_to_non_nullable
              as int,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      forkable: null == forkable
          ? _value.forkable
          : forkable // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expectedCompletionAt: freezed == expectedCompletionAt
          ? _value.expectedCompletionAt
          : expectedCompletionAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      steps: freezed == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<Step>?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fork: freezed == fork
          ? _value.fork
          : fork // ignore: cast_nullable_to_non_nullable
              as ProjectFork?,
      materials: freezed == materials
          ? _value.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<Material>?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ProjectCategory?,
    ) as $Val);
  }

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get creator {
    return $UserCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectForkCopyWith<$Res>? get fork {
    if (_value.fork == null) {
      return null;
    }

    return $ProjectForkCopyWith<$Res>(_value.fork!, (value) {
      return _then(_value.copyWith(fork: value) as $Val);
    });
  }

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectCategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $ProjectCategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectImplCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$$ProjectImplCopyWith(
          _$ProjectImpl value, $Res Function(_$ProjectImpl) then) =
      __$$ProjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User creator,
      int id,
      String title,
      ProjectVisibility visibility,
      bool isLiked,
      int likeCount,
      int commentCount,
      int forkCount,
      int viewCount,
      bool forkable,
      @JsonKey(fromJson: DateTime.parse) DateTime createdAt,
      @JsonKey(fromJson: DateTime.parse) DateTime updatedAt,
      @JsonKey(fromJson: _parseDateTime) DateTime? deletedAt,
      @JsonKey(fromJson: _parseDateTime) DateTime? startedAt,
      @JsonKey(fromJson: _parseDateTime) DateTime? expectedCompletionAt,
      @JsonKey(fromJson: _parseDateTime) DateTime? completedAt,
      List<dynamic>? description,
      List<Tag>? tags,
      List<Step>? steps,
      String? imageUrl,
      ProjectFork? fork,
      List<Material>? materials,
      ProjectCategory? category});

  @override
  $UserCopyWith<$Res> get creator;
  @override
  $ProjectForkCopyWith<$Res>? get fork;
  @override
  $ProjectCategoryCopyWith<$Res>? get category;
}

/// @nodoc
class __$$ProjectImplCopyWithImpl<$Res>
    extends _$ProjectCopyWithImpl<$Res, _$ProjectImpl>
    implements _$$ProjectImplCopyWith<$Res> {
  __$$ProjectImplCopyWithImpl(
      _$ProjectImpl _value, $Res Function(_$ProjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creator = null,
    Object? id = null,
    Object? title = null,
    Object? visibility = null,
    Object? isLiked = null,
    Object? likeCount = null,
    Object? commentCount = null,
    Object? forkCount = null,
    Object? viewCount = null,
    Object? forkable = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
    Object? startedAt = freezed,
    Object? expectedCompletionAt = freezed,
    Object? completedAt = freezed,
    Object? description = freezed,
    Object? tags = freezed,
    Object? steps = freezed,
    Object? imageUrl = freezed,
    Object? fork = freezed,
    Object? materials = freezed,
    Object? category = freezed,
  }) {
    return _then(_$ProjectImpl(
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as User,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as ProjectVisibility,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      forkCount: null == forkCount
          ? _value.forkCount
          : forkCount // ignore: cast_nullable_to_non_nullable
              as int,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      forkable: null == forkable
          ? _value.forkable
          : forkable // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expectedCompletionAt: freezed == expectedCompletionAt
          ? _value.expectedCompletionAt
          : expectedCompletionAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value._description
          : description // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      steps: freezed == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<Step>?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fork: freezed == fork
          ? _value.fork
          : fork // ignore: cast_nullable_to_non_nullable
              as ProjectFork?,
      materials: freezed == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<Material>?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ProjectCategory?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectImpl implements _Project {
  const _$ProjectImpl(
      {this.creator = const User(),
      this.id = 0,
      this.title = '',
      this.visibility = ProjectVisibility.public,
      this.isLiked = false,
      this.likeCount = 0,
      this.commentCount = 0,
      this.forkCount = 0,
      this.viewCount = 0,
      this.forkable = true,
      @JsonKey(fromJson: DateTime.parse) required this.createdAt,
      @JsonKey(fromJson: DateTime.parse) required this.updatedAt,
      @JsonKey(fromJson: _parseDateTime) this.deletedAt,
      @JsonKey(fromJson: _parseDateTime) this.startedAt,
      @JsonKey(fromJson: _parseDateTime) this.expectedCompletionAt,
      @JsonKey(fromJson: _parseDateTime) this.completedAt,
      final List<dynamic>? description,
      final List<Tag>? tags,
      final List<Step>? steps,
      this.imageUrl,
      this.fork,
      final List<Material>? materials,
      this.category})
      : _description = description,
        _tags = tags,
        _steps = steps,
        _materials = materials;

  factory _$ProjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectImplFromJson(json);

  @override
  @JsonKey()
  final User creator;
  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final ProjectVisibility visibility;
  @override
  @JsonKey()
  final bool isLiked;
  @override
  @JsonKey()
  final int likeCount;
  @override
  @JsonKey()
  final int commentCount;
  @override
  @JsonKey()
  final int forkCount;
  @override
  @JsonKey()
  final int viewCount;
  @override
  @JsonKey()
  final bool forkable;
  @override
  @JsonKey(fromJson: DateTime.parse)
  final DateTime createdAt;
  @override
  @JsonKey(fromJson: DateTime.parse)
  final DateTime updatedAt;
  @override
  @JsonKey(fromJson: _parseDateTime)
  final DateTime? deletedAt;
  @override
  @JsonKey(fromJson: _parseDateTime)
  final DateTime? startedAt;
  @override
  @JsonKey(fromJson: _parseDateTime)
  final DateTime? expectedCompletionAt;
  @override
  @JsonKey(fromJson: _parseDateTime)
  final DateTime? completedAt;
  final List<dynamic>? _description;
  @override
  List<dynamic>? get description {
    final value = _description;
    if (value == null) return null;
    if (_description is EqualUnmodifiableListView) return _description;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Tag>? _tags;
  @override
  List<Tag>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Step>? _steps;
  @override
  List<Step>? get steps {
    final value = _steps;
    if (value == null) return null;
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? imageUrl;
  @override
  final ProjectFork? fork;
  final List<Material>? _materials;
  @override
  List<Material>? get materials {
    final value = _materials;
    if (value == null) return null;
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ProjectCategory? category;

  @override
  String toString() {
    return 'Project(creator: $creator, id: $id, title: $title, visibility: $visibility, isLiked: $isLiked, likeCount: $likeCount, commentCount: $commentCount, forkCount: $forkCount, viewCount: $viewCount, forkable: $forkable, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, startedAt: $startedAt, expectedCompletionAt: $expectedCompletionAt, completedAt: $completedAt, description: $description, tags: $tags, steps: $steps, imageUrl: $imageUrl, fork: $fork, materials: $materials, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectImpl &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.forkCount, forkCount) ||
                other.forkCount == forkCount) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.forkable, forkable) ||
                other.forkable == forkable) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.expectedCompletionAt, expectedCompletionAt) ||
                other.expectedCompletionAt == expectedCompletionAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            const DeepCollectionEquality()
                .equals(other._description, _description) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.fork, fork) || other.fork == fork) &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        creator,
        id,
        title,
        visibility,
        isLiked,
        likeCount,
        commentCount,
        forkCount,
        viewCount,
        forkable,
        createdAt,
        updatedAt,
        deletedAt,
        startedAt,
        expectedCompletionAt,
        completedAt,
        const DeepCollectionEquality().hash(_description),
        const DeepCollectionEquality().hash(_tags),
        const DeepCollectionEquality().hash(_steps),
        imageUrl,
        fork,
        const DeepCollectionEquality().hash(_materials),
        category
      ]);

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      __$$ProjectImplCopyWithImpl<_$ProjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectImplToJson(
      this,
    );
  }
}

abstract class _Project implements Project {
  const factory _Project(
      {final User creator,
      final int id,
      final String title,
      final ProjectVisibility visibility,
      final bool isLiked,
      final int likeCount,
      final int commentCount,
      final int forkCount,
      final int viewCount,
      final bool forkable,
      @JsonKey(fromJson: DateTime.parse) required final DateTime createdAt,
      @JsonKey(fromJson: DateTime.parse) required final DateTime updatedAt,
      @JsonKey(fromJson: _parseDateTime) final DateTime? deletedAt,
      @JsonKey(fromJson: _parseDateTime) final DateTime? startedAt,
      @JsonKey(fromJson: _parseDateTime) final DateTime? expectedCompletionAt,
      @JsonKey(fromJson: _parseDateTime) final DateTime? completedAt,
      final List<dynamic>? description,
      final List<Tag>? tags,
      final List<Step>? steps,
      final String? imageUrl,
      final ProjectFork? fork,
      final List<Material>? materials,
      final ProjectCategory? category}) = _$ProjectImpl;

  factory _Project.fromJson(Map<String, dynamic> json) = _$ProjectImpl.fromJson;

  @override
  User get creator;
  @override
  int get id;
  @override
  String get title;
  @override
  ProjectVisibility get visibility;
  @override
  bool get isLiked;
  @override
  int get likeCount;
  @override
  int get commentCount;
  @override
  int get forkCount;
  @override
  int get viewCount;
  @override
  bool get forkable;
  @override
  @JsonKey(fromJson: DateTime.parse)
  DateTime get createdAt;
  @override
  @JsonKey(fromJson: DateTime.parse)
  DateTime get updatedAt;
  @override
  @JsonKey(fromJson: _parseDateTime)
  DateTime? get deletedAt;
  @override
  @JsonKey(fromJson: _parseDateTime)
  DateTime? get startedAt;
  @override
  @JsonKey(fromJson: _parseDateTime)
  DateTime? get expectedCompletionAt;
  @override
  @JsonKey(fromJson: _parseDateTime)
  DateTime? get completedAt;
  @override
  List<dynamic>? get description;
  @override
  List<Tag>? get tags;
  @override
  List<Step>? get steps;
  @override
  String? get imageUrl;
  @override
  ProjectFork? get fork;
  @override
  List<Material>? get materials;
  @override
  ProjectCategory? get category;

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
