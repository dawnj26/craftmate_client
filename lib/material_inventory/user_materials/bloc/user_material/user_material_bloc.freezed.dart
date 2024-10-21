// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_material_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserMaterialEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reload,
    required TResult Function(int materialId) deleteMaterial,
    required TResult Function(List<int> materialIds) deleteMaterials,
    required TResult Function(int? categoryId) categoryChanged,
    required TResult Function(MaterialSort sort, SortOrder order) sortChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? reload,
    TResult? Function(int materialId)? deleteMaterial,
    TResult? Function(List<int> materialIds)? deleteMaterials,
    TResult? Function(int? categoryId)? categoryChanged,
    TResult? Function(MaterialSort sort, SortOrder order)? sortChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reload,
    TResult Function(int materialId)? deleteMaterial,
    TResult Function(List<int> materialIds)? deleteMaterials,
    TResult Function(int? categoryId)? categoryChanged,
    TResult Function(MaterialSort sort, SortOrder order)? sortChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reload value) reload,
    required TResult Function(_DeleteMaterial value) deleteMaterial,
    required TResult Function(_DeleteMaterials value) deleteMaterials,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_SortChanged value) sortChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_DeleteMaterial value)? deleteMaterial,
    TResult? Function(_DeleteMaterials value)? deleteMaterials,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_SortChanged value)? sortChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reload value)? reload,
    TResult Function(_DeleteMaterial value)? deleteMaterial,
    TResult Function(_DeleteMaterials value)? deleteMaterials,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_SortChanged value)? sortChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserMaterialEventCopyWith<$Res> {
  factory $UserMaterialEventCopyWith(
          UserMaterialEvent value, $Res Function(UserMaterialEvent) then) =
      _$UserMaterialEventCopyWithImpl<$Res, UserMaterialEvent>;
}

/// @nodoc
class _$UserMaterialEventCopyWithImpl<$Res, $Val extends UserMaterialEvent>
    implements $UserMaterialEventCopyWith<$Res> {
  _$UserMaterialEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserMaterialEvent
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
    extends _$UserMaterialEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserMaterialEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'UserMaterialEvent.started()';
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
    required TResult Function() reload,
    required TResult Function(int materialId) deleteMaterial,
    required TResult Function(List<int> materialIds) deleteMaterials,
    required TResult Function(int? categoryId) categoryChanged,
    required TResult Function(MaterialSort sort, SortOrder order) sortChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? reload,
    TResult? Function(int materialId)? deleteMaterial,
    TResult? Function(List<int> materialIds)? deleteMaterials,
    TResult? Function(int? categoryId)? categoryChanged,
    TResult? Function(MaterialSort sort, SortOrder order)? sortChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reload,
    TResult Function(int materialId)? deleteMaterial,
    TResult Function(List<int> materialIds)? deleteMaterials,
    TResult Function(int? categoryId)? categoryChanged,
    TResult Function(MaterialSort sort, SortOrder order)? sortChanged,
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
    required TResult Function(_Reload value) reload,
    required TResult Function(_DeleteMaterial value) deleteMaterial,
    required TResult Function(_DeleteMaterials value) deleteMaterials,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_SortChanged value) sortChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_DeleteMaterial value)? deleteMaterial,
    TResult? Function(_DeleteMaterials value)? deleteMaterials,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_SortChanged value)? sortChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reload value)? reload,
    TResult Function(_DeleteMaterial value)? deleteMaterial,
    TResult Function(_DeleteMaterials value)? deleteMaterials,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_SortChanged value)? sortChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UserMaterialEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ReloadImplCopyWith<$Res> {
  factory _$$ReloadImplCopyWith(
          _$ReloadImpl value, $Res Function(_$ReloadImpl) then) =
      __$$ReloadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReloadImplCopyWithImpl<$Res>
    extends _$UserMaterialEventCopyWithImpl<$Res, _$ReloadImpl>
    implements _$$ReloadImplCopyWith<$Res> {
  __$$ReloadImplCopyWithImpl(
      _$ReloadImpl _value, $Res Function(_$ReloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserMaterialEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ReloadImpl implements _Reload {
  const _$ReloadImpl();

  @override
  String toString() {
    return 'UserMaterialEvent.reload()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReloadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reload,
    required TResult Function(int materialId) deleteMaterial,
    required TResult Function(List<int> materialIds) deleteMaterials,
    required TResult Function(int? categoryId) categoryChanged,
    required TResult Function(MaterialSort sort, SortOrder order) sortChanged,
  }) {
    return reload();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? reload,
    TResult? Function(int materialId)? deleteMaterial,
    TResult? Function(List<int> materialIds)? deleteMaterials,
    TResult? Function(int? categoryId)? categoryChanged,
    TResult? Function(MaterialSort sort, SortOrder order)? sortChanged,
  }) {
    return reload?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reload,
    TResult Function(int materialId)? deleteMaterial,
    TResult Function(List<int> materialIds)? deleteMaterials,
    TResult Function(int? categoryId)? categoryChanged,
    TResult Function(MaterialSort sort, SortOrder order)? sortChanged,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reload value) reload,
    required TResult Function(_DeleteMaterial value) deleteMaterial,
    required TResult Function(_DeleteMaterials value) deleteMaterials,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_SortChanged value) sortChanged,
  }) {
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_DeleteMaterial value)? deleteMaterial,
    TResult? Function(_DeleteMaterials value)? deleteMaterials,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_SortChanged value)? sortChanged,
  }) {
    return reload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reload value)? reload,
    TResult Function(_DeleteMaterial value)? deleteMaterial,
    TResult Function(_DeleteMaterials value)? deleteMaterials,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_SortChanged value)? sortChanged,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class _Reload implements UserMaterialEvent {
  const factory _Reload() = _$ReloadImpl;
}

/// @nodoc
abstract class _$$DeleteMaterialImplCopyWith<$Res> {
  factory _$$DeleteMaterialImplCopyWith(_$DeleteMaterialImpl value,
          $Res Function(_$DeleteMaterialImpl) then) =
      __$$DeleteMaterialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int materialId});
}

/// @nodoc
class __$$DeleteMaterialImplCopyWithImpl<$Res>
    extends _$UserMaterialEventCopyWithImpl<$Res, _$DeleteMaterialImpl>
    implements _$$DeleteMaterialImplCopyWith<$Res> {
  __$$DeleteMaterialImplCopyWithImpl(
      _$DeleteMaterialImpl _value, $Res Function(_$DeleteMaterialImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserMaterialEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materialId = null,
  }) {
    return _then(_$DeleteMaterialImpl(
      materialId: null == materialId
          ? _value.materialId
          : materialId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteMaterialImpl implements _DeleteMaterial {
  const _$DeleteMaterialImpl({required this.materialId});

  @override
  final int materialId;

  @override
  String toString() {
    return 'UserMaterialEvent.deleteMaterial(materialId: $materialId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteMaterialImpl &&
            (identical(other.materialId, materialId) ||
                other.materialId == materialId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, materialId);

  /// Create a copy of UserMaterialEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteMaterialImplCopyWith<_$DeleteMaterialImpl> get copyWith =>
      __$$DeleteMaterialImplCopyWithImpl<_$DeleteMaterialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reload,
    required TResult Function(int materialId) deleteMaterial,
    required TResult Function(List<int> materialIds) deleteMaterials,
    required TResult Function(int? categoryId) categoryChanged,
    required TResult Function(MaterialSort sort, SortOrder order) sortChanged,
  }) {
    return deleteMaterial(materialId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? reload,
    TResult? Function(int materialId)? deleteMaterial,
    TResult? Function(List<int> materialIds)? deleteMaterials,
    TResult? Function(int? categoryId)? categoryChanged,
    TResult? Function(MaterialSort sort, SortOrder order)? sortChanged,
  }) {
    return deleteMaterial?.call(materialId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reload,
    TResult Function(int materialId)? deleteMaterial,
    TResult Function(List<int> materialIds)? deleteMaterials,
    TResult Function(int? categoryId)? categoryChanged,
    TResult Function(MaterialSort sort, SortOrder order)? sortChanged,
    required TResult orElse(),
  }) {
    if (deleteMaterial != null) {
      return deleteMaterial(materialId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reload value) reload,
    required TResult Function(_DeleteMaterial value) deleteMaterial,
    required TResult Function(_DeleteMaterials value) deleteMaterials,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_SortChanged value) sortChanged,
  }) {
    return deleteMaterial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_DeleteMaterial value)? deleteMaterial,
    TResult? Function(_DeleteMaterials value)? deleteMaterials,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_SortChanged value)? sortChanged,
  }) {
    return deleteMaterial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reload value)? reload,
    TResult Function(_DeleteMaterial value)? deleteMaterial,
    TResult Function(_DeleteMaterials value)? deleteMaterials,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_SortChanged value)? sortChanged,
    required TResult orElse(),
  }) {
    if (deleteMaterial != null) {
      return deleteMaterial(this);
    }
    return orElse();
  }
}

abstract class _DeleteMaterial implements UserMaterialEvent {
  const factory _DeleteMaterial({required final int materialId}) =
      _$DeleteMaterialImpl;

  int get materialId;

  /// Create a copy of UserMaterialEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteMaterialImplCopyWith<_$DeleteMaterialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteMaterialsImplCopyWith<$Res> {
  factory _$$DeleteMaterialsImplCopyWith(_$DeleteMaterialsImpl value,
          $Res Function(_$DeleteMaterialsImpl) then) =
      __$$DeleteMaterialsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> materialIds});
}

/// @nodoc
class __$$DeleteMaterialsImplCopyWithImpl<$Res>
    extends _$UserMaterialEventCopyWithImpl<$Res, _$DeleteMaterialsImpl>
    implements _$$DeleteMaterialsImplCopyWith<$Res> {
  __$$DeleteMaterialsImplCopyWithImpl(
      _$DeleteMaterialsImpl _value, $Res Function(_$DeleteMaterialsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserMaterialEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materialIds = null,
  }) {
    return _then(_$DeleteMaterialsImpl(
      materialIds: null == materialIds
          ? _value._materialIds
          : materialIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$DeleteMaterialsImpl implements _DeleteMaterials {
  const _$DeleteMaterialsImpl({required final List<int> materialIds})
      : _materialIds = materialIds;

  final List<int> _materialIds;
  @override
  List<int> get materialIds {
    if (_materialIds is EqualUnmodifiableListView) return _materialIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_materialIds);
  }

  @override
  String toString() {
    return 'UserMaterialEvent.deleteMaterials(materialIds: $materialIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteMaterialsImpl &&
            const DeepCollectionEquality()
                .equals(other._materialIds, _materialIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_materialIds));

  /// Create a copy of UserMaterialEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteMaterialsImplCopyWith<_$DeleteMaterialsImpl> get copyWith =>
      __$$DeleteMaterialsImplCopyWithImpl<_$DeleteMaterialsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reload,
    required TResult Function(int materialId) deleteMaterial,
    required TResult Function(List<int> materialIds) deleteMaterials,
    required TResult Function(int? categoryId) categoryChanged,
    required TResult Function(MaterialSort sort, SortOrder order) sortChanged,
  }) {
    return deleteMaterials(materialIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? reload,
    TResult? Function(int materialId)? deleteMaterial,
    TResult? Function(List<int> materialIds)? deleteMaterials,
    TResult? Function(int? categoryId)? categoryChanged,
    TResult? Function(MaterialSort sort, SortOrder order)? sortChanged,
  }) {
    return deleteMaterials?.call(materialIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reload,
    TResult Function(int materialId)? deleteMaterial,
    TResult Function(List<int> materialIds)? deleteMaterials,
    TResult Function(int? categoryId)? categoryChanged,
    TResult Function(MaterialSort sort, SortOrder order)? sortChanged,
    required TResult orElse(),
  }) {
    if (deleteMaterials != null) {
      return deleteMaterials(materialIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reload value) reload,
    required TResult Function(_DeleteMaterial value) deleteMaterial,
    required TResult Function(_DeleteMaterials value) deleteMaterials,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_SortChanged value) sortChanged,
  }) {
    return deleteMaterials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_DeleteMaterial value)? deleteMaterial,
    TResult? Function(_DeleteMaterials value)? deleteMaterials,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_SortChanged value)? sortChanged,
  }) {
    return deleteMaterials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reload value)? reload,
    TResult Function(_DeleteMaterial value)? deleteMaterial,
    TResult Function(_DeleteMaterials value)? deleteMaterials,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_SortChanged value)? sortChanged,
    required TResult orElse(),
  }) {
    if (deleteMaterials != null) {
      return deleteMaterials(this);
    }
    return orElse();
  }
}

abstract class _DeleteMaterials implements UserMaterialEvent {
  const factory _DeleteMaterials({required final List<int> materialIds}) =
      _$DeleteMaterialsImpl;

  List<int> get materialIds;

  /// Create a copy of UserMaterialEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteMaterialsImplCopyWith<_$DeleteMaterialsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryChangedImplCopyWith<$Res> {
  factory _$$CategoryChangedImplCopyWith(_$CategoryChangedImpl value,
          $Res Function(_$CategoryChangedImpl) then) =
      __$$CategoryChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? categoryId});
}

