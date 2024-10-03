// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SelectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int projectId) started,
    required TResult Function(int projectId) selected,
    required TResult Function(int projectId) unselected,
    required TResult Function() clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int projectId)? started,
    TResult? Function(int projectId)? selected,
    TResult? Function(int projectId)? unselected,
    TResult? Function()? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int projectId)? started,
    TResult Function(int projectId)? selected,
    TResult Function(int projectId)? unselected,
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
abstract class $SelectionEventCopyWith<$Res> {
  factory $SelectionEventCopyWith(
          SelectionEvent value, $Res Function(SelectionEvent) then) =
      _$SelectionEventCopyWithImpl<$Res, SelectionEvent>;
}

/// @nodoc
class _$SelectionEventCopyWithImpl<$Res, $Val extends SelectionEvent>
    implements $SelectionEventCopyWith<$Res> {
  _$SelectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int projectId});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SelectionEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
  }) {
    return _then(_$StartedImpl(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl({required this.projectId});

  @override
  final int projectId;

  @override
  String toString() {
    return 'SelectionEvent.started(projectId: $projectId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, projectId);

  /// Create a copy of SelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int projectId) started,
    required TResult Function(int projectId) selected,
    required TResult Function(int projectId) unselected,
    required TResult Function() clear,
  }) {
    return started(projectId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int projectId)? started,
    TResult? Function(int projectId)? selected,
    TResult? Function(int projectId)? unselected,
    TResult? Function()? clear,
  }) {
    return started?.call(projectId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int projectId)? started,
    TResult Function(int projectId)? selected,
    TResult Function(int projectId)? unselected,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(projectId);
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

abstract class _Started implements SelectionEvent {
  const factory _Started({required final int projectId}) = _$StartedImpl;

  int get projectId;

  /// Create a copy of SelectionEvent
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
  $Res call({int projectId});
}

/// @nodoc
class __$$SelectedImplCopyWithImpl<$Res>
    extends _$SelectionEventCopyWithImpl<$Res, _$SelectedImpl>
    implements _$$SelectedImplCopyWith<$Res> {
  __$$SelectedImplCopyWithImpl(
      _$SelectedImpl _value, $Res Function(_$SelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
  }) {
    return _then(_$SelectedImpl(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectedImpl implements _Selected {
  const _$SelectedImpl({required this.projectId});

  @override
  final int projectId;

  @override
  String toString() {
    return 'SelectionEvent.selected(projectId: $projectId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedImpl &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, projectId);

  /// Create a copy of SelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedImplCopyWith<_$SelectedImpl> get copyWith =>
      __$$SelectedImplCopyWithImpl<_$SelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int projectId) started,
    required TResult Function(int projectId) selected,
    required TResult Function(int projectId) unselected,
    required TResult Function() clear,
  }) {
    return selected(projectId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int projectId)? started,
    TResult? Function(int projectId)? selected,
    TResult? Function(int projectId)? unselected,
    TResult? Function()? clear,
  }) {
    return selected?.call(projectId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int projectId)? started,
    TResult Function(int projectId)? selected,
    TResult Function(int projectId)? unselected,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(projectId);
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

abstract class _Selected implements SelectionEvent {
  const factory _Selected({required final int projectId}) = _$SelectedImpl;

  int get projectId;

  /// Create a copy of SelectionEvent
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
  $Res call({int projectId});
}

/// @nodoc
class __$$UnselectedImplCopyWithImpl<$Res>
    extends _$SelectionEventCopyWithImpl<$Res, _$UnselectedImpl>
    implements _$$UnselectedImplCopyWith<$Res> {
  __$$UnselectedImplCopyWithImpl(
      _$UnselectedImpl _value, $Res Function(_$UnselectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
  }) {
    return _then(_$UnselectedImpl(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UnselectedImpl implements _Unselected {
  const _$UnselectedImpl({required this.projectId});

  @override
  final int projectId;

  @override
  String toString() {
    return 'SelectionEvent.unselected(projectId: $projectId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnselectedImpl &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, projectId);

  /// Create a copy of SelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnselectedImplCopyWith<_$UnselectedImpl> get copyWith =>
      __$$UnselectedImplCopyWithImpl<_$UnselectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int projectId) started,
    required TResult Function(int projectId) selected,
    required TResult Function(int projectId) unselected,
    required TResult Function() clear,
  }) {
    return unselected(projectId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int projectId)? started,
    TResult? Function(int projectId)? selected,
    TResult? Function(int projectId)? unselected,
    TResult? Function()? clear,
  }) {
    return unselected?.call(projectId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int projectId)? started,
    TResult Function(int projectId)? selected,
    TResult Function(int projectId)? unselected,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (unselected != null) {
      return unselected(projectId);
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

abstract class _Unselected implements SelectionEvent {
  const factory _Unselected({required final int projectId}) = _$UnselectedImpl;

  int get projectId;

  /// Create a copy of SelectionEvent
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
    extends _$SelectionEventCopyWithImpl<$Res, _$ClearImpl>
    implements _$$ClearImplCopyWith<$Res> {
  __$$ClearImplCopyWithImpl(
      _$ClearImpl _value, $Res Function(_$ClearImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearImpl implements _Clear {
  const _$ClearImpl();

  @override
  String toString() {
    return 'SelectionEvent.clear()';
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
    required TResult Function(int projectId) started,
    required TResult Function(int projectId) selected,
    required TResult Function(int projectId) unselected,
    required TResult Function() clear,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int projectId)? started,
    TResult? Function(int projectId)? selected,
    TResult? Function(int projectId)? unselected,
    TResult? Function()? clear,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int projectId)? started,
    TResult Function(int projectId)? selected,
    TResult Function(int projectId)? unselected,
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

abstract class _Clear implements SelectionEvent {
  const factory _Clear() = _$ClearImpl;
}

/// @nodoc
mixin _$SelectionState {
  List<int> get selectedProjectIds => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> selectedProjectIds) initial,
    required TResult Function(List<int> selectedProjectIds) on,
    required TResult Function(List<int> selectedProjectIds) off,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> selectedProjectIds)? initial,
    TResult? Function(List<int> selectedProjectIds)? on,
    TResult? Function(List<int> selectedProjectIds)? off,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> selectedProjectIds)? initial,
    TResult Function(List<int> selectedProjectIds)? on,
    TResult Function(List<int> selectedProjectIds)? off,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_On value) on,
    required TResult Function(_Off value) off,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_On value)? on,
    TResult? Function(_Off value)? off,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_On value)? on,
    TResult Function(_Off value)? off,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SelectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectionStateCopyWith<SelectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectionStateCopyWith<$Res> {
  factory $SelectionStateCopyWith(
          SelectionState value, $Res Function(SelectionState) then) =
      _$SelectionStateCopyWithImpl<$Res, SelectionState>;
  @useResult
  $Res call({List<int> selectedProjectIds});
}

/// @nodoc
class _$SelectionStateCopyWithImpl<$Res, $Val extends SelectionState>
    implements $SelectionStateCopyWith<$Res> {
  _$SelectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedProjectIds = null,
  }) {
    return _then(_value.copyWith(
      selectedProjectIds: null == selectedProjectIds
          ? _value.selectedProjectIds
          : selectedProjectIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SelectionStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> selectedProjectIds});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SelectionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedProjectIds = null,
  }) {
    return _then(_$InitialImpl(
      selectedProjectIds: null == selectedProjectIds
          ? _value._selectedProjectIds
          : selectedProjectIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({final List<int> selectedProjectIds = const []})
      : _selectedProjectIds = selectedProjectIds;

  final List<int> _selectedProjectIds;
  @override
  @JsonKey()
  List<int> get selectedProjectIds {
    if (_selectedProjectIds is EqualUnmodifiableListView)
      return _selectedProjectIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedProjectIds);
  }

  @override
  String toString() {
    return 'SelectionState.initial(selectedProjectIds: $selectedProjectIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._selectedProjectIds, _selectedProjectIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_selectedProjectIds));

  /// Create a copy of SelectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> selectedProjectIds) initial,
    required TResult Function(List<int> selectedProjectIds) on,
    required TResult Function(List<int> selectedProjectIds) off,
  }) {
    return initial(selectedProjectIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> selectedProjectIds)? initial,
    TResult? Function(List<int> selectedProjectIds)? on,
    TResult? Function(List<int> selectedProjectIds)? off,
  }) {
    return initial?.call(selectedProjectIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> selectedProjectIds)? initial,
    TResult Function(List<int> selectedProjectIds)? on,
    TResult Function(List<int> selectedProjectIds)? off,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(selectedProjectIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_On value) on,
    required TResult Function(_Off value) off,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_On value)? on,
    TResult? Function(_Off value)? off,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_On value)? on,
    TResult Function(_Off value)? off,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SelectionState {
  const factory _Initial({final List<int> selectedProjectIds}) = _$InitialImpl;

  @override
  List<int> get selectedProjectIds;

  /// Create a copy of SelectionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnImplCopyWith<$Res>
    implements $SelectionStateCopyWith<$Res> {
  factory _$$OnImplCopyWith(_$OnImpl value, $Res Function(_$OnImpl) then) =
      __$$OnImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> selectedProjectIds});
}

/// @nodoc
class __$$OnImplCopyWithImpl<$Res>
    extends _$SelectionStateCopyWithImpl<$Res, _$OnImpl>
    implements _$$OnImplCopyWith<$Res> {
  __$$OnImplCopyWithImpl(_$OnImpl _value, $Res Function(_$OnImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedProjectIds = null,
  }) {
    return _then(_$OnImpl(
      selectedProjectIds: null == selectedProjectIds
          ? _value._selectedProjectIds
          : selectedProjectIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$OnImpl implements _On {
  const _$OnImpl({final List<int> selectedProjectIds = const []})
      : _selectedProjectIds = selectedProjectIds;

  final List<int> _selectedProjectIds;
  @override
  @JsonKey()
  List<int> get selectedProjectIds {
    if (_selectedProjectIds is EqualUnmodifiableListView)
      return _selectedProjectIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedProjectIds);
  }

  @override
  String toString() {
    return 'SelectionState.on(selectedProjectIds: $selectedProjectIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnImpl &&
            const DeepCollectionEquality()
                .equals(other._selectedProjectIds, _selectedProjectIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_selectedProjectIds));

  /// Create a copy of SelectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnImplCopyWith<_$OnImpl> get copyWith =>
      __$$OnImplCopyWithImpl<_$OnImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> selectedProjectIds) initial,
    required TResult Function(List<int> selectedProjectIds) on,
    required TResult Function(List<int> selectedProjectIds) off,
  }) {
    return on(selectedProjectIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> selectedProjectIds)? initial,
    TResult? Function(List<int> selectedProjectIds)? on,
    TResult? Function(List<int> selectedProjectIds)? off,
  }) {
    return on?.call(selectedProjectIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> selectedProjectIds)? initial,
    TResult Function(List<int> selectedProjectIds)? on,
    TResult Function(List<int> selectedProjectIds)? off,
    required TResult orElse(),
  }) {
    if (on != null) {
      return on(selectedProjectIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_On value) on,
    required TResult Function(_Off value) off,
  }) {
    return on(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_On value)? on,
    TResult? Function(_Off value)? off,
  }) {
    return on?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_On value)? on,
    TResult Function(_Off value)? off,
    required TResult orElse(),
  }) {
    if (on != null) {
      return on(this);
    }
    return orElse();
  }
}

