// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_editor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TextEditorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Project project) initialized,
    required TResult Function(String imagePath, QuillController controller)
        imageInserted,
    required TResult Function(String videoPath, QuillController controller)
        videoInserted,
    required TResult Function() editorAdded,
    required TResult Function(int index) editorAddedAt,
    required TResult Function(TextEditorController controller) editorFocused,
    required TResult Function(int index) editorRemovedAt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Project project)? initialized,
    TResult? Function(String imagePath, QuillController controller)?
        imageInserted,
    TResult? Function(String videoPath, QuillController controller)?
        videoInserted,
    TResult? Function()? editorAdded,
    TResult? Function(int index)? editorAddedAt,
    TResult? Function(TextEditorController controller)? editorFocused,
    TResult? Function(int index)? editorRemovedAt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project project)? initialized,
    TResult Function(String imagePath, QuillController controller)?
        imageInserted,
    TResult Function(String videoPath, QuillController controller)?
        videoInserted,
    TResult Function()? editorAdded,
    TResult Function(int index)? editorAddedAt,
    TResult Function(TextEditorController controller)? editorFocused,
    TResult Function(int index)? editorRemovedAt,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(ImageInserted value) imageInserted,
    required TResult Function(VideoInserted value) videoInserted,
    required TResult Function(EditorAdded value) editorAdded,
    required TResult Function(EditorAddedAt value) editorAddedAt,
    required TResult Function(EditorFocused value) editorFocused,
    required TResult Function(EditorRemoved value) editorRemovedAt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(ImageInserted value)? imageInserted,
    TResult? Function(VideoInserted value)? videoInserted,
    TResult? Function(EditorAdded value)? editorAdded,
    TResult? Function(EditorAddedAt value)? editorAddedAt,
    TResult? Function(EditorFocused value)? editorFocused,
    TResult? Function(EditorRemoved value)? editorRemovedAt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(ImageInserted value)? imageInserted,
    TResult Function(VideoInserted value)? videoInserted,
    TResult Function(EditorAdded value)? editorAdded,
    TResult Function(EditorAddedAt value)? editorAddedAt,
    TResult Function(EditorFocused value)? editorFocused,
    TResult Function(EditorRemoved value)? editorRemovedAt,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextEditorEventCopyWith<$Res> {
  factory $TextEditorEventCopyWith(
          TextEditorEvent value, $Res Function(TextEditorEvent) then) =
      _$TextEditorEventCopyWithImpl<$Res, TextEditorEvent>;
}

/// @nodoc
class _$TextEditorEventCopyWithImpl<$Res, $Val extends TextEditorEvent>
    implements $TextEditorEventCopyWith<$Res> {
  _$TextEditorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TextEditorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Project project});

  $ProjectCopyWith<$Res> get project;
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$TextEditorEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextEditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project = null,
  }) {
    return _then(_$InitializedImpl(
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project,
    ));
  }

  /// Create a copy of TextEditorEvent
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

class _$InitializedImpl implements Initialized {
  const _$InitializedImpl({required this.project});

  @override
  final Project project;

  @override
  String toString() {
    return 'TextEditorEvent.initialized(project: $project)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.project, project) || other.project == project));
  }

  @override
  int get hashCode => Object.hash(runtimeType, project);

  /// Create a copy of TextEditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Project project) initialized,
    required TResult Function(String imagePath, QuillController controller)
        imageInserted,
    required TResult Function(String videoPath, QuillController controller)
        videoInserted,
    required TResult Function() editorAdded,
    required TResult Function(int index) editorAddedAt,
    required TResult Function(TextEditorController controller) editorFocused,
    required TResult Function(int index) editorRemovedAt,
  }) {
    return initialized(project);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Project project)? initialized,
    TResult? Function(String imagePath, QuillController controller)?
        imageInserted,
    TResult? Function(String videoPath, QuillController controller)?
        videoInserted,
    TResult? Function()? editorAdded,
    TResult? Function(int index)? editorAddedAt,
    TResult? Function(TextEditorController controller)? editorFocused,
    TResult? Function(int index)? editorRemovedAt,
  }) {
    return initialized?.call(project);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project project)? initialized,
    TResult Function(String imagePath, QuillController controller)?
        imageInserted,
    TResult Function(String videoPath, QuillController controller)?
        videoInserted,
    TResult Function()? editorAdded,
    TResult Function(int index)? editorAddedAt,
    TResult Function(TextEditorController controller)? editorFocused,
    TResult Function(int index)? editorRemovedAt,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(project);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(ImageInserted value) imageInserted,
    required TResult Function(VideoInserted value) videoInserted,
    required TResult Function(EditorAdded value) editorAdded,
    required TResult Function(EditorAddedAt value) editorAddedAt,
    required TResult Function(EditorFocused value) editorFocused,
    required TResult Function(EditorRemoved value) editorRemovedAt,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(ImageInserted value)? imageInserted,
    TResult? Function(VideoInserted value)? videoInserted,
    TResult? Function(EditorAdded value)? editorAdded,
    TResult? Function(EditorAddedAt value)? editorAddedAt,
    TResult? Function(EditorFocused value)? editorFocused,
    TResult? Function(EditorRemoved value)? editorRemovedAt,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(ImageInserted value)? imageInserted,
    TResult Function(VideoInserted value)? videoInserted,
    TResult Function(EditorAdded value)? editorAdded,
    TResult Function(EditorAddedAt value)? editorAddedAt,
    TResult Function(EditorFocused value)? editorFocused,
    TResult Function(EditorRemoved value)? editorRemovedAt,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements TextEditorEvent {
  const factory Initialized({required final Project project}) =
      _$InitializedImpl;

  Project get project;

  /// Create a copy of TextEditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageInsertedImplCopyWith<$Res> {
  factory _$$ImageInsertedImplCopyWith(
          _$ImageInsertedImpl value, $Res Function(_$ImageInsertedImpl) then) =
      __$$ImageInsertedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imagePath, QuillController controller});
}

/// @nodoc
class __$$ImageInsertedImplCopyWithImpl<$Res>
    extends _$TextEditorEventCopyWithImpl<$Res, _$ImageInsertedImpl>
    implements _$$ImageInsertedImplCopyWith<$Res> {
  __$$ImageInsertedImplCopyWithImpl(
      _$ImageInsertedImpl _value, $Res Function(_$ImageInsertedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextEditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? controller = null,
  }) {
    return _then(_$ImageInsertedImpl(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as QuillController,
    ));
  }
}

/// @nodoc

class _$ImageInsertedImpl implements ImageInserted {
  const _$ImageInsertedImpl(
      {required this.imagePath, required this.controller});

  @override
  final String imagePath;
  @override
  final QuillController controller;

  @override
  String toString() {
    return 'TextEditorEvent.imageInserted(imagePath: $imagePath, controller: $controller)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageInsertedImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath, controller);

  /// Create a copy of TextEditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageInsertedImplCopyWith<_$ImageInsertedImpl> get copyWith =>
      __$$ImageInsertedImplCopyWithImpl<_$ImageInsertedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Project project) initialized,
    required TResult Function(String imagePath, QuillController controller)
        imageInserted,
    required TResult Function(String videoPath, QuillController controller)
        videoInserted,
    required TResult Function() editorAdded,
    required TResult Function(int index) editorAddedAt,
    required TResult Function(TextEditorController controller) editorFocused,
    required TResult Function(int index) editorRemovedAt,
  }) {
    return imageInserted(imagePath, controller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Project project)? initialized,
    TResult? Function(String imagePath, QuillController controller)?
        imageInserted,
    TResult? Function(String videoPath, QuillController controller)?
        videoInserted,
    TResult? Function()? editorAdded,
    TResult? Function(int index)? editorAddedAt,
    TResult? Function(TextEditorController controller)? editorFocused,
    TResult? Function(int index)? editorRemovedAt,
  }) {
    return imageInserted?.call(imagePath, controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project project)? initialized,
    TResult Function(String imagePath, QuillController controller)?
        imageInserted,
    TResult Function(String videoPath, QuillController controller)?
        videoInserted,
    TResult Function()? editorAdded,
    TResult Function(int index)? editorAddedAt,
    TResult Function(TextEditorController controller)? editorFocused,
    TResult Function(int index)? editorRemovedAt,
    required TResult orElse(),
  }) {
    if (imageInserted != null) {
      return imageInserted(imagePath, controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(ImageInserted value) imageInserted,
    required TResult Function(VideoInserted value) videoInserted,
    required TResult Function(EditorAdded value) editorAdded,
    required TResult Function(EditorAddedAt value) editorAddedAt,
    required TResult Function(EditorFocused value) editorFocused,
    required TResult Function(EditorRemoved value) editorRemovedAt,
  }) {
    return imageInserted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(ImageInserted value)? imageInserted,
    TResult? Function(VideoInserted value)? videoInserted,
    TResult? Function(EditorAdded value)? editorAdded,
    TResult? Function(EditorAddedAt value)? editorAddedAt,
    TResult? Function(EditorFocused value)? editorFocused,
    TResult? Function(EditorRemoved value)? editorRemovedAt,
  }) {
    return imageInserted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(ImageInserted value)? imageInserted,
    TResult Function(VideoInserted value)? videoInserted,
    TResult Function(EditorAdded value)? editorAdded,
    TResult Function(EditorAddedAt value)? editorAddedAt,
    TResult Function(EditorFocused value)? editorFocused,
    TResult Function(EditorRemoved value)? editorRemovedAt,
    required TResult orElse(),
  }) {
    if (imageInserted != null) {
      return imageInserted(this);
    }
    return orElse();
  }
}

abstract class ImageInserted implements TextEditorEvent {
  const factory ImageInserted(
      {required final String imagePath,
      required final QuillController controller}) = _$ImageInsertedImpl;

  String get imagePath;
  QuillController get controller;

  /// Create a copy of TextEditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageInsertedImplCopyWith<_$ImageInsertedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VideoInsertedImplCopyWith<$Res> {
  factory _$$VideoInsertedImplCopyWith(
          _$VideoInsertedImpl value, $Res Function(_$VideoInsertedImpl) then) =
      __$$VideoInsertedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String videoPath, QuillController controller});
}

/// @nodoc
class __$$VideoInsertedImplCopyWithImpl<$Res>
    extends _$TextEditorEventCopyWithImpl<$Res, _$VideoInsertedImpl>
    implements _$$VideoInsertedImplCopyWith<$Res> {
  __$$VideoInsertedImplCopyWithImpl(
      _$VideoInsertedImpl _value, $Res Function(_$VideoInsertedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextEditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoPath = null,
    Object? controller = null,
  }) {
    return _then(_$VideoInsertedImpl(
      videoPath: null == videoPath
          ? _value.videoPath
          : videoPath // ignore: cast_nullable_to_non_nullable
              as String,
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as QuillController,
    ));
  }
}

/// @nodoc

class _$VideoInsertedImpl implements VideoInserted {
  const _$VideoInsertedImpl(
      {required this.videoPath, required this.controller});

  @override
  final String videoPath;
  @override
  final QuillController controller;

  @override
  String toString() {
    return 'TextEditorEvent.videoInserted(videoPath: $videoPath, controller: $controller)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoInsertedImpl &&
            (identical(other.videoPath, videoPath) ||
                other.videoPath == videoPath) &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoPath, controller);