/// @nodoc
class __$$CategoryChangedImplCopyWithImpl<$Res>
    extends _$UserMaterialEventCopyWithImpl<$Res, _$CategoryChangedImpl>
    implements _$$CategoryChangedImplCopyWith<$Res> {
  __$$CategoryChangedImplCopyWithImpl(
      _$CategoryChangedImpl _value, $Res Function(_$CategoryChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserMaterialEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
  }) {
    return _then(_$CategoryChangedImpl(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$CategoryChangedImpl implements _CategoryChanged {
  const _$CategoryChangedImpl({this.categoryId});

  @override
  final int? categoryId;

  @override
  String toString() {
    return 'UserMaterialEvent.categoryChanged(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryChangedImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  /// Create a copy of UserMaterialEvent
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
    required TResult Function() reload,
    required TResult Function(int materialId) deleteMaterial,
    required TResult Function(List<int> materialIds) deleteMaterials,
    required TResult Function(int? categoryId) categoryChanged,
    required TResult Function(MaterialSort sort, SortOrder order) sortChanged,
  }) {
    return categoryChanged(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? reload,
    TResult? Function(int materialId)? deleteMaterial,
    TResult? Function(List<int> materialIds)? deleteMaterials,
    TResult? Function(int? categoryId)? categoryChanged,
    TResult? Function(MaterialSort sort, SortOrder order)? sortChanged,
  }) {
    return categoryChanged?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reload,
    TResult Function(int materialId)? deleteMaterial,
    TResult Function(List<int> materialIds)? deleteMaterials,
    TResult Function(int? categoryId)? categoryChanged,
    TResult Function(MaterialSort sort, SortOrder order)? sortChanged,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reload value) reload,
    required TResult Function(_DeleteMaterial value) deleteMaterial,
    required TResult Function(_DeleteMaterials value) deleteMaterials,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_SortChanged value) sortChanged,
  }) {
    return categoryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_DeleteMaterial value)? deleteMaterial,
    TResult? Function(_DeleteMaterials value)? deleteMaterials,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_SortChanged value)? sortChanged,
  }) {
    return categoryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reload value)? reload,
    TResult Function(_DeleteMaterial value)? deleteMaterial,
    TResult Function(_DeleteMaterials value)? deleteMaterials,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_SortChanged value)? sortChanged,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(this);
    }
    return orElse();
  }
}

abstract class _CategoryChanged implements UserMaterialEvent {
  const factory _CategoryChanged({final int? categoryId}) =
      _$CategoryChangedImpl;

  int? get categoryId;

  /// Create a copy of UserMaterialEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryChangedImplCopyWith<_$CategoryChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SortChangedImplCopyWith<$Res> {
  factory _$$SortChangedImplCopyWith(
          _$SortChangedImpl value, $Res Function(_$SortChangedImpl) then) =
      __$$SortChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MaterialSort sort, SortOrder order});
}

/// @nodoc
class __$$SortChangedImplCopyWithImpl<$Res>
    extends _$UserMaterialEventCopyWithImpl<$Res, _$SortChangedImpl>
    implements _$$SortChangedImplCopyWith<$Res> {
  __$$SortChangedImplCopyWithImpl(
      _$SortChangedImpl _value, $Res Function(_$SortChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserMaterialEvent
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
              as MaterialSort,
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
  final MaterialSort sort;
  @override
  final SortOrder order;

  @override
  String toString() {
    return 'UserMaterialEvent.sortChanged(sort: $sort, order: $order)';
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

  /// Create a copy of UserMaterialEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SortChangedImplCopyWith<_$SortChangedImpl> get copyWith =>
      __$$SortChangedImplCopyWithImpl<_$SortChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reload,
    required TResult Function(int materialId) deleteMaterial,
    required TResult Function(List<int> materialIds) deleteMaterials,
    required TResult Function(int? categoryId) categoryChanged,
    required TResult Function(MaterialSort sort, SortOrder order) sortChanged,
  }) {
    return sortChanged(sort, order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? reload,
    TResult? Function(int materialId)? deleteMaterial,
    TResult? Function(List<int> materialIds)? deleteMaterials,
    TResult? Function(int? categoryId)? categoryChanged,
    TResult? Function(MaterialSort sort, SortOrder order)? sortChanged,
  }) {
    return sortChanged?.call(sort, order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reload,
    TResult Function(int materialId)? deleteMaterial,
    TResult Function(List<int> materialIds)? deleteMaterials,
    TResult Function(int? categoryId)? categoryChanged,
    TResult Function(MaterialSort sort, SortOrder order)? sortChanged,
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
    required TResult Function(_Started value) started,
    required TResult Function(_Reload value) reload,
    required TResult Function(_DeleteMaterial value) deleteMaterial,
    required TResult Function(_DeleteMaterials value) deleteMaterials,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_SortChanged value) sortChanged,
  }) {
    return sortChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_DeleteMaterial value)? deleteMaterial,
    TResult? Function(_DeleteMaterials value)? deleteMaterials,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_SortChanged value)? sortChanged,
  }) {
    return sortChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reload value)? reload,
    TResult Function(_DeleteMaterial value)? deleteMaterial,
    TResult Function(_DeleteMaterials value)? deleteMaterials,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_SortChanged value)? sortChanged,
    required TResult orElse(),
  }) {
    if (sortChanged != null) {
      return sortChanged(this);
    }
    return orElse();
  }
}

abstract class _SortChanged implements UserMaterialEvent {
  const factory _SortChanged(
      {required final MaterialSort sort,
      required final SortOrder order}) = _$SortChangedImpl;

  MaterialSort get sort;
  SortOrder get order;

  /// Create a copy of UserMaterialEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SortChangedImplCopyWith<_$SortChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserMaterialState {
  List<Material> get materials => throw _privateConstructorUsedError;
  List<MaterialCategory> get categories => throw _privateConstructorUsedError;
  MaterialSort get sort => throw _privateConstructorUsedError;
  SortOrder get order => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        initial,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        loading,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        loaded,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId,
            String message)
        error,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        deleting,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        initial,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        loading,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        loaded,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId,
            String message)?
        error,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        deleting,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        initial,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        loading,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        loaded,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId,
            String message)?
        error,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        deleting,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(Deleting value) deleting,
    required TResult Function(Deleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(Deleting value)? deleting,
    TResult? Function(Deleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(Deleting value)? deleting,
    TResult Function(Deleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of UserMaterialState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserMaterialStateCopyWith<UserMaterialState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserMaterialStateCopyWith<$Res> {
  factory $UserMaterialStateCopyWith(
          UserMaterialState value, $Res Function(UserMaterialState) then) =
      _$UserMaterialStateCopyWithImpl<$Res, UserMaterialState>;
  @useResult
  $Res call(
      {List<Material> materials,
      List<MaterialCategory> categories,
      MaterialSort sort,
      SortOrder order,
      int? categoryId});
}

/// @nodoc
class _$UserMaterialStateCopyWithImpl<$Res, $Val extends UserMaterialState>
    implements $UserMaterialStateCopyWith<$Res> {
  _$UserMaterialStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserMaterialState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materials = null,
    Object? categories = null,
    Object? sort = null,
    Object? order = null,
    Object? categoryId = freezed,
  }) {
    return _then(_value.copyWith(
      materials: null == materials
          ? _value.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<Material>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<MaterialCategory>,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as MaterialSort,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SortOrder,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $UserMaterialStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Material> materials,
      List<MaterialCategory> categories,
      MaterialSort sort,
      SortOrder order,
      int? categoryId});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UserMaterialStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserMaterialState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materials = null,
    Object? categories = null,
    Object? sort = null,
    Object? order = null,
    Object? categoryId = freezed,
  }) {
    return _then(_$InitialImpl(
      materials: null == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<Material>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<MaterialCategory>,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as MaterialSort,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SortOrder,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl(
      {final List<Material> materials = const [],
      final List<MaterialCategory> categories = const [],
      this.sort = MaterialSort.lastModified,
      this.order = SortOrder.desc,
      this.categoryId})
      : _materials = materials,
        _categories = categories;

  final List<Material> _materials;
  @override
  @JsonKey()
  List<Material> get materials {
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_materials);
  }

  final List<MaterialCategory> _categories;
  @override
  @JsonKey()
  List<MaterialCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final MaterialSort sort;
  @override
  @JsonKey()
  final SortOrder order;
  @override
  final int? categoryId;

  @override
  String toString() {
    return 'UserMaterialState.initial(materials: $materials, categories: $categories, sort: $sort, order: $order, categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_materials),
      const DeepCollectionEquality().hash(_categories),
      sort,
      order,
      categoryId);

  /// Create a copy of UserMaterialState
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
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        initial,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        loading,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        loaded,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId,
            String message)
        error,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        deleting,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        deleted,
  }) {
    return initial(materials, categories, sort, order, categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        initial,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        loading,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        loaded,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId,
            String message)?
        error,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        deleting,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        deleted,
  }) {
    return initial?.call(materials, categories, sort, order, categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        initial,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        loading,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        loaded,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId,
            String message)?
        error,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        deleting,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(materials, categories, sort, order, categoryId);
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
    required TResult Function(Deleting value) deleting,
    required TResult Function(Deleted value) deleted,
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
    TResult? Function(Deleting value)? deleting,
    TResult? Function(Deleted value)? deleted,
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
    TResult Function(Deleting value)? deleting,
    TResult Function(Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements UserMaterialState {
  const factory Initial(
      {final List<Material> materials,
      final List<MaterialCategory> categories,
      final MaterialSort sort,
      final SortOrder order,
      final int? categoryId}) = _$InitialImpl;

  @override
  List<Material> get materials;
  @override
  List<MaterialCategory> get categories;
  @override
  MaterialSort get sort;
  @override
  SortOrder get order;
  @override
  int? get categoryId;

  /// Create a copy of UserMaterialState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $UserMaterialStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Material> materials,
      List<MaterialCategory> categories,
      MaterialSort sort,
      SortOrder order,
      int? categoryId});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$UserMaterialStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserMaterialState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materials = null,
    Object? categories = null,
    Object? sort = null,
    Object? order = null,
    Object? categoryId = freezed,
  }) {
    return _then(_$LoadingImpl(
      materials: null == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<Material>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<MaterialCategory>,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as MaterialSort,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SortOrder,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl(
      {final List<Material> materials = const [],
      final List<MaterialCategory> categories = const [],
      this.sort = MaterialSort.lastModified,
      this.order = SortOrder.desc,
      this.categoryId})
      : _materials = materials,
        _categories = categories;

  final List<Material> _materials;
  @override
  @JsonKey()
  List<Material> get materials {
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_materials);
  }

  final List<MaterialCategory> _categories;
  @override
  @JsonKey()
  List<MaterialCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final MaterialSort sort;
  @override
  @JsonKey()
  final SortOrder order;
  @override
  final int? categoryId;

  @override
  String toString() {
    return 'UserMaterialState.loading(materials: $materials, categories: $categories, sort: $sort, order: $order, categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_materials),
      const DeepCollectionEquality().hash(_categories),
      sort,
      order,
      categoryId);

  /// Create a copy of UserMaterialState
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
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        initial,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        loading,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        loaded,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId,
            String message)
        error,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        deleting,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        deleted,
  }) {
    return loading(materials, categories, sort, order, categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        initial,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        loading,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        loaded,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId,
            String message)?
        error,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        deleting,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        deleted,
  }) {
    return loading?.call(materials, categories, sort, order, categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        initial,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        loading,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        loaded,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId,
            String message)?
        error,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        deleting,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(materials, categories, sort, order, categoryId);
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
    required TResult Function(Deleting value) deleting,
    required TResult Function(Deleted value) deleted,
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
    TResult? Function(Deleting value)? deleting,
    TResult? Function(Deleted value)? deleted,
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
    TResult Function(Deleting value)? deleting,
    TResult Function(Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements UserMaterialState {
  const factory Loading(
      {final List<Material> materials,
      final List<MaterialCategory> categories,
      final MaterialSort sort,
      final SortOrder order,
      final int? categoryId}) = _$LoadingImpl;

  @override
  List<Material> get materials;
  @override
  List<MaterialCategory> get categories;
  @override
  MaterialSort get sort;
  @override
  SortOrder get order;
  @override
  int? get categoryId;

  /// Create a copy of UserMaterialState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res>
    implements $UserMaterialStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Material> materials,
      List<MaterialCategory> categories,
      MaterialSort sort,
      SortOrder order,
      int? categoryId});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$UserMaterialStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserMaterialState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materials = null,
    Object? categories = null,
    Object? sort = null,
    Object? order = null,
    Object? categoryId = freezed,
  }) {
    return _then(_$LoadedImpl(
      materials: null == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<Material>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<MaterialCategory>,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as MaterialSort,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SortOrder,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements Loaded {
  const _$LoadedImpl(
      {final List<Material> materials = const [],
      final List<MaterialCategory> categories = const [],
      this.sort = MaterialSort.lastModified,
      this.order = SortOrder.desc,
      this.categoryId})
      : _materials = materials,
        _categories = categories;

  final List<Material> _materials;
  @override
  @JsonKey()
  List<Material> get materials {
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_materials);
  }

  final List<MaterialCategory> _categories;
  @override
  @JsonKey()
  List<MaterialCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final MaterialSort sort;
  @override
  @JsonKey()
  final SortOrder order;
  @override
  final int? categoryId;

  @override
  String toString() {
    return 'UserMaterialState.loaded(materials: $materials, categories: $categories, sort: $sort, order: $order, categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_materials),
      const DeepCollectionEquality().hash(_categories),
      sort,
      order,
      categoryId);

  /// Create a copy of UserMaterialState
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
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        initial,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        loading,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        loaded,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId,
            String message)
        error,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        deleting,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        deleted,
  }) {
    return loaded(materials, categories, sort, order, categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        initial,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        loading,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        loaded,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId,
            String message)?
        error,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        deleting,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        deleted,
  }) {
    return loaded?.call(materials, categories, sort, order, categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        initial,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        loading,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        loaded,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId,
            String message)?
        error,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        deleting,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(materials, categories, sort, order, categoryId);
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
    required TResult Function(Deleting value) deleting,
    required TResult Function(Deleted value) deleted,
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
    TResult? Function(Deleting value)? deleting,
    TResult? Function(Deleted value)? deleted,
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
    TResult Function(Deleting value)? deleting,
    TResult Function(Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements UserMaterialState {
  const factory Loaded(
      {final List<Material> materials,
      final List<MaterialCategory> categories,
      final MaterialSort sort,
      final SortOrder order,
      final int? categoryId}) = _$LoadedImpl;

  @override
  List<Material> get materials;
  @override
  List<MaterialCategory> get categories;
  @override
  MaterialSort get sort;
  @override
  SortOrder get order;
  @override
  int? get categoryId;

  /// Create a copy of UserMaterialState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res>
    implements $UserMaterialStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Material> materials,
      List<MaterialCategory> categories,
      MaterialSort sort,
      SortOrder order,
      int? categoryId,
      String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$UserMaterialStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserMaterialState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materials = null,
    Object? categories = null,
    Object? sort = null,
    Object? order = null,
    Object? categoryId = freezed,
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      materials: null == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<Material>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<MaterialCategory>,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as MaterialSort,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SortOrder,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl(
      {final List<Material> materials = const [],
      final List<MaterialCategory> categories = const [],
      this.sort = MaterialSort.lastModified,
      this.order = SortOrder.desc,
      this.categoryId,
      required this.message})
      : _materials = materials,
        _categories = categories;

  final List<Material> _materials;
  @override
  @JsonKey()
  List<Material> get materials {
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_materials);
  }

  final List<MaterialCategory> _categories;
  @override
  @JsonKey()
  List<MaterialCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final MaterialSort sort;
  @override
  @JsonKey()
  final SortOrder order;
  @override
  final int? categoryId;
  @override
  final String message;

  @override
  String toString() {
    return 'UserMaterialState.error(materials: $materials, categories: $categories, sort: $sort, order: $order, categoryId: $categoryId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_materials),
      const DeepCollectionEquality().hash(_categories),
      sort,
      order,
      categoryId,
      message);

  /// Create a copy of UserMaterialState
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
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        initial,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        loading,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        loaded,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId,
            String message)
        error,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        deleting,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        deleted,
  }) {
    return error(materials, categories, sort, order, categoryId, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        initial,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        loading,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        loaded,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId,
            String message)?
        error,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        deleting,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        deleted,
  }) {
    return error?.call(materials, categories, sort, order, categoryId, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        initial,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        loading,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        loaded,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId,
            String message)?
        error,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        deleting,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        deleted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(materials, categories, sort, order, categoryId, message);
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
    required TResult Function(Deleting value) deleting,
    required TResult Function(Deleted value) deleted,
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
    TResult? Function(Deleting value)? deleting,
    TResult? Function(Deleted value)? deleted,
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
    TResult Function(Deleting value)? deleting,
    TResult Function(Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements UserMaterialState {
  const factory Error(
      {final List<Material> materials,
      final List<MaterialCategory> categories,
      final MaterialSort sort,
      final SortOrder order,
      final int? categoryId,
      required final String message}) = _$ErrorImpl;

  @override
  List<Material> get materials;
  @override
  List<MaterialCategory> get categories;
  @override
  MaterialSort get sort;
  @override
  SortOrder get order;
  @override
  int? get categoryId;
  String get message;

  /// Create a copy of UserMaterialState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletingImplCopyWith<$Res>
    implements $UserMaterialStateCopyWith<$Res> {
  factory _$$DeletingImplCopyWith(
          _$DeletingImpl value, $Res Function(_$DeletingImpl) then) =
      __$$DeletingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Material> materials,
      List<MaterialCategory> categories,
      MaterialSort sort,
      SortOrder order,
      int? categoryId});
}

/// @nodoc
class __$$DeletingImplCopyWithImpl<$Res>
    extends _$UserMaterialStateCopyWithImpl<$Res, _$DeletingImpl>
    implements _$$DeletingImplCopyWith<$Res> {
  __$$DeletingImplCopyWithImpl(
      _$DeletingImpl _value, $Res Function(_$DeletingImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserMaterialState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materials = null,
    Object? categories = null,
    Object? sort = null,
    Object? order = null,
    Object? categoryId = freezed,
  }) {
    return _then(_$DeletingImpl(
      materials: null == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<Material>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<MaterialCategory>,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as MaterialSort,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SortOrder,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$DeletingImpl implements Deleting {
  const _$DeletingImpl(
      {final List<Material> materials = const [],
      final List<MaterialCategory> categories = const [],
      this.sort = MaterialSort.lastModified,
      this.order = SortOrder.desc,
      this.categoryId})
      : _materials = materials,
        _categories = categories;

  final List<Material> _materials;
  @override
  @JsonKey()
  List<Material> get materials {
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_materials);
  }

  final List<MaterialCategory> _categories;
  @override
  @JsonKey()
  List<MaterialCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final MaterialSort sort;
  @override
  @JsonKey()
  final SortOrder order;
  @override
  final int? categoryId;

  @override
  String toString() {
    return 'UserMaterialState.deleting(materials: $materials, categories: $categories, sort: $sort, order: $order, categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletingImpl &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_materials),
      const DeepCollectionEquality().hash(_categories),
      sort,
      order,
      categoryId);

  /// Create a copy of UserMaterialState
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
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        initial,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        loading,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        loaded,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId,
            String message)
        error,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        deleting,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        deleted,
  }) {
    return deleting(materials, categories, sort, order, categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        initial,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        loading,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        loaded,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId,
            String message)?
        error,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        deleting,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        deleted,
  }) {
    return deleting?.call(materials, categories, sort, order, categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        initial,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        loading,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        loaded,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId,
            String message)?
        error,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        deleting,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        deleted,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting(materials, categories, sort, order, categoryId);
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
    required TResult Function(Deleting value) deleting,
    required TResult Function(Deleted value) deleted,
  }) {
    return deleting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(Deleting value)? deleting,
    TResult? Function(Deleted value)? deleted,
  }) {
    return deleting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(Deleting value)? deleting,
    TResult Function(Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting(this);
    }
    return orElse();
  }
}