abstract class _On implements SelectionState {
  const factory _On({final List<int> selectedProjectIds}) = _$OnImpl;

  @override
  List<int> get selectedProjectIds;

  /// Create a copy of SelectionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnImplCopyWith<_$OnImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OffImplCopyWith<$Res>
    implements $SelectionStateCopyWith<$Res> {
  factory _$$OffImplCopyWith(_$OffImpl value, $Res Function(_$OffImpl) then) =
      __$$OffImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> selectedProjectIds});
}

/// @nodoc
class __$$OffImplCopyWithImpl<$Res>
    extends _$SelectionStateCopyWithImpl<$Res, _$OffImpl>
    implements _$$OffImplCopyWith<$Res> {
  __$$OffImplCopyWithImpl(_$OffImpl _value, $Res Function(_$OffImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedProjectIds = null,
  }) {
    return _then(_$OffImpl(
      selectedProjectIds: null == selectedProjectIds
          ? _value._selectedProjectIds
          : selectedProjectIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$OffImpl implements _Off {
  const _$OffImpl({final List<int> selectedProjectIds = const []})
      : _selectedProjectIds = selectedProjectIds;

  final List<int> _selectedProjectIds;
  @override
  @JsonKey()
  List<int> get selectedProjectIds {
    if (_selectedProjectIds is EqualUnmodifiableListView)
      return _selectedProjectIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedProjectIds);
  }

  @override
  String toString() {
    return 'SelectionState.off(selectedProjectIds: $selectedProjectIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffImpl &&
            const DeepCollectionEquality()
                .equals(other._selectedProjectIds, _selectedProjectIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_selectedProjectIds));

  /// Create a copy of SelectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OffImplCopyWith<_$OffImpl> get copyWith =>
      __$$OffImplCopyWithImpl<_$OffImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> selectedProjectIds) initial,
    required TResult Function(List<int> selectedProjectIds) on,
    required TResult Function(List<int> selectedProjectIds) off,
  }) {
    return off(selectedProjectIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> selectedProjectIds)? initial,
    TResult? Function(List<int> selectedProjectIds)? on,
    TResult? Function(List<int> selectedProjectIds)? off,
  }) {
    return off?.call(selectedProjectIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> selectedProjectIds)? initial,
    TResult Function(List<int> selectedProjectIds)? on,
    TResult Function(List<int> selectedProjectIds)? off,
    required TResult orElse(),
  }) {
    if (off != null) {
      return off(selectedProjectIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_On value) on,
    required TResult Function(_Off value) off,
  }) {
    return off(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_On value)? on,
    TResult? Function(_Off value)? off,
  }) {
    return off?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_On value)? on,
    TResult Function(_Off value)? off,
    required TResult orElse(),
  }) {
    if (off != null) {
      return off(this);
    }
    return orElse();
  }
}

abstract class _Off implements SelectionState {
  const factory _Off({final List<int> selectedProjectIds}) = _$OffImpl;

  @override
  List<int> get selectedProjectIds;

  /// Create a copy of SelectionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OffImplCopyWith<_$OffImpl> get copyWith =>
      throw _privateConstructorUsedError;
}