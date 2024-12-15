// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReportModalEvent {










}

/// @nodoc
abstract class $ReportModalEventCopyWith<$Res>  {
  factory $ReportModalEventCopyWith(ReportModalEvent value, $Res Function(ReportModalEvent) then) = _$ReportModalEventCopyWithImpl<$Res, ReportModalEvent>;



}

/// @nodoc
class _$ReportModalEventCopyWithImpl<$Res,$Val extends ReportModalEvent> implements $ReportModalEventCopyWith<$Res> {
  _$ReportModalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ReportModalEvent
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>  {
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) = __$$StartedImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res> extends _$ReportModalEventCopyWithImpl<$Res, _$StartedImpl> implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(_$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);


/// Create a copy of ReportModalEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$StartedImpl  implements _Started {
  const _$StartedImpl();

  



@override
String toString() {
  return 'ReportModalEvent.started()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StartedImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _Started implements ReportModalEvent {
  const factory _Started() = _$StartedImpl;
  

  



}

/// @nodoc
abstract class _$$ReasonSelectedImplCopyWith<$Res>  {
  factory _$$ReasonSelectedImplCopyWith(_$ReasonSelectedImpl value, $Res Function(_$ReasonSelectedImpl) then) = __$$ReasonSelectedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 ReportReason reason
});



}

/// @nodoc
class __$$ReasonSelectedImplCopyWithImpl<$Res> extends _$ReportModalEventCopyWithImpl<$Res, _$ReasonSelectedImpl> implements _$$ReasonSelectedImplCopyWith<$Res> {
  __$$ReasonSelectedImplCopyWithImpl(_$ReasonSelectedImpl _value, $Res Function(_$ReasonSelectedImpl) _then)
      : super(_value, _then);


/// Create a copy of ReportModalEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reason = null,}) {
  return _then(_$ReasonSelectedImpl(
null == reason ? _value.reason : reason // ignore: cast_nullable_to_non_nullable
as ReportReason,
  ));
}


}

/// @nodoc


class _$ReasonSelectedImpl  implements _ReasonSelected {
  const _$ReasonSelectedImpl(this.reason);

  

@override final  ReportReason reason;

@override
String toString() {
  return 'ReportModalEvent.reasonSelected(reason: $reason)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ReasonSelectedImpl&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,reason);

/// Create a copy of ReportModalEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ReasonSelectedImplCopyWith<_$ReasonSelectedImpl> get copyWith => __$$ReasonSelectedImplCopyWithImpl<_$ReasonSelectedImpl>(this, _$identity);








}


abstract class _ReasonSelected implements ReportModalEvent {
  const factory _ReasonSelected(final  ReportReason reason) = _$ReasonSelectedImpl;
  

  

 ReportReason get reason;
/// Create a copy of ReportModalEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$ReasonSelectedImplCopyWith<_$ReasonSelectedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$DescriptionChangedImplCopyWith<$Res>  {
  factory _$$DescriptionChangedImplCopyWith(_$DescriptionChangedImpl value, $Res Function(_$DescriptionChangedImpl) then) = __$$DescriptionChangedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String description
});



}

/// @nodoc
class __$$DescriptionChangedImplCopyWithImpl<$Res> extends _$ReportModalEventCopyWithImpl<$Res, _$DescriptionChangedImpl> implements _$$DescriptionChangedImplCopyWith<$Res> {
  __$$DescriptionChangedImplCopyWithImpl(_$DescriptionChangedImpl _value, $Res Function(_$DescriptionChangedImpl) _then)
      : super(_value, _then);


/// Create a copy of ReportModalEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = null,}) {
  return _then(_$DescriptionChangedImpl(
null == description ? _value.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$DescriptionChangedImpl  implements _DescriptionChanged {
  const _$DescriptionChangedImpl(this.description);

  

@override final  String description;

@override
String toString() {
  return 'ReportModalEvent.descriptionChanged(description: $description)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$DescriptionChangedImpl&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,description);

/// Create a copy of ReportModalEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$DescriptionChangedImplCopyWith<_$DescriptionChangedImpl> get copyWith => __$$DescriptionChangedImplCopyWithImpl<_$DescriptionChangedImpl>(this, _$identity);








}


abstract class _DescriptionChanged implements ReportModalEvent {
  const factory _DescriptionChanged(final  String description) = _$DescriptionChangedImpl;
  

  

 String get description;
/// Create a copy of ReportModalEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$DescriptionChangedImplCopyWith<_$DescriptionChangedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$SubmittedImplCopyWith<$Res>  {
  factory _$$SubmittedImplCopyWith(_$SubmittedImpl value, $Res Function(_$SubmittedImpl) then) = __$$SubmittedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 int reporterId, int reportedId
});



}

/// @nodoc
class __$$SubmittedImplCopyWithImpl<$Res> extends _$ReportModalEventCopyWithImpl<$Res, _$SubmittedImpl> implements _$$SubmittedImplCopyWith<$Res> {
  __$$SubmittedImplCopyWithImpl(_$SubmittedImpl _value, $Res Function(_$SubmittedImpl) _then)
      : super(_value, _then);


/// Create a copy of ReportModalEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reporterId = null,Object? reportedId = null,}) {
  return _then(_$SubmittedImpl(
null == reporterId ? _value.reporterId : reporterId // ignore: cast_nullable_to_non_nullable
as int,null == reportedId ? _value.reportedId : reportedId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _$SubmittedImpl  implements _Submitted {
  const _$SubmittedImpl(this.reporterId, this.reportedId);

  

@override final  int reporterId;
@override final  int reportedId;

@override
String toString() {
  return 'ReportModalEvent.submitted(reporterId: $reporterId, reportedId: $reportedId)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SubmittedImpl&&(identical(other.reporterId, reporterId) || other.reporterId == reporterId)&&(identical(other.reportedId, reportedId) || other.reportedId == reportedId));
}


@override
int get hashCode => Object.hash(runtimeType,reporterId,reportedId);

/// Create a copy of ReportModalEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$SubmittedImplCopyWith<_$SubmittedImpl> get copyWith => __$$SubmittedImplCopyWithImpl<_$SubmittedImpl>(this, _$identity);








}


abstract class _Submitted implements ReportModalEvent {
  const factory _Submitted(final  int reporterId, final  int reportedId) = _$SubmittedImpl;
  

  

 int get reporterId; int get reportedId;
/// Create a copy of ReportModalEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$SubmittedImplCopyWith<_$SubmittedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$PhotoAddedImplCopyWith<$Res>  {
  factory _$$PhotoAddedImplCopyWith(_$PhotoAddedImpl value, $Res Function(_$PhotoAddedImpl) then) = __$$PhotoAddedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 List<String> imagesPath
});



}

/// @nodoc
class __$$PhotoAddedImplCopyWithImpl<$Res> extends _$ReportModalEventCopyWithImpl<$Res, _$PhotoAddedImpl> implements _$$PhotoAddedImplCopyWith<$Res> {
  __$$PhotoAddedImplCopyWithImpl(_$PhotoAddedImpl _value, $Res Function(_$PhotoAddedImpl) _then)
      : super(_value, _then);


/// Create a copy of ReportModalEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imagesPath = null,}) {
  return _then(_$PhotoAddedImpl(
null == imagesPath ? _value._imagesPath : imagesPath // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class _$PhotoAddedImpl  implements _PhotoAdded {
  const _$PhotoAddedImpl(final  List<String> imagesPath): _imagesPath = imagesPath;

  

 final  List<String> _imagesPath;
@override List<String> get imagesPath {
  if (_imagesPath is EqualUnmodifiableListView) return _imagesPath;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imagesPath);
}


@override
String toString() {
  return 'ReportModalEvent.photoAdded(imagesPath: $imagesPath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$PhotoAddedImpl&&const DeepCollectionEquality().equals(other._imagesPath, _imagesPath));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_imagesPath));

/// Create a copy of ReportModalEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$PhotoAddedImplCopyWith<_$PhotoAddedImpl> get copyWith => __$$PhotoAddedImplCopyWithImpl<_$PhotoAddedImpl>(this, _$identity);








}


abstract class _PhotoAdded implements ReportModalEvent {
  const factory _PhotoAdded(final  List<String> imagesPath) = _$PhotoAddedImpl;
  

  

 List<String> get imagesPath;
/// Create a copy of ReportModalEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$PhotoAddedImplCopyWith<_$PhotoAddedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$PhotoRemovedImplCopyWith<$Res>  {
  factory _$$PhotoRemovedImplCopyWith(_$PhotoRemovedImpl value, $Res Function(_$PhotoRemovedImpl) then) = __$$PhotoRemovedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 int index
});



}

/// @nodoc
class __$$PhotoRemovedImplCopyWithImpl<$Res> extends _$ReportModalEventCopyWithImpl<$Res, _$PhotoRemovedImpl> implements _$$PhotoRemovedImplCopyWith<$Res> {
  __$$PhotoRemovedImplCopyWithImpl(_$PhotoRemovedImpl _value, $Res Function(_$PhotoRemovedImpl) _then)
      : super(_value, _then);


/// Create a copy of ReportModalEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,}) {
  return _then(_$PhotoRemovedImpl(
null == index ? _value.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _$PhotoRemovedImpl  implements _PhotoRemoved {
  const _$PhotoRemovedImpl(this.index);

  

@override final  int index;

@override
String toString() {
  return 'ReportModalEvent.photoRemoved(index: $index)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$PhotoRemovedImpl&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

/// Create a copy of ReportModalEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$PhotoRemovedImplCopyWith<_$PhotoRemovedImpl> get copyWith => __$$PhotoRemovedImplCopyWithImpl<_$PhotoRemovedImpl>(this, _$identity);








}


abstract class _PhotoRemoved implements ReportModalEvent {
  const factory _PhotoRemoved(final  int index) = _$PhotoRemovedImpl;
  

  

 int get index;
/// Create a copy of ReportModalEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$PhotoRemovedImplCopyWith<_$PhotoRemovedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
mixin _$ReportModalState {

 ReportReason? get selectedReason => throw _privateConstructorUsedError; String get description => throw _privateConstructorUsedError; List<String> get imagesPath => throw _privateConstructorUsedError;







/// Create a copy of ReportModalState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ReportModalStateCopyWith<ReportModalState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ReportModalStateCopyWith<$Res>  {
  factory $ReportModalStateCopyWith(ReportModalState value, $Res Function(ReportModalState) then) = _$ReportModalStateCopyWithImpl<$Res, ReportModalState>;
@useResult
$Res call({
 ReportReason? selectedReason, String description, List<String> imagesPath
});



}

/// @nodoc
class _$ReportModalStateCopyWithImpl<$Res,$Val extends ReportModalState> implements $ReportModalStateCopyWith<$Res> {
  _$ReportModalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ReportModalState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedReason = freezed,Object? description = null,Object? imagesPath = null,}) {
  return _then(_value.copyWith(
selectedReason: freezed == selectedReason ? _value.selectedReason : selectedReason // ignore: cast_nullable_to_non_nullable
as ReportReason?,description: null == description ? _value.description : description // ignore: cast_nullable_to_non_nullable
as String,imagesPath: null == imagesPath ? _value.imagesPath : imagesPath // ignore: cast_nullable_to_non_nullable
as List<String>,
  )as $Val);
}

}


/// @nodoc
abstract class _$$ReportStateImplCopyWith<$Res> implements $ReportModalStateCopyWith<$Res> {
  factory _$$ReportStateImplCopyWith(_$ReportStateImpl value, $Res Function(_$ReportStateImpl) then) = __$$ReportStateImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 ReportReason? selectedReason, String description, List<String> imagesPath
});



}

/// @nodoc
class __$$ReportStateImplCopyWithImpl<$Res> extends _$ReportModalStateCopyWithImpl<$Res, _$ReportStateImpl> implements _$$ReportStateImplCopyWith<$Res> {
  __$$ReportStateImplCopyWithImpl(_$ReportStateImpl _value, $Res Function(_$ReportStateImpl) _then)
      : super(_value, _then);


/// Create a copy of ReportModalState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedReason = freezed,Object? description = null,Object? imagesPath = null,}) {
  return _then(_$ReportStateImpl(
selectedReason: freezed == selectedReason ? _value.selectedReason : selectedReason // ignore: cast_nullable_to_non_nullable
as ReportReason?,description: null == description ? _value.description : description // ignore: cast_nullable_to_non_nullable
as String,imagesPath: null == imagesPath ? _value._imagesPath : imagesPath // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class _$ReportStateImpl  implements _ReportState {
  const _$ReportStateImpl({this.selectedReason, this.description = '', final  List<String> imagesPath = const []}): _imagesPath = imagesPath;

  

@override final  ReportReason? selectedReason;
@override@JsonKey() final  String description;
 final  List<String> _imagesPath;
@override@JsonKey() List<String> get imagesPath {
  if (_imagesPath is EqualUnmodifiableListView) return _imagesPath;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imagesPath);
}


@override
String toString() {
  return 'ReportModalState(selectedReason: $selectedReason, description: $description, imagesPath: $imagesPath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ReportStateImpl&&(identical(other.selectedReason, selectedReason) || other.selectedReason == selectedReason)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._imagesPath, _imagesPath));
}


@override
int get hashCode => Object.hash(runtimeType,selectedReason,description,const DeepCollectionEquality().hash(_imagesPath));

/// Create a copy of ReportModalState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ReportStateImplCopyWith<_$ReportStateImpl> get copyWith => __$$ReportStateImplCopyWithImpl<_$ReportStateImpl>(this, _$identity);








}


abstract class _ReportState implements ReportModalState {
  const factory _ReportState({final  ReportReason? selectedReason, final  String description, final  List<String> imagesPath}) = _$ReportStateImpl;
  

  

@override ReportReason? get selectedReason;@override String get description;@override List<String> get imagesPath;
/// Create a copy of ReportModalState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ReportStateImplCopyWith<_$ReportStateImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $ReportModalStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 ReportReason? selectedReason, String description, List<String> imagesPath
});



}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$ReportModalStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of ReportModalState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedReason = freezed,Object? description = null,Object? imagesPath = null,}) {
  return _then(_$InitialImpl(
selectedReason: freezed == selectedReason ? _value.selectedReason : selectedReason // ignore: cast_nullable_to_non_nullable
as ReportReason?,description: null == description ? _value.description : description // ignore: cast_nullable_to_non_nullable
as String,imagesPath: null == imagesPath ? _value._imagesPath : imagesPath // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl({this.selectedReason, this.description = '', final  List<String> imagesPath = const []}): _imagesPath = imagesPath;

  

@override final  ReportReason? selectedReason;
@override@JsonKey() final  String description;
 final  List<String> _imagesPath;
@override@JsonKey() List<String> get imagesPath {
  if (_imagesPath is EqualUnmodifiableListView) return _imagesPath;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imagesPath);
}


@override
String toString() {
  return 'ReportModalState.initial(selectedReason: $selectedReason, description: $description, imagesPath: $imagesPath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&(identical(other.selectedReason, selectedReason) || other.selectedReason == selectedReason)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._imagesPath, _imagesPath));
}


@override
int get hashCode => Object.hash(runtimeType,selectedReason,description,const DeepCollectionEquality().hash(_imagesPath));

/// Create a copy of ReportModalState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements ReportModalState {
  const factory Initial({final  ReportReason? selectedReason, final  String description, final  List<String> imagesPath}) = _$InitialImpl;
  

  

@override ReportReason? get selectedReason;@override String get description;@override List<String> get imagesPath;
/// Create a copy of ReportModalState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> implements $ReportModalStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl value, $Res Function(_$LoadingImpl) then) = __$$LoadingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 ReportReason? selectedReason, String description, List<String> imagesPath
});



}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$ReportModalStateCopyWithImpl<$Res, _$LoadingImpl> implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);


/// Create a copy of ReportModalState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedReason = freezed,Object? description = null,Object? imagesPath = null,}) {
  return _then(_$LoadingImpl(
selectedReason: freezed == selectedReason ? _value.selectedReason : selectedReason // ignore: cast_nullable_to_non_nullable
as ReportReason?,description: null == description ? _value.description : description // ignore: cast_nullable_to_non_nullable
as String,imagesPath: null == imagesPath ? _value._imagesPath : imagesPath // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class _$LoadingImpl  implements Loading {
  const _$LoadingImpl({this.selectedReason, this.description = '', final  List<String> imagesPath = const []}): _imagesPath = imagesPath;

  

@override final  ReportReason? selectedReason;
@override@JsonKey() final  String description;
 final  List<String> _imagesPath;
@override@JsonKey() List<String> get imagesPath {
  if (_imagesPath is EqualUnmodifiableListView) return _imagesPath;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imagesPath);
}


@override
String toString() {
  return 'ReportModalState.loading(selectedReason: $selectedReason, description: $description, imagesPath: $imagesPath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadingImpl&&(identical(other.selectedReason, selectedReason) || other.selectedReason == selectedReason)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._imagesPath, _imagesPath));
}


@override
int get hashCode => Object.hash(runtimeType,selectedReason,description,const DeepCollectionEquality().hash(_imagesPath));

/// Create a copy of ReportModalState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);








}