  /// Create a copy of TextEditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoInsertedImplCopyWith<_$VideoInsertedImpl> get copyWith =>
      __$$VideoInsertedImplCopyWithImpl<_$VideoInsertedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Project project) initialized,
    required TResult Function(String imagePath, QuillController controller)
        imageInserted,
    required TResult Function(String videoPath, QuillController controller)
        videoInserted,
    required TResult Function() editorAdded,
    required TResult Function(int index) editorAddedAt,
    required TResult Function(TextEditorController controller) editorFocused,
    required TResult Function(int index) editorRemovedAt,
  }) {
    return videoInserted(videoPath, controller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Project project)? initialized,
    TResult? Function(String imagePath, QuillController controller)?
        imageInserted,
    TResult? Function(String videoPath, QuillController controller)?
        videoInserted,
    TResult? Function()? editorAdded,
    TResult? Function(int index)? editorAddedAt,
    TResult? Function(TextEditorController controller)? editorFocused,
    TResult? Function(int index)? editorRemovedAt,
  }) {
    return videoInserted?.call(videoPath, controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project project)? initialized,
    TResult Function(String imagePath, QuillController controller)?
        imageInserted,
    TResult Function(String videoPath, QuillController controller)?
        videoInserted,
    TResult Function()? editorAdded,
    TResult Function(int index)? editorAddedAt,
    TResult Function(TextEditorController controller)? editorFocused,
    TResult Function(int index)? editorRemovedAt,
    required TResult orElse(),
  }) {
    if (videoInserted != null) {
      return videoInserted(videoPath, controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(ImageInserted value) imageInserted,
    required TResult Function(VideoInserted value) videoInserted,
    required TResult Function(EditorAdded value) editorAdded,
    required TResult Function(EditorAddedAt value) editorAddedAt,
    required TResult Function(EditorFocused value) editorFocused,
    required TResult Function(EditorRemoved value) editorRemovedAt,
  }) {
    return videoInserted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(ImageInserted value)? imageInserted,
    TResult? Function(VideoInserted value)? videoInserted,
    TResult? Function(EditorAdded value)? editorAdded,
    TResult? Function(EditorAddedAt value)? editorAddedAt,
    TResult? Function(EditorFocused value)? editorFocused,
    TResult? Function(EditorRemoved value)? editorRemovedAt,
  }) {
    return videoInserted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(ImageInserted value)? imageInserted,
    TResult Function(VideoInserted value)? videoInserted,
    TResult Function(EditorAdded value)? editorAdded,
    TResult Function(EditorAddedAt value)? editorAddedAt,
    TResult Function(EditorFocused value)? editorFocused,
    TResult Function(EditorRemoved value)? editorRemovedAt,
    required TResult orElse(),
  }) {
    if (videoInserted != null) {
      return videoInserted(this);
    }
    return orElse();
  }
}

abstract class VideoInserted implements TextEditorEvent {
  const factory VideoInserted(
      {required final String videoPath,
      required final QuillController controller}) = _$VideoInsertedImpl;

  String get videoPath;
  QuillController get controller;

  /// Create a copy of TextEditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoInsertedImplCopyWith<_$VideoInsertedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditorAddedImplCopyWith<$Res> {
  factory _$$EditorAddedImplCopyWith(
          _$EditorAddedImpl value, $Res Function(_$EditorAddedImpl) then) =
      __$$EditorAddedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditorAddedImplCopyWithImpl<$Res>
    extends _$TextEditorEventCopyWithImpl<$Res, _$EditorAddedImpl>
    implements _$$EditorAddedImplCopyWith<$Res> {
  __$$EditorAddedImplCopyWithImpl(
      _$EditorAddedImpl _value, $Res Function(_$EditorAddedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextEditorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EditorAddedImpl implements EditorAdded {
  const _$EditorAddedImpl();

  @override
  String toString() {
    return 'TextEditorEvent.editorAdded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditorAddedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Project project) initialized,
    required TResult Function(String imagePath, QuillController controller)
        imageInserted,
    required TResult Function(String videoPath, QuillController controller)
        videoInserted,
    required TResult Function() editorAdded,
    required TResult Function(int index) editorAddedAt,
    required TResult Function(TextEditorController controller) editorFocused,
    required TResult Function(int index) editorRemovedAt,
  }) {
    return editorAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Project project)? initialized,
    TResult? Function(String imagePath, QuillController controller)?
        imageInserted,
    TResult? Function(String videoPath, QuillController controller)?
        videoInserted,
    TResult? Function()? editorAdded,
    TResult? Function(int index)? editorAddedAt,
    TResult? Function(TextEditorController controller)? editorFocused,
    TResult? Function(int index)? editorRemovedAt,
  }) {
    return editorAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project project)? initialized,
    TResult Function(String imagePath, QuillController controller)?
        imageInserted,
    TResult Function(String videoPath, QuillController controller)?
        videoInserted,
    TResult Function()? editorAdded,
    TResult Function(int index)? editorAddedAt,
    TResult Function(TextEditorController controller)? editorFocused,
    TResult Function(int index)? editorRemovedAt,
    required TResult orElse(),
  }) {
    if (editorAdded != null) {
      return editorAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(ImageInserted value) imageInserted,
    required TResult Function(VideoInserted value) videoInserted,
    required TResult Function(EditorAdded value) editorAdded,
    required TResult Function(EditorAddedAt value) editorAddedAt,
    required TResult Function(EditorFocused value) editorFocused,
    required TResult Function(EditorRemoved value) editorRemovedAt,
  }) {
    return editorAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(ImageInserted value)? imageInserted,
    TResult? Function(VideoInserted value)? videoInserted,
    TResult? Function(EditorAdded value)? editorAdded,
    TResult? Function(EditorAddedAt value)? editorAddedAt,
    TResult? Function(EditorFocused value)? editorFocused,
    TResult? Function(EditorRemoved value)? editorRemovedAt,
  }) {
    return editorAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(ImageInserted value)? imageInserted,
    TResult Function(VideoInserted value)? videoInserted,
    TResult Function(EditorAdded value)? editorAdded,
    TResult Function(EditorAddedAt value)? editorAddedAt,
    TResult Function(EditorFocused value)? editorFocused,
    TResult Function(EditorRemoved value)? editorRemovedAt,
    required TResult orElse(),
  }) {
    if (editorAdded != null) {
      return editorAdded(this);
    }
    return orElse();
  }
}