abstract class Deleting implements UserMaterialState {
  const factory Deleting(
      {final List<Material> materials,
      final List<MaterialCategory> categories,
      final MaterialSort sort,
      final SortOrder order,
      final int? categoryId}) = _$DeletingImpl;

  @override
  List<Material> get materials;
  @override
  List<MaterialCategory> get categories;
  @override
  MaterialSort get sort;
  @override
  SortOrder get order;
  @override
  int? get categoryId;

  /// Create a copy of UserMaterialState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeletingImplCopyWith<_$DeletingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletedImplCopyWith<$Res>
    implements $UserMaterialStateCopyWith<$Res> {
  factory _$$DeletedImplCopyWith(
          _$DeletedImpl value, $Res Function(_$DeletedImpl) then) =
      __$$DeletedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Material> materials,
      List<MaterialCategory> categories,
      MaterialSort sort,
      SortOrder order,
      int? categoryId});
}

/// @nodoc
class __$$DeletedImplCopyWithImpl<$Res>
    extends _$UserMaterialStateCopyWithImpl<$Res, _$DeletedImpl>
    implements _$$DeletedImplCopyWith<$Res> {
  __$$DeletedImplCopyWithImpl(
      _$DeletedImpl _value, $Res Function(_$DeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserMaterialState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materials = null,
    Object? categories = null,
    Object? sort = null,
    Object? order = null,
    Object? categoryId = freezed,
  }) {
    return _then(_$DeletedImpl(
      materials: null == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<Material>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<MaterialCategory>,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as MaterialSort,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SortOrder,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$DeletedImpl implements Deleted {
  const _$DeletedImpl(
      {final List<Material> materials = const [],
      final List<MaterialCategory> categories = const [],
      this.sort = MaterialSort.lastModified,
      this.order = SortOrder.desc,
      this.categoryId})
      : _materials = materials,
        _categories = categories;

  final List<Material> _materials;
  @override
  @JsonKey()
  List<Material> get materials {
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_materials);
  }

  final List<MaterialCategory> _categories;
  @override
  @JsonKey()
  List<MaterialCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final MaterialSort sort;
  @override
  @JsonKey()
  final SortOrder order;
  @override
  final int? categoryId;

  @override
  String toString() {
    return 'UserMaterialState.deleted(materials: $materials, categories: $categories, sort: $sort, order: $order, categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletedImpl &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_materials),
      const DeepCollectionEquality().hash(_categories),
      sort,
      order,
      categoryId);

  /// Create a copy of UserMaterialState
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
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        initial,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        loading,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        loaded,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId,
            String message)
        error,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        deleting,
    required TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)
        deleted,
  }) {
    return deleted(materials, categories, sort, order, categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        initial,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        loading,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        loaded,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId,
            String message)?
        error,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        deleting,
    TResult? Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        deleted,
  }) {
    return deleted?.call(materials, categories, sort, order, categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        initial,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        loading,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        loaded,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId,
            String message)?
        error,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        deleting,
    TResult Function(
            List<Material> materials,
            List<MaterialCategory> categories,
            MaterialSort sort,
            SortOrder order,
            int? categoryId)?
        deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(materials, categories, sort, order, categoryId);
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
    required TResult Function(Deleting value) deleting,
    required TResult Function(Deleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(Deleting value)? deleting,
    TResult? Function(Deleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(Deleting value)? deleting,
    TResult Function(Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class Deleted implements UserMaterialState {
  const factory Deleted(
      {final List<Material> materials,
      final List<MaterialCategory> categories,
      final MaterialSort sort,
      final SortOrder order,
      final int? categoryId}) = _$DeletedImpl;

  @override
  List<Material> get materials;
  @override
  List<MaterialCategory> get categories;
  @override
  MaterialSort get sort;
  @override
  SortOrder get order;
  @override
  int? get categoryId;

  /// Create a copy of UserMaterialState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
