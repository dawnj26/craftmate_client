// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'material_selection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MaterialSelectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int materialId) started,
    required TResult Function(int materialId) selected,
    required TResult Function(int materialId) unselected,
    required TResult Function() clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int materialId)? started,
    TResult? Function(int materialId)? selected,
    TResult? Function(int materialId)? unselected,
    TResult? Function()? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int materialId)? started,
    TResult Function(int materialId)? selected,
    TResult Function(int materialId)? unselected,
    TResult Function()? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Selected value) selected,
    required TResult Function(_Unselected value) unselected,
    required TResult Function(_Clear value) clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_Unselected value)? unselected,
    TResult? Function(_Clear value)? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Selected value)? selected,
    TResult Function(_Unselected value)? unselected,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialSelectionEventCopyWith<$Res> {
  factory $MaterialSelectionEventCopyWith(MaterialSelectionEvent value,
          $Res Function(MaterialSelectionEvent) then) =
      _$MaterialSelectionEventCopyWithImpl<$Res, MaterialSelectionEvent>;
}

/// @nodoc
class _$MaterialSelectionEventCopyWithImpl<$Res,
        $Val extends MaterialSelectionEvent>
    implements $MaterialSelectionEventCopyWith<$Res> {
  _$MaterialSelectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MaterialSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int materialId});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$MaterialSelectionEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MaterialSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materialId = null,
  }) {
    return _then(_$StartedImpl(
      materialId: null == materialId
          ? _value.materialId
          : materialId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl({required this.materialId});

  @override
  final int materialId;

  @override
  String toString() {
    return 'MaterialSelectionEvent.started(materialId: $materialId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.materialId, materialId) ||
                other.materialId == materialId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, materialId);

  /// Create a copy of MaterialSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int materialId) started,
    required TResult Function(int materialId) selected,
    required TResult Function(int materialId) unselected,
    required TResult Function() clear,
  }) {
    return started(materialId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int materialId)? started,
    TResult? Function(int materialId)? selected,
    TResult? Function(int materialId)? unselected,
    TResult? Function()? clear,
  }) {
    return started?.call(materialId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int materialId)? started,
    TResult Function(int materialId)? selected,
    TResult Function(int materialId)? unselected,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(materialId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Selected value) selected,
    required TResult Function(_Unselected value) unselected,
    required TResult Function(_Clear value) clear,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_Unselected value)? unselected,
    TResult? Function(_Clear value)? clear,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Selected value)? selected,
    TResult Function(_Unselected value)? unselected,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MaterialSelectionEvent {
  const factory _Started({required final int materialId}) = _$StartedImpl;

  int get materialId;

  /// Create a copy of MaterialSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectedImplCopyWith<$Res> {
  factory _$$SelectedImplCopyWith(
          _$SelectedImpl value, $Res Function(_$SelectedImpl) then) =
      __$$SelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int materialId});
}

/// @nodoc
class __$$SelectedImplCopyWithImpl<$Res>
    extends _$MaterialSelectionEventCopyWithImpl<$Res, _$SelectedImpl>
    implements _$$SelectedImplCopyWith<$Res> {
  __$$SelectedImplCopyWithImpl(
      _$SelectedImpl _value, $Res Function(_$SelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MaterialSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materialId = null,
  }) {
    return _then(_$SelectedImpl(
      materialId: null == materialId
          ? _value.materialId
          : materialId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectedImpl implements _Selected {
  const _$SelectedImpl({required this.materialId});

  @override
  final int materialId;

  @override
  String toString() {
    return 'MaterialSelectionEvent.selected(materialId: $materialId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedImpl &&
            (identical(other.materialId, materialId) ||
                other.materialId == materialId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, materialId);

  /// Create a copy of MaterialSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedImplCopyWith<_$SelectedImpl> get copyWith =>
      __$$SelectedImplCopyWithImpl<_$SelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int materialId) started,
    required TResult Function(int materialId) selected,
    required TResult Function(int materialId) unselected,
    required TResult Function() clear,
  }) {
    return selected(materialId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int materialId)? started,
    TResult? Function(int materialId)? selected,
    TResult? Function(int materialId)? unselected,
    TResult? Function()? clear,
  }) {
    return selected?.call(materialId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int materialId)? started,
    TResult Function(int materialId)? selected,
    TResult Function(int materialId)? unselected,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(materialId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Selected value) selected,
    required TResult Function(_Unselected value) unselected,
    required TResult Function(_Clear value) clear,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_Unselected value)? unselected,
    TResult? Function(_Clear value)? clear,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Selected value)? selected,
    TResult Function(_Unselected value)? unselected,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class _Selected implements MaterialSelectionEvent {
  const factory _Selected({required final int materialId}) = _$SelectedImpl;

  int get materialId;

  /// Create a copy of MaterialSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectedImplCopyWith<_$SelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnselectedImplCopyWith<$Res> {
  factory _$$UnselectedImplCopyWith(
          _$UnselectedImpl value, $Res Function(_$UnselectedImpl) then) =
      __$$UnselectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int materialId});
}