abstract class EditorAdded implements TextEditorEvent {
  const factory EditorAdded() = _$EditorAddedImpl;
}

/// @nodoc
abstract class _$$EditorAddedAtImplCopyWith<$Res> {
  factory _$$EditorAddedAtImplCopyWith(
          _$EditorAddedAtImpl value, $Res Function(_$EditorAddedAtImpl) then) =
      __$$EditorAddedAtImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$EditorAddedAtImplCopyWithImpl<$Res>
    extends _$TextEditorEventCopyWithImpl<$Res, _$EditorAddedAtImpl>
    implements _$$EditorAddedAtImplCopyWith<$Res> {
  __$$EditorAddedAtImplCopyWithImpl(
      _$EditorAddedAtImpl _value, $Res Function(_$EditorAddedAtImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextEditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$EditorAddedAtImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EditorAddedAtImpl implements EditorAddedAt {
  const _$EditorAddedAtImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'TextEditorEvent.editorAddedAt(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditorAddedAtImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of TextEditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditorAddedAtImplCopyWith<_$EditorAddedAtImpl> get copyWith =>
      __$$EditorAddedAtImplCopyWithImpl<_$EditorAddedAtImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Project project) initialized,
    required TResult Function(String imagePath, QuillController controller)
        imageInserted,
    required TResult Function(String videoPath, QuillController controller)
        videoInserted,
    required TResult Function() editorAdded,
    required TResult Function(int index) editorAddedAt,
    required TResult Function(TextEditorController controller) editorFocused,
    required TResult Function(int index) editorRemovedAt,
  }) {
    return editorAddedAt(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Project project)? initialized,
    TResult? Function(String imagePath, QuillController controller)?
        imageInserted,
    TResult? Function(String videoPath, QuillController controller)?
        videoInserted,
    TResult? Function()? editorAdded,
    TResult? Function(int index)? editorAddedAt,
    TResult? Function(TextEditorController controller)? editorFocused,
    TResult? Function(int index)? editorRemovedAt,
  }) {
    return editorAddedAt?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project project)? initialized,
    TResult Function(String imagePath, QuillController controller)?
        imageInserted,
    TResult Function(String videoPath, QuillController controller)?
        videoInserted,
    TResult Function()? editorAdded,
    TResult Function(int index)? editorAddedAt,
    TResult Function(TextEditorController controller)? editorFocused,
    TResult Function(int index)? editorRemovedAt,
    required TResult orElse(),
  }) {
    if (editorAddedAt != null) {
      return editorAddedAt(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(ImageInserted value) imageInserted,
    required TResult Function(VideoInserted value) videoInserted,
    required TResult Function(EditorAdded value) editorAdded,
    required TResult Function(EditorAddedAt value) editorAddedAt,
    required TResult Function(EditorFocused value) editorFocused,
    required TResult Function(EditorRemoved value) editorRemovedAt,
  }) {
    return editorAddedAt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(ImageInserted value)? imageInserted,
    TResult? Function(VideoInserted value)? videoInserted,
    TResult? Function(EditorAdded value)? editorAdded,
    TResult? Function(EditorAddedAt value)? editorAddedAt,
    TResult? Function(EditorFocused value)? editorFocused,
    TResult? Function(EditorRemoved value)? editorRemovedAt,
  }) {
    return editorAddedAt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(ImageInserted value)? imageInserted,
    TResult Function(VideoInserted value)? videoInserted,
    TResult Function(EditorAdded value)? editorAdded,
    TResult Function(EditorAddedAt value)? editorAddedAt,
    TResult Function(EditorFocused value)? editorFocused,
    TResult Function(EditorRemoved value)? editorRemovedAt,
    required TResult orElse(),
  }) {
    if (editorAddedAt != null) {
      return editorAddedAt(this);
    }
    return orElse();
  }
}

abstract class EditorAddedAt implements TextEditorEvent {
  const factory EditorAddedAt({required final int index}) = _$EditorAddedAtImpl;

  int get index;

  /// Create a copy of TextEditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditorAddedAtImplCopyWith<_$EditorAddedAtImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditorFocusedImplCopyWith<$Res> {
  factory _$$EditorFocusedImplCopyWith(
          _$EditorFocusedImpl value, $Res Function(_$EditorFocusedImpl) then) =
      __$$EditorFocusedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TextEditorController controller});
}

/// @nodoc
class __$$EditorFocusedImplCopyWithImpl<$Res>
    extends _$TextEditorEventCopyWithImpl<$Res, _$EditorFocusedImpl>
    implements _$$EditorFocusedImplCopyWith<$Res> {
  __$$EditorFocusedImplCopyWithImpl(
      _$EditorFocusedImpl _value, $Res Function(_$EditorFocusedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextEditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = null,
  }) {
    return _then(_$EditorFocusedImpl(
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as TextEditorController,
    ));
  }
}

/// @nodoc

class _$EditorFocusedImpl implements EditorFocused {
  const _$EditorFocusedImpl({required this.controller});

  @override
  final TextEditorController controller;