abstract class Loading implements ReportModalState {
  const factory Loading({final  ReportReason? selectedReason, final  String description, final  List<String> imagesPath}) = _$LoadingImpl;
  

  

@override ReportReason? get selectedReason;@override String get description;@override List<String> get imagesPath;
/// Create a copy of ReportModalState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> implements $ReportModalStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(_$SuccessImpl value, $Res Function(_$SuccessImpl) then) = __$$SuccessImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 ReportReason? selectedReason, String description, List<String> imagesPath
});



}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res> extends _$ReportModalStateCopyWithImpl<$Res, _$SuccessImpl> implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(_$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);


/// Create a copy of ReportModalState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedReason = freezed,Object? description = null,Object? imagesPath = null,}) {
  return _then(_$SuccessImpl(
selectedReason: freezed == selectedReason ? _value.selectedReason : selectedReason // ignore: cast_nullable_to_non_nullable
as ReportReason?,description: null == description ? _value.description : description // ignore: cast_nullable_to_non_nullable
as String,imagesPath: null == imagesPath ? _value._imagesPath : imagesPath // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class _$SuccessImpl  implements Success {
  const _$SuccessImpl({this.selectedReason, this.description = '', final  List<String> imagesPath = const []}): _imagesPath = imagesPath;

  

@override final  ReportReason? selectedReason;
@override@JsonKey() final  String description;
 final  List<String> _imagesPath;
@override@JsonKey() List<String> get imagesPath {
  if (_imagesPath is EqualUnmodifiableListView) return _imagesPath;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imagesPath);
}


@override
String toString() {
  return 'ReportModalState.success(selectedReason: $selectedReason, description: $description, imagesPath: $imagesPath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SuccessImpl&&(identical(other.selectedReason, selectedReason) || other.selectedReason == selectedReason)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._imagesPath, _imagesPath));
}


@override
int get hashCode => Object.hash(runtimeType,selectedReason,description,const DeepCollectionEquality().hash(_imagesPath));

/// Create a copy of ReportModalState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$SuccessImplCopyWith<_$SuccessImpl> get copyWith => __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);








}