/// @nodoc
class __$$UnselectedImplCopyWithImpl<$Res>
    extends _$MaterialSelectionEventCopyWithImpl<$Res, _$UnselectedImpl>
    implements _$$UnselectedImplCopyWith<$Res> {
  __$$UnselectedImplCopyWithImpl(
      _$UnselectedImpl _value, $Res Function(_$UnselectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MaterialSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materialId = null,
  }) {
    return _then(_$UnselectedImpl(
      materialId: null == materialId
          ? _value.materialId
          : materialId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UnselectedImpl implements _Unselected {
  const _$UnselectedImpl({required this.materialId});

  @override
  final int materialId;

  @override
  String toString() {
    return 'MaterialSelectionEvent.unselected(materialId: $materialId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnselectedImpl &&
            (identical(other.materialId, materialId) ||
                other.materialId == materialId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, materialId);

  /// Create a copy of MaterialSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnselectedImplCopyWith<_$UnselectedImpl> get copyWith =>
      __$$UnselectedImplCopyWithImpl<_$UnselectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int materialId) started,
    required TResult Function(int materialId) selected,
    required TResult Function(int materialId) unselected,
    required TResult Function() clear,
  }) {
    return unselected(materialId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int materialId)? started,
    TResult? Function(int materialId)? selected,
    TResult? Function(int materialId)? unselected,
    TResult? Function()? clear,
  }) {
    return unselected?.call(materialId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int materialId)? started,
    TResult Function(int materialId)? selected,
    TResult Function(int materialId)? unselected,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (unselected != null) {
      return unselected(materialId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Selected value) selected,
    required TResult Function(_Unselected value) unselected,
    required TResult Function(_Clear value) clear,
  }) {
    return unselected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_Unselected value)? unselected,
    TResult? Function(_Clear value)? clear,
  }) {
    return unselected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Selected value)? selected,
    TResult Function(_Unselected value)? unselected,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (unselected != null) {
      return unselected(this);
    }
    return orElse();
  }
}

abstract class _Unselected implements MaterialSelectionEvent {
  const factory _Unselected({required final int materialId}) = _$UnselectedImpl;

  int get materialId;

  /// Create a copy of MaterialSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnselectedImplCopyWith<_$UnselectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearImplCopyWith<$Res> {
  factory _$$ClearImplCopyWith(
          _$ClearImpl value, $Res Function(_$ClearImpl) then) =
      __$$ClearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearImplCopyWithImpl<$Res>
    extends _$MaterialSelectionEventCopyWithImpl<$Res, _$ClearImpl>
    implements _$$ClearImplCopyWith<$Res> {
  __$$ClearImplCopyWithImpl(
      _$ClearImpl _value, $Res Function(_$ClearImpl) _then)
      : super(_value, _then);

  /// Create a copy of MaterialSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearImpl implements _Clear {
  const _$ClearImpl();

  @override
  String toString() {
    return 'MaterialSelectionEvent.clear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int materialId) started,
    required TResult Function(int materialId) selected,
    required TResult Function(int materialId) unselected,
    required TResult Function() clear,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int materialId)? started,
    TResult? Function(int materialId)? selected,
    TResult? Function(int materialId)? unselected,
    TResult? Function()? clear,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int materialId)? started,
    TResult Function(int materialId)? selected,
    TResult Function(int materialId)? unselected,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Selected value) selected,
    required TResult Function(_Unselected value) unselected,
    required TResult Function(_Clear value) clear,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_Unselected value)? unselected,
    TResult? Function(_Clear value)? clear,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Selected value)? selected,
    TResult Function(_Unselected value)? unselected,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _Clear implements MaterialSelectionEvent {
  const factory _Clear() = _$ClearImpl;
}