  @override
  String toString() {
    return 'TextEditorEvent.editorFocused(controller: $controller)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditorFocusedImpl &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controller);

  /// Create a copy of TextEditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditorFocusedImplCopyWith<_$EditorFocusedImpl> get copyWith =>
      __$$EditorFocusedImplCopyWithImpl<_$EditorFocusedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Project project) initialized,
    required TResult Function(String imagePath, QuillController controller)
        imageInserted,
    required TResult Function(String videoPath, QuillController controller)
        videoInserted,
    required TResult Function() editorAdded,
    required TResult Function(int index) editorAddedAt,
    required TResult Function(TextEditorController controller) editorFocused,
    required TResult Function(int index) editorRemovedAt,
  }) {
    return editorFocused(controller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Project project)? initialized,
    TResult? Function(String imagePath, QuillController controller)?
        imageInserted,
    TResult? Function(String videoPath, QuillController controller)?
        videoInserted,
    TResult? Function()? editorAdded,
    TResult? Function(int index)? editorAddedAt,
    TResult? Function(TextEditorController controller)? editorFocused,
    TResult? Function(int index)? editorRemovedAt,
  }) {
    return editorFocused?.call(controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project project)? initialized,
    TResult Function(String imagePath, QuillController controller)?
        imageInserted,
    TResult Function(String videoPath, QuillController controller)?
        videoInserted,
    TResult Function()? editorAdded,
    TResult Function(int index)? editorAddedAt,
    TResult Function(TextEditorController controller)? editorFocused,
    TResult Function(int index)? editorRemovedAt,
    required TResult orElse(),
  }) {
    if (editorFocused != null) {
      return editorFocused(controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(ImageInserted value) imageInserted,
    required TResult Function(VideoInserted value) videoInserted,
    required TResult Function(EditorAdded value) editorAdded,
    required TResult Function(EditorAddedAt value) editorAddedAt,
    required TResult Function(EditorFocused value) editorFocused,
    required TResult Function(EditorRemoved value) editorRemovedAt,
  }) {
    return editorFocused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(ImageInserted value)? imageInserted,
    TResult? Function(VideoInserted value)? videoInserted,
    TResult? Function(EditorAdded value)? editorAdded,
    TResult? Function(EditorAddedAt value)? editorAddedAt,
    TResult? Function(EditorFocused value)? editorFocused,
    TResult? Function(EditorRemoved value)? editorRemovedAt,
  }) {
    return editorFocused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(ImageInserted value)? imageInserted,
    TResult Function(VideoInserted value)? videoInserted,
    TResult Function(EditorAdded value)? editorAdded,
    TResult Function(EditorAddedAt value)? editorAddedAt,
    TResult Function(EditorFocused value)? editorFocused,
    TResult Function(EditorRemoved value)? editorRemovedAt,
    required TResult orElse(),
  }) {
    if (editorFocused != null) {
      return editorFocused(this);
    }
    return orElse();
  }
}

abstract class EditorFocused implements TextEditorEvent {
  const factory EditorFocused(
      {required final TextEditorController controller}) = _$EditorFocusedImpl;

  TextEditorController get controller;

  /// Create a copy of TextEditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditorFocusedImplCopyWith<_$EditorFocusedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditorRemovedImplCopyWith<$Res> {
  factory _$$EditorRemovedImplCopyWith(
          _$EditorRemovedImpl value, $Res Function(_$EditorRemovedImpl) then) =
      __$$EditorRemovedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$EditorRemovedImplCopyWithImpl<$Res>
    extends _$TextEditorEventCopyWithImpl<$Res, _$EditorRemovedImpl>
    implements _$$EditorRemovedImplCopyWith<$Res> {
  __$$EditorRemovedImplCopyWithImpl(
      _$EditorRemovedImpl _value, $Res Function(_$EditorRemovedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextEditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$EditorRemovedImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EditorRemovedImpl implements EditorRemoved {
  const _$EditorRemovedImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'TextEditorEvent.editorRemovedAt(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditorRemovedImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of TextEditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditorRemovedImplCopyWith<_$EditorRemovedImpl> get copyWith =>
      __$$EditorRemovedImplCopyWithImpl<_$EditorRemovedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Project project) initialized,
    required TResult Function(String imagePath, QuillController controller)
        imageInserted,
    required TResult Function(String videoPath, QuillController controller)
        videoInserted,
    required TResult Function() editorAdded,
    required TResult Function(int index) editorAddedAt,
    required TResult Function(TextEditorController controller) editorFocused,
    required TResult Function(int index) editorRemovedAt,
  }) {
    return editorRemovedAt(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Project project)? initialized,
    TResult? Function(String imagePath, QuillController controller)?
        imageInserted,
    TResult? Function(String videoPath, QuillController controller)?
        videoInserted,
    TResult? Function()? editorAdded,
    TResult? Function(int index)? editorAddedAt,
    TResult? Function(TextEditorController controller)? editorFocused,
    TResult? Function(int index)? editorRemovedAt,
  }) {
    return editorRemovedAt?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project project)? initialized,
    TResult Function(String imagePath, QuillController controller)?
        imageInserted,
    TResult Function(String videoPath, QuillController controller)?
        videoInserted,
    TResult Function()? editorAdded,
    TResult Function(int index)? editorAddedAt,
    TResult Function(TextEditorController controller)? editorFocused,
    TResult Function(int index)? editorRemovedAt,
    required TResult orElse(),
  }) {
    if (editorRemovedAt != null) {
      return editorRemovedAt(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(ImageInserted value) imageInserted,
    required TResult Function(VideoInserted value) videoInserted,
    required TResult Function(EditorAdded value) editorAdded,
    required TResult Function(EditorAddedAt value) editorAddedAt,
    required TResult Function(EditorFocused value) editorFocused,
    required TResult Function(EditorRemoved value) editorRemovedAt,
  }) {
    return editorRemovedAt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(ImageInserted value)? imageInserted,
    TResult? Function(VideoInserted value)? videoInserted,
    TResult? Function(EditorAdded value)? editorAdded,
    TResult? Function(EditorAddedAt value)? editorAddedAt,
    TResult? Function(EditorFocused value)? editorFocused,
    TResult? Function(EditorRemoved value)? editorRemovedAt,
  }) {
    return editorRemovedAt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(ImageInserted value)? imageInserted,
    TResult Function(VideoInserted value)? videoInserted,
    TResult Function(EditorAdded value)? editorAdded,
    TResult Function(EditorAddedAt value)? editorAddedAt,
    TResult Function(EditorFocused value)? editorFocused,
    TResult Function(EditorRemoved value)? editorRemovedAt,
    required TResult orElse(),
  }) {
    if (editorRemovedAt != null) {
      return editorRemovedAt(this);
    }
    return orElse();
  }
}

abstract class EditorRemoved implements TextEditorEvent {
  const factory EditorRemoved({required final int index}) = _$EditorRemovedImpl;

  int get index;

  /// Create a copy of TextEditorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditorRemovedImplCopyWith<_$EditorRemovedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TextEditorState {
  List<TextEditorController> get controllers =>
      throw _privateConstructorUsedError;
  TextEditorController? get descriptionController =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        initial,
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        loaded,
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        deleted,
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        loading,
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        normal,
    required TResult Function(
            String errMessage,
            List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        initial,
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        loaded,
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        deleted,
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        loading,
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        normal,
    TResult? Function(String errMessage, List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        initial,
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        loaded,
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        deleted,
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        loading,
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        normal,
    TResult Function(String errMessage, List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Normal value) normal,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Normal value)? normal,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Loading value)? loading,
    TResult Function(_Normal value)? normal,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of TextEditorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TextEditorStateCopyWith<TextEditorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextEditorStateCopyWith<$Res> {
  factory $TextEditorStateCopyWith(
          TextEditorState value, $Res Function(TextEditorState) then) =
      _$TextEditorStateCopyWithImpl<$Res, TextEditorState>;
  @useResult
  $Res call(
      {List<TextEditorController> controllers,
      TextEditorController? descriptionController});
}

/// @nodoc
class _$TextEditorStateCopyWithImpl<$Res, $Val extends TextEditorState>
    implements $TextEditorStateCopyWith<$Res> {
  _$TextEditorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TextEditorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controllers = null,
    Object? descriptionController = freezed,
  }) {
    return _then(_value.copyWith(
      controllers: null == controllers
          ? _value.controllers
          : controllers // ignore: cast_nullable_to_non_nullable
              as List<TextEditorController>,
      descriptionController: freezed == descriptionController
          ? _value.descriptionController
          : descriptionController // ignore: cast_nullable_to_non_nullable
              as TextEditorController?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $TextEditorStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TextEditorController> controllers,
      TextEditorController? descriptionController});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TextEditorStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextEditorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controllers = null,
    Object? descriptionController = freezed,
  }) {
    return _then(_$InitialImpl(
      controllers: null == controllers
          ? _value._controllers
          : controllers // ignore: cast_nullable_to_non_nullable
              as List<TextEditorController>,
      descriptionController: freezed == descriptionController
          ? _value.descriptionController
          : descriptionController // ignore: cast_nullable_to_non_nullable
              as TextEditorController?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {final List<TextEditorController> controllers = const [],
      this.descriptionController})
      : _controllers = controllers;

  final List<TextEditorController> _controllers;
  @override
  @JsonKey()
  List<TextEditorController> get controllers {
    if (_controllers is EqualUnmodifiableListView) return _controllers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_controllers);
  }

  @override
  final TextEditorController? descriptionController;

  @override
  String toString() {
    return 'TextEditorState.initial(controllers: $controllers, descriptionController: $descriptionController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._controllers, _controllers) &&
            (identical(other.descriptionController, descriptionController) ||
                other.descriptionController == descriptionController));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_controllers), descriptionController);

  /// Create a copy of TextEditorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        initial,
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        loaded,
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        deleted,
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        loading,
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        normal,
    required TResult Function(
            String errMessage,
            List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        failed,
  }) {
    return initial(controllers, descriptionController);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        initial,
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        loaded,
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        deleted,
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        loading,
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        normal,
    TResult? Function(String errMessage, List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        failed,
  }) {
    return initial?.call(controllers, descriptionController);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        initial,
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        loaded,
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        deleted,
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        loading,
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        normal,
    TResult Function(String errMessage, List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(controllers, descriptionController);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Normal value) normal,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Normal value)? normal,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Loading value)? loading,
    TResult Function(_Normal value)? normal,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TextEditorState {
  const factory _Initial(
      {final List<TextEditorController> controllers,
      final TextEditorController? descriptionController}) = _$InitialImpl;

  @override
  List<TextEditorController> get controllers;
  @override
  TextEditorController? get descriptionController;

  /// Create a copy of TextEditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res>
    implements $TextEditorStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TextEditorController> controllers,
      TextEditorController? descriptionController});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$TextEditorStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextEditorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controllers = null,
    Object? descriptionController = freezed,
  }) {
    return _then(_$LoadedImpl(
      controllers: null == controllers
          ? _value._controllers
          : controllers // ignore: cast_nullable_to_non_nullable
              as List<TextEditorController>,
      descriptionController: freezed == descriptionController
          ? _value.descriptionController
          : descriptionController // ignore: cast_nullable_to_non_nullable
              as TextEditorController?,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {final List<TextEditorController> controllers = const [],
      this.descriptionController})
      : _controllers = controllers;

  final List<TextEditorController> _controllers;
  @override
  @JsonKey()
  List<TextEditorController> get controllers {
    if (_controllers is EqualUnmodifiableListView) return _controllers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_controllers);
  }

  @override
  final TextEditorController? descriptionController;

  @override
  String toString() {
    return 'TextEditorState.loaded(controllers: $controllers, descriptionController: $descriptionController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._controllers, _controllers) &&
            (identical(other.descriptionController, descriptionController) ||
                other.descriptionController == descriptionController));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_controllers), descriptionController);

  /// Create a copy of TextEditorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        initial,
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        loaded,
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        deleted,
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        loading,
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        normal,
    required TResult Function(
            String errMessage,
            List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        failed,
  }) {
    return loaded(controllers, descriptionController);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        initial,
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        loaded,
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        deleted,
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        loading,
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        normal,
    TResult? Function(String errMessage, List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        failed,
  }) {
    return loaded?.call(controllers, descriptionController);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        initial,
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        loaded,
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        deleted,
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        loading,
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        normal,
    TResult Function(String errMessage, List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(controllers, descriptionController);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Normal value) normal,
    required TResult Function(_Failed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Normal value)? normal,
    TResult? Function(_Failed value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Loading value)? loading,
    TResult Function(_Normal value)? normal,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements TextEditorState {
  const factory _Loaded(
      {final List<TextEditorController> controllers,
      final TextEditorController? descriptionController}) = _$LoadedImpl;

  @override
  List<TextEditorController> get controllers;
  @override
  TextEditorController? get descriptionController;

  /// Create a copy of TextEditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletedImplCopyWith<$Res>
    implements $TextEditorStateCopyWith<$Res> {
  factory _$$DeletedImplCopyWith(
          _$DeletedImpl value, $Res Function(_$DeletedImpl) then) =
      __$$DeletedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TextEditorController> controllers,
      TextEditorController? descriptionController});
}