abstract class Success implements ReportModalState {
  const factory Success({final  ReportReason? selectedReason, final  String description, final  List<String> imagesPath}) = _$SuccessImpl;
  

  

@override ReportReason? get selectedReason;@override String get description;@override List<String> get imagesPath;
/// Create a copy of ReportModalState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$SuccessImplCopyWith<_$SuccessImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> implements $ReportModalStateCopyWith<$Res> {
  factory _$$FailureImplCopyWith(_$FailureImpl value, $Res Function(_$FailureImpl) then) = __$$FailureImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 ReportReason? selectedReason, String description, List<String> imagesPath, String message
});



}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res> extends _$ReportModalStateCopyWithImpl<$Res, _$FailureImpl> implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(_$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);


/// Create a copy of ReportModalState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedReason = freezed,Object? description = null,Object? imagesPath = null,Object? message = null,}) {
  return _then(_$FailureImpl(
selectedReason: freezed == selectedReason ? _value.selectedReason : selectedReason // ignore: cast_nullable_to_non_nullable
as ReportReason?,description: null == description ? _value.description : description // ignore: cast_nullable_to_non_nullable
as String,imagesPath: null == imagesPath ? _value._imagesPath : imagesPath // ignore: cast_nullable_to_non_nullable
as List<String>,message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$FailureImpl  implements Failure {
  const _$FailureImpl({this.selectedReason, this.description = '', final  List<String> imagesPath = const [], required this.message}): _imagesPath = imagesPath;

  

@override final  ReportReason? selectedReason;
@override@JsonKey() final  String description;
 final  List<String> _imagesPath;
@override@JsonKey() List<String> get imagesPath {
  if (_imagesPath is EqualUnmodifiableListView) return _imagesPath;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imagesPath);
}

@override final  String message;

@override
String toString() {
  return 'ReportModalState.failure(selectedReason: $selectedReason, description: $description, imagesPath: $imagesPath, message: $message)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$FailureImpl&&(identical(other.selectedReason, selectedReason) || other.selectedReason == selectedReason)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._imagesPath, _imagesPath)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,selectedReason,description,const DeepCollectionEquality().hash(_imagesPath),message);

/// Create a copy of ReportModalState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$FailureImplCopyWith<_$FailureImpl> get copyWith => __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);








}


abstract class Failure implements ReportModalState {
  const factory Failure({final  ReportReason? selectedReason, final  String description, final  List<String> imagesPath, required final  String message}) = _$FailureImpl;
  

  

@override ReportReason? get selectedReason;@override String get description;@override List<String> get imagesPath; String get message;
/// Create a copy of ReportModalState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$FailureImplCopyWith<_$FailureImpl> get copyWith => throw _privateConstructorUsedError;

}