/// @nodoc
mixin _$MaterialSelectionState {
  List<int> get selectedMaterials => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> selectedMaterials) initial,
    required TResult Function(List<int> selectedMaterials) on,
    required TResult Function(List<int> selectedMaterials) off,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> selectedMaterials)? initial,
    TResult? Function(List<int> selectedMaterials)? on,
    TResult? Function(List<int> selectedMaterials)? off,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> selectedMaterials)? initial,
    TResult Function(List<int> selectedMaterials)? on,
    TResult Function(List<int> selectedMaterials)? off,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(On value) on,
    required TResult Function(Off value) off,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(On value)? on,
    TResult? Function(Off value)? off,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(On value)? on,
    TResult Function(Off value)? off,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of MaterialSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MaterialSelectionStateCopyWith<MaterialSelectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialSelectionStateCopyWith<$Res> {
  factory $MaterialSelectionStateCopyWith(MaterialSelectionState value,
          $Res Function(MaterialSelectionState) then) =
      _$MaterialSelectionStateCopyWithImpl<$Res, MaterialSelectionState>;
  @useResult
  $Res call({List<int> selectedMaterials});
}

/// @nodoc
class _$MaterialSelectionStateCopyWithImpl<$Res,
        $Val extends MaterialSelectionState>
    implements $MaterialSelectionStateCopyWith<$Res> {
  _$MaterialSelectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MaterialSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedMaterials = null,
  }) {
    return _then(_value.copyWith(
      selectedMaterials: null == selectedMaterials
          ? _value.selectedMaterials
          : selectedMaterials // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $MaterialSelectionStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> selectedMaterials});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MaterialSelectionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of MaterialSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedMaterials = null,
  }) {
    return _then(_$InitialImpl(
      selectedMaterials: null == selectedMaterials
          ? _value._selectedMaterials
          : selectedMaterials // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl({final List<int> selectedMaterials = const []})
      : _selectedMaterials = selectedMaterials;

  final List<int> _selectedMaterials;
  @override
  @JsonKey()
  List<int> get selectedMaterials {
    if (_selectedMaterials is EqualUnmodifiableListView)
      return _selectedMaterials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedMaterials);
  }

  @override
  String toString() {
    return 'MaterialSelectionState.initial(selectedMaterials: $selectedMaterials)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._selectedMaterials, _selectedMaterials));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_selectedMaterials));

  /// Create a copy of MaterialSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> selectedMaterials) initial,
    required TResult Function(List<int> selectedMaterials) on,
    required TResult Function(List<int> selectedMaterials) off,
  }) {
    return initial(selectedMaterials);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> selectedMaterials)? initial,
    TResult? Function(List<int> selectedMaterials)? on,
    TResult? Function(List<int> selectedMaterials)? off,
  }) {
    return initial?.call(selectedMaterials);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> selectedMaterials)? initial,
    TResult Function(List<int> selectedMaterials)? on,
    TResult Function(List<int> selectedMaterials)? off,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(selectedMaterials);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(On value) on,
    required TResult Function(Off value) off,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(On value)? on,
    TResult? Function(Off value)? off,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(On value)? on,
    TResult Function(Off value)? off,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements MaterialSelectionState {
  const factory Initial({final List<int> selectedMaterials}) = _$InitialImpl;

  @override
  List<int> get selectedMaterials;

  /// Create a copy of MaterialSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnImplCopyWith<$Res>
    implements $MaterialSelectionStateCopyWith<$Res> {
  factory _$$OnImplCopyWith(_$OnImpl value, $Res Function(_$OnImpl) then) =
      __$$OnImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> selectedMaterials});
}