/// @nodoc
class __$$DeletedImplCopyWithImpl<$Res>
    extends _$TextEditorStateCopyWithImpl<$Res, _$DeletedImpl>
    implements _$$DeletedImplCopyWith<$Res> {
  __$$DeletedImplCopyWithImpl(
      _$DeletedImpl _value, $Res Function(_$DeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextEditorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controllers = null,
    Object? descriptionController = freezed,
  }) {
    return _then(_$DeletedImpl(
      controllers: null == controllers
          ? _value._controllers
          : controllers // ignore: cast_nullable_to_non_nullable
              as List<TextEditorController>,
      descriptionController: freezed == descriptionController
          ? _value.descriptionController
          : descriptionController // ignore: cast_nullable_to_non_nullable
              as TextEditorController?,
    ));
  }
}

/// @nodoc

class _$DeletedImpl implements _Deleted {
  const _$DeletedImpl(
      {final List<TextEditorController> controllers = const [],
      this.descriptionController})
      : _controllers = controllers;

  final List<TextEditorController> _controllers;
  @override
  @JsonKey()
  List<TextEditorController> get controllers {
    if (_controllers is EqualUnmodifiableListView) return _controllers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_controllers);
  }

  @override
  final TextEditorController? descriptionController;

  @override
  String toString() {
    return 'TextEditorState.deleted(controllers: $controllers, descriptionController: $descriptionController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletedImpl &&
            const DeepCollectionEquality()
                .equals(other._controllers, _controllers) &&
            (identical(other.descriptionController, descriptionController) ||
                other.descriptionController == descriptionController));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_controllers), descriptionController);

  /// Create a copy of TextEditorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      __$$DeletedImplCopyWithImpl<_$DeletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        initial,
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        loaded,
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        deleted,
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        loading,
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        normal,
    required TResult Function(
            String errMessage,
            List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        failed,
  }) {
    return deleted(controllers, descriptionController);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        initial,
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        loaded,
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        deleted,
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        loading,
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        normal,
    TResult? Function(String errMessage, List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        failed,
  }) {
    return deleted?.call(controllers, descriptionController);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        initial,
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        loaded,
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        deleted,
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        loading,
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        normal,
    TResult Function(String errMessage, List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        failed,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(controllers, descriptionController);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Normal value) normal,
    required TResult Function(_Failed value) failed,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Normal value)? normal,
    TResult? Function(_Failed value)? failed,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Loading value)? loading,
    TResult Function(_Normal value)? normal,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements TextEditorState {
  const factory _Deleted(
      {final List<TextEditorController> controllers,
      final TextEditorController? descriptionController}) = _$DeletedImpl;

  @override
  List<TextEditorController> get controllers;
  @override
  TextEditorController? get descriptionController;

  /// Create a copy of TextEditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $TextEditorStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TextEditorController> controllers,
      TextEditorController? descriptionController});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$TextEditorStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextEditorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controllers = null,
    Object? descriptionController = freezed,
  }) {
    return _then(_$LoadingImpl(
      controllers: null == controllers
          ? _value._controllers
          : controllers // ignore: cast_nullable_to_non_nullable
              as List<TextEditorController>,
      descriptionController: freezed == descriptionController
          ? _value.descriptionController
          : descriptionController // ignore: cast_nullable_to_non_nullable
              as TextEditorController?,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(
      {final List<TextEditorController> controllers = const [],
      this.descriptionController})
      : _controllers = controllers;

  final List<TextEditorController> _controllers;
  @override
  @JsonKey()
  List<TextEditorController> get controllers {
    if (_controllers is EqualUnmodifiableListView) return _controllers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_controllers);
  }

  @override
  final TextEditorController? descriptionController;

  @override
  String toString() {
    return 'TextEditorState.loading(controllers: $controllers, descriptionController: $descriptionController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            const DeepCollectionEquality()
                .equals(other._controllers, _controllers) &&
            (identical(other.descriptionController, descriptionController) ||
                other.descriptionController == descriptionController));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_controllers), descriptionController);

  /// Create a copy of TextEditorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        initial,
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        loaded,
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        deleted,
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        loading,
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        normal,
    required TResult Function(
            String errMessage,
            List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        failed,
  }) {
    return loading(controllers, descriptionController);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        initial,
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        loaded,
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        deleted,
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        loading,
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        normal,
    TResult? Function(String errMessage, List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        failed,
  }) {
    return loading?.call(controllers, descriptionController);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        initial,
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        loaded,
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        deleted,
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        loading,
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        normal,
    TResult Function(String errMessage, List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(controllers, descriptionController);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Normal value) normal,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Normal value)? normal,
    TResult? Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Loading value)? loading,
    TResult Function(_Normal value)? normal,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TextEditorState {
  const factory _Loading(
      {final List<TextEditorController> controllers,
      final TextEditorController? descriptionController}) = _$LoadingImpl;

  @override
  List<TextEditorController> get controllers;
  @override
  TextEditorController? get descriptionController;

  /// Create a copy of TextEditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NormalImplCopyWith<$Res>
    implements $TextEditorStateCopyWith<$Res> {
  factory _$$NormalImplCopyWith(
          _$NormalImpl value, $Res Function(_$NormalImpl) then) =
      __$$NormalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TextEditorController> controllers,
      TextEditorController? descriptionController});
}