/// @nodoc
class __$$OnImplCopyWithImpl<$Res>
    extends _$MaterialSelectionStateCopyWithImpl<$Res, _$OnImpl>
    implements _$$OnImplCopyWith<$Res> {
  __$$OnImplCopyWithImpl(_$OnImpl _value, $Res Function(_$OnImpl) _then)
      : super(_value, _then);

  /// Create a copy of MaterialSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedMaterials = null,
  }) {
    return _then(_$OnImpl(
      selectedMaterials: null == selectedMaterials
          ? _value._selectedMaterials
          : selectedMaterials // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$OnImpl implements On {
  const _$OnImpl({final List<int> selectedMaterials = const []})
      : _selectedMaterials = selectedMaterials;

  final List<int> _selectedMaterials;
  @override
  @JsonKey()
  List<int> get selectedMaterials {
    if (_selectedMaterials is EqualUnmodifiableListView)
      return _selectedMaterials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedMaterials);
  }

  @override
  String toString() {
    return 'MaterialSelectionState.on(selectedMaterials: $selectedMaterials)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnImpl &&
            const DeepCollectionEquality()
                .equals(other._selectedMaterials, _selectedMaterials));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_selectedMaterials));

  /// Create a copy of MaterialSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnImplCopyWith<_$OnImpl> get copyWith =>
      __$$OnImplCopyWithImpl<_$OnImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> selectedMaterials) initial,
    required TResult Function(List<int> selectedMaterials) on,
    required TResult Function(List<int> selectedMaterials) off,
  }) {
    return on(selectedMaterials);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> selectedMaterials)? initial,
    TResult? Function(List<int> selectedMaterials)? on,
    TResult? Function(List<int> selectedMaterials)? off,
  }) {
    return on?.call(selectedMaterials);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> selectedMaterials)? initial,
    TResult Function(List<int> selectedMaterials)? on,
    TResult Function(List<int> selectedMaterials)? off,
    required TResult orElse(),
  }) {
    if (on != null) {
      return on(selectedMaterials);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(On value) on,
    required TResult Function(Off value) off,
  }) {
    return on(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(On value)? on,
    TResult? Function(Off value)? off,
  }) {
    return on?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(On value)? on,
    TResult Function(Off value)? off,
    required TResult orElse(),
  }) {
    if (on != null) {
      return on(this);
    }
    return orElse();
  }
}

abstract class On implements MaterialSelectionState {
  const factory On({final List<int> selectedMaterials}) = _$OnImpl;

  @override
  List<int> get selectedMaterials;

  /// Create a copy of MaterialSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnImplCopyWith<_$OnImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OffImplCopyWith<$Res>
    implements $MaterialSelectionStateCopyWith<$Res> {
  factory _$$OffImplCopyWith(_$OffImpl value, $Res Function(_$OffImpl) then) =
      __$$OffImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> selectedMaterials});
}

/// @nodoc
class __$$OffImplCopyWithImpl<$Res>
    extends _$MaterialSelectionStateCopyWithImpl<$Res, _$OffImpl>
    implements _$$OffImplCopyWith<$Res> {
  __$$OffImplCopyWithImpl(_$OffImpl _value, $Res Function(_$OffImpl) _then)
      : super(_value, _then);

  /// Create a copy of MaterialSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedMaterials = null,
  }) {
    return _then(_$OffImpl(
      selectedMaterials: null == selectedMaterials
          ? _value._selectedMaterials
          : selectedMaterials // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$OffImpl implements Off {
  const _$OffImpl({final List<int> selectedMaterials = const []})
      : _selectedMaterials = selectedMaterials;

  final List<int> _selectedMaterials;
  @override
  @JsonKey()
  List<int> get selectedMaterials {
    if (_selectedMaterials is EqualUnmodifiableListView)
      return _selectedMaterials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedMaterials);
  }

  @override
  String toString() {
    return 'MaterialSelectionState.off(selectedMaterials: $selectedMaterials)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffImpl &&
            const DeepCollectionEquality()
                .equals(other._selectedMaterials, _selectedMaterials));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_selectedMaterials));

  /// Create a copy of MaterialSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OffImplCopyWith<_$OffImpl> get copyWith =>
      __$$OffImplCopyWithImpl<_$OffImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> selectedMaterials) initial,
    required TResult Function(List<int> selectedMaterials) on,
    required TResult Function(List<int> selectedMaterials) off,
  }) {
    return off(selectedMaterials);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> selectedMaterials)? initial,
    TResult? Function(List<int> selectedMaterials)? on,
    TResult? Function(List<int> selectedMaterials)? off,
  }) {
    return off?.call(selectedMaterials);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> selectedMaterials)? initial,
    TResult Function(List<int> selectedMaterials)? on,
    TResult Function(List<int> selectedMaterials)? off,
    required TResult orElse(),
  }) {
    if (off != null) {
      return off(selectedMaterials);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(On value) on,
    required TResult Function(Off value) off,
  }) {
    return off(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(On value)? on,
    TResult? Function(Off value)? off,
  }) {
    return off?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(On value)? on,
    TResult Function(Off value)? off,
    required TResult orElse(),
  }) {
    if (off != null) {
      return off(this);
    }
    return orElse();
  }
}

abstract class Off implements MaterialSelectionState {
  const factory Off({final List<int> selectedMaterials}) = _$OffImpl;

  @override
  List<int> get selectedMaterials;

  /// Create a copy of MaterialSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OffImplCopyWith<_$OffImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