/// @nodoc
class __$$NormalImplCopyWithImpl<$Res>
    extends _$TextEditorStateCopyWithImpl<$Res, _$NormalImpl>
    implements _$$NormalImplCopyWith<$Res> {
  __$$NormalImplCopyWithImpl(
      _$NormalImpl _value, $Res Function(_$NormalImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextEditorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controllers = null,
    Object? descriptionController = freezed,
  }) {
    return _then(_$NormalImpl(
      controllers: null == controllers
          ? _value._controllers
          : controllers // ignore: cast_nullable_to_non_nullable
              as List<TextEditorController>,
      descriptionController: freezed == descriptionController
          ? _value.descriptionController
          : descriptionController // ignore: cast_nullable_to_non_nullable
              as TextEditorController?,
    ));
  }
}

/// @nodoc

class _$NormalImpl implements _Normal {
  const _$NormalImpl(
      {final List<TextEditorController> controllers = const [],
      this.descriptionController})
      : _controllers = controllers;

  final List<TextEditorController> _controllers;
  @override
  @JsonKey()
  List<TextEditorController> get controllers {
    if (_controllers is EqualUnmodifiableListView) return _controllers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_controllers);
  }

  @override
  final TextEditorController? descriptionController;

  @override
  String toString() {
    return 'TextEditorState.normal(controllers: $controllers, descriptionController: $descriptionController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NormalImpl &&
            const DeepCollectionEquality()
                .equals(other._controllers, _controllers) &&
            (identical(other.descriptionController, descriptionController) ||
                other.descriptionController == descriptionController));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_controllers), descriptionController);

  /// Create a copy of TextEditorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NormalImplCopyWith<_$NormalImpl> get copyWith =>
      __$$NormalImplCopyWithImpl<_$NormalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        initial,
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        loaded,
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        deleted,
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        loading,
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        normal,
    required TResult Function(
            String errMessage,
            List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        failed,
  }) {
    return normal(controllers, descriptionController);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        initial,
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        loaded,
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        deleted,
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        loading,
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        normal,
    TResult? Function(String errMessage, List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        failed,
  }) {
    return normal?.call(controllers, descriptionController);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        initial,
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        loaded,
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        deleted,
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        loading,
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        normal,
    TResult Function(String errMessage, List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        failed,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(controllers, descriptionController);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Normal value) normal,
    required TResult Function(_Failed value) failed,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Normal value)? normal,
    TResult? Function(_Failed value)? failed,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Loading value)? loading,
    TResult Function(_Normal value)? normal,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }
}

abstract class _Normal implements TextEditorState {
  const factory _Normal(
      {final List<TextEditorController> controllers,
      final TextEditorController? descriptionController}) = _$NormalImpl;

  @override
  List<TextEditorController> get controllers;
  @override
  TextEditorController? get descriptionController;

  /// Create a copy of TextEditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NormalImplCopyWith<_$NormalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res>
    implements $TextEditorStateCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String errMessage,
      List<TextEditorController> controllers,
      TextEditorController? descriptionController});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$TextEditorStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextEditorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errMessage = null,
    Object? controllers = null,
    Object? descriptionController = freezed,
  }) {
    return _then(_$FailedImpl(
      errMessage: null == errMessage
          ? _value.errMessage
          : errMessage // ignore: cast_nullable_to_non_nullable
              as String,
      controllers: null == controllers
          ? _value._controllers
          : controllers // ignore: cast_nullable_to_non_nullable
              as List<TextEditorController>,
      descriptionController: freezed == descriptionController
          ? _value.descriptionController
          : descriptionController // ignore: cast_nullable_to_non_nullable
              as TextEditorController?,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(
      {required this.errMessage,
      final List<TextEditorController> controllers = const [],
      this.descriptionController})
      : _controllers = controllers;

  @override
  final String errMessage;
  final List<TextEditorController> _controllers;
  @override
  @JsonKey()
  List<TextEditorController> get controllers {
    if (_controllers is EqualUnmodifiableListView) return _controllers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_controllers);
  }

  @override
  final TextEditorController? descriptionController;

  @override
  String toString() {
    return 'TextEditorState.failed(errMessage: $errMessage, controllers: $controllers, descriptionController: $descriptionController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.errMessage, errMessage) ||
                other.errMessage == errMessage) &&
            const DeepCollectionEquality()
                .equals(other._controllers, _controllers) &&
            (identical(other.descriptionController, descriptionController) ||
                other.descriptionController == descriptionController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errMessage,
      const DeepCollectionEquality().hash(_controllers), descriptionController);

  /// Create a copy of TextEditorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        initial,
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        loaded,
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        deleted,
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        loading,
    required TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        normal,
    required TResult Function(
            String errMessage,
            List<TextEditorController> controllers,
            TextEditorController? descriptionController)
        failed,
  }) {
    return failed(errMessage, controllers, descriptionController);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        initial,
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        loaded,
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        deleted,
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        loading,
    TResult? Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        normal,
    TResult? Function(String errMessage, List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        failed,
  }) {
    return failed?.call(errMessage, controllers, descriptionController);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        initial,
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        loaded,
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        deleted,
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        loading,
    TResult Function(List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        normal,
    TResult Function(String errMessage, List<TextEditorController> controllers,
            TextEditorController? descriptionController)?
        failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(errMessage, controllers, descriptionController);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Normal value) normal,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Normal value)? normal,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Loading value)? loading,
    TResult Function(_Normal value)? normal,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements TextEditorState {
  const factory _Failed(
      {required final String errMessage,
      final List<TextEditorController> controllers,
      final TextEditorController? descriptionController}) = _$FailedImpl;

  String get errMessage;
  @override
  List<TextEditorController> get controllers;
  @override
  TextEditorController? get descriptionController;

  /// Create a copy of TextEditorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
