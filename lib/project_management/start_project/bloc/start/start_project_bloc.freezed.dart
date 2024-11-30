// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_project_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StartProjectEvent {










}

/// @nodoc
abstract class $StartProjectEventCopyWith<$Res>  {
  factory $StartProjectEventCopyWith(StartProjectEvent value, $Res Function(StartProjectEvent) then) = _$StartProjectEventCopyWithImpl<$Res, StartProjectEvent>;



}

/// @nodoc
class _$StartProjectEventCopyWithImpl<$Res,$Val extends StartProjectEvent> implements $StartProjectEventCopyWith<$Res> {
  _$StartProjectEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of StartProjectEvent
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>  {
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) = __$$StartedImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res> extends _$StartProjectEventCopyWithImpl<$Res, _$StartedImpl> implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(_$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);


/// Create a copy of StartProjectEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$StartedImpl  implements _Started {
  const _$StartedImpl();

  



@override
String toString() {
  return 'StartProjectEvent.started()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StartedImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _Started implements StartProjectEvent {
  const factory _Started() = _$StartedImpl;
  

  



}

/// @nodoc
abstract class _$$StepCompleteToggledImplCopyWith<$Res>  {
  factory _$$StepCompleteToggledImplCopyWith(_$StepCompleteToggledImpl value, $Res Function(_$StepCompleteToggledImpl) then) = __$$StepCompleteToggledImplCopyWithImpl<$Res>;
@useResult
$Res call({
 int stepIndex
});



}

/// @nodoc
class __$$StepCompleteToggledImplCopyWithImpl<$Res> extends _$StartProjectEventCopyWithImpl<$Res, _$StepCompleteToggledImpl> implements _$$StepCompleteToggledImplCopyWith<$Res> {
  __$$StepCompleteToggledImplCopyWithImpl(_$StepCompleteToggledImpl _value, $Res Function(_$StepCompleteToggledImpl) _then)
      : super(_value, _then);


/// Create a copy of StartProjectEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stepIndex = null,}) {
  return _then(_$StepCompleteToggledImpl(
null == stepIndex ? _value.stepIndex : stepIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _$StepCompleteToggledImpl  implements _StepCompleteToggled {
  const _$StepCompleteToggledImpl(this.stepIndex);

  

@override final  int stepIndex;

@override
String toString() {
  return 'StartProjectEvent.stepCompleteToggled(stepIndex: $stepIndex)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StepCompleteToggledImpl&&(identical(other.stepIndex, stepIndex) || other.stepIndex == stepIndex));
}


@override
int get hashCode => Object.hash(runtimeType,stepIndex);

/// Create a copy of StartProjectEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$StepCompleteToggledImplCopyWith<_$StepCompleteToggledImpl> get copyWith => __$$StepCompleteToggledImplCopyWithImpl<_$StepCompleteToggledImpl>(this, _$identity);








}


abstract class _StepCompleteToggled implements StartProjectEvent {
  const factory _StepCompleteToggled(final  int stepIndex) = _$StepCompleteToggledImpl;
  

  

 int get stepIndex;
/// Create a copy of StartProjectEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$StepCompleteToggledImplCopyWith<_$StepCompleteToggledImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$AllStepsCompletedImplCopyWith<$Res>  {
  factory _$$AllStepsCompletedImplCopyWith(_$AllStepsCompletedImpl value, $Res Function(_$AllStepsCompletedImpl) then) = __$$AllStepsCompletedImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$AllStepsCompletedImplCopyWithImpl<$Res> extends _$StartProjectEventCopyWithImpl<$Res, _$AllStepsCompletedImpl> implements _$$AllStepsCompletedImplCopyWith<$Res> {
  __$$AllStepsCompletedImplCopyWithImpl(_$AllStepsCompletedImpl _value, $Res Function(_$AllStepsCompletedImpl) _then)
      : super(_value, _then);


/// Create a copy of StartProjectEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$AllStepsCompletedImpl  implements _AllStepsCompleted {
  const _$AllStepsCompletedImpl();

  



@override
String toString() {
  return 'StartProjectEvent.allStepsCompleted()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$AllStepsCompletedImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _AllStepsCompleted implements StartProjectEvent {
  const factory _AllStepsCompleted() = _$AllStepsCompletedImpl;
  

  



}

/// @nodoc
abstract class _$$ProjectFinishedImplCopyWith<$Res>  {
  factory _$$ProjectFinishedImplCopyWith(_$ProjectFinishedImpl value, $Res Function(_$ProjectFinishedImpl) then) = __$$ProjectFinishedImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$ProjectFinishedImplCopyWithImpl<$Res> extends _$StartProjectEventCopyWithImpl<$Res, _$ProjectFinishedImpl> implements _$$ProjectFinishedImplCopyWith<$Res> {
  __$$ProjectFinishedImplCopyWithImpl(_$ProjectFinishedImpl _value, $Res Function(_$ProjectFinishedImpl) _then)
      : super(_value, _then);


/// Create a copy of StartProjectEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$ProjectFinishedImpl  implements _ProjectFinished {
  const _$ProjectFinishedImpl();

  



@override
String toString() {
  return 'StartProjectEvent.projectFinished()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ProjectFinishedImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _ProjectFinished implements StartProjectEvent {
  const factory _ProjectFinished() = _$ProjectFinishedImpl;
  

  



}

/// @nodoc
mixin _$StartProjectState {

 Project get project => throw _privateConstructorUsedError; List<bool> get completedSteps => throw _privateConstructorUsedError;







/// Create a copy of StartProjectState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$StartProjectStateCopyWith<StartProjectState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $StartProjectStateCopyWith<$Res>  {
  factory $StartProjectStateCopyWith(StartProjectState value, $Res Function(StartProjectState) then) = _$StartProjectStateCopyWithImpl<$Res, StartProjectState>;
@useResult
$Res call({
 Project project, List<bool> completedSteps
});


$ProjectCopyWith<$Res> get project;
}

/// @nodoc
class _$StartProjectStateCopyWithImpl<$Res,$Val extends StartProjectState> implements $StartProjectStateCopyWith<$Res> {
  _$StartProjectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of StartProjectState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? project = null,Object? completedSteps = null,}) {
  return _then(_value.copyWith(
project: null == project ? _value.project : project // ignore: cast_nullable_to_non_nullable
as Project,completedSteps: null == completedSteps ? _value.completedSteps : completedSteps // ignore: cast_nullable_to_non_nullable
as List<bool>,
  )as $Val);
}
/// Create a copy of StartProjectState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProjectCopyWith<$Res> get project {
  
  return $ProjectCopyWith<$Res>(_value.project, (value) {
    return _then(_value.copyWith(project: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $StartProjectStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 Project project, List<bool> completedSteps
});


@override $ProjectCopyWith<$Res> get project;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$StartProjectStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of StartProjectState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? project = null,Object? completedSteps = null,}) {
  return _then(_$InitialImpl(
project: null == project ? _value.project : project // ignore: cast_nullable_to_non_nullable
as Project,completedSteps: null == completedSteps ? _value._completedSteps : completedSteps // ignore: cast_nullable_to_non_nullable
as List<bool>,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl({required this.project, final  List<bool> completedSteps = const []}): _completedSteps = completedSteps;

  

@override final  Project project;
 final  List<bool> _completedSteps;
@override@JsonKey() List<bool> get completedSteps {
  if (_completedSteps is EqualUnmodifiableListView) return _completedSteps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_completedSteps);
}


@override
String toString() {
  return 'StartProjectState.initial(project: $project, completedSteps: $completedSteps)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&(identical(other.project, project) || other.project == project)&&const DeepCollectionEquality().equals(other._completedSteps, _completedSteps));
}


@override
int get hashCode => Object.hash(runtimeType,project,const DeepCollectionEquality().hash(_completedSteps));

/// Create a copy of StartProjectState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements StartProjectState {
  const factory Initial({required final  Project project, final  List<bool> completedSteps}) = _$InitialImpl;
  

  

@override Project get project;@override List<bool> get completedSteps;
/// Create a copy of StartProjectState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$SavingImplCopyWith<$Res> implements $StartProjectStateCopyWith<$Res> {
  factory _$$SavingImplCopyWith(_$SavingImpl value, $Res Function(_$SavingImpl) then) = __$$SavingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 Project project, List<bool> completedSteps
});


@override $ProjectCopyWith<$Res> get project;
}

/// @nodoc
class __$$SavingImplCopyWithImpl<$Res> extends _$StartProjectStateCopyWithImpl<$Res, _$SavingImpl> implements _$$SavingImplCopyWith<$Res> {
  __$$SavingImplCopyWithImpl(_$SavingImpl _value, $Res Function(_$SavingImpl) _then)
      : super(_value, _then);


/// Create a copy of StartProjectState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? project = null,Object? completedSteps = null,}) {
  return _then(_$SavingImpl(
project: null == project ? _value.project : project // ignore: cast_nullable_to_non_nullable
as Project,completedSteps: null == completedSteps ? _value._completedSteps : completedSteps // ignore: cast_nullable_to_non_nullable
as List<bool>,
  ));
}


}

/// @nodoc


class _$SavingImpl  implements Saving {
  const _$SavingImpl({required this.project, final  List<bool> completedSteps = const []}): _completedSteps = completedSteps;

  

@override final  Project project;
 final  List<bool> _completedSteps;
@override@JsonKey() List<bool> get completedSteps {
  if (_completedSteps is EqualUnmodifiableListView) return _completedSteps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_completedSteps);
}


@override
String toString() {
  return 'StartProjectState.saving(project: $project, completedSteps: $completedSteps)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SavingImpl&&(identical(other.project, project) || other.project == project)&&const DeepCollectionEquality().equals(other._completedSteps, _completedSteps));
}


@override
int get hashCode => Object.hash(runtimeType,project,const DeepCollectionEquality().hash(_completedSteps));

/// Create a copy of StartProjectState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$SavingImplCopyWith<_$SavingImpl> get copyWith => __$$SavingImplCopyWithImpl<_$SavingImpl>(this, _$identity);








}


abstract class Saving implements StartProjectState {
  const factory Saving({required final  Project project, final  List<bool> completedSteps}) = _$SavingImpl;
  

  

@override Project get project;@override List<bool> get completedSteps;
/// Create a copy of StartProjectState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$SavingImplCopyWith<_$SavingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$FinishedImplCopyWith<$Res> implements $StartProjectStateCopyWith<$Res> {
  factory _$$FinishedImplCopyWith(_$FinishedImpl value, $Res Function(_$FinishedImpl) then) = __$$FinishedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 Project project, List<bool> completedSteps
});


@override $ProjectCopyWith<$Res> get project;
}

/// @nodoc
class __$$FinishedImplCopyWithImpl<$Res> extends _$StartProjectStateCopyWithImpl<$Res, _$FinishedImpl> implements _$$FinishedImplCopyWith<$Res> {
  __$$FinishedImplCopyWithImpl(_$FinishedImpl _value, $Res Function(_$FinishedImpl) _then)
      : super(_value, _then);


/// Create a copy of StartProjectState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? project = null,Object? completedSteps = null,}) {
  return _then(_$FinishedImpl(
project: null == project ? _value.project : project // ignore: cast_nullable_to_non_nullable
as Project,completedSteps: null == completedSteps ? _value._completedSteps : completedSteps // ignore: cast_nullable_to_non_nullable
as List<bool>,
  ));
}


}

/// @nodoc


class _$FinishedImpl  implements Finished {
  const _$FinishedImpl({required this.project, final  List<bool> completedSteps = const []}): _completedSteps = completedSteps;

  

@override final  Project project;
 final  List<bool> _completedSteps;
@override@JsonKey() List<bool> get completedSteps {
  if (_completedSteps is EqualUnmodifiableListView) return _completedSteps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_completedSteps);
}


@override
String toString() {
  return 'StartProjectState.finished(project: $project, completedSteps: $completedSteps)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$FinishedImpl&&(identical(other.project, project) || other.project == project)&&const DeepCollectionEquality().equals(other._completedSteps, _completedSteps));
}


@override
int get hashCode => Object.hash(runtimeType,project,const DeepCollectionEquality().hash(_completedSteps));

/// Create a copy of StartProjectState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$FinishedImplCopyWith<_$FinishedImpl> get copyWith => __$$FinishedImplCopyWithImpl<_$FinishedImpl>(this, _$identity);








}


abstract class Finished implements StartProjectState {
  const factory Finished({required final  Project project, final  List<bool> completedSteps}) = _$FinishedImpl;
  

  

@override Project get project;@override List<bool> get completedSteps;
/// Create a copy of StartProjectState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$FinishedImplCopyWith<_$FinishedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> implements $StartProjectStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl value, $Res Function(_$LoadingImpl) then) = __$$LoadingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 Project project, List<bool> completedSteps
});


@override $ProjectCopyWith<$Res> get project;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$StartProjectStateCopyWithImpl<$Res, _$LoadingImpl> implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);


/// Create a copy of StartProjectState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? project = null,Object? completedSteps = null,}) {
  return _then(_$LoadingImpl(
project: null == project ? _value.project : project // ignore: cast_nullable_to_non_nullable
as Project,completedSteps: null == completedSteps ? _value._completedSteps : completedSteps // ignore: cast_nullable_to_non_nullable
as List<bool>,
  ));
}


}

/// @nodoc


class _$LoadingImpl  implements Loading {
  const _$LoadingImpl({required this.project, final  List<bool> completedSteps = const []}): _completedSteps = completedSteps;

  

@override final  Project project;
 final  List<bool> _completedSteps;
@override@JsonKey() List<bool> get completedSteps {
  if (_completedSteps is EqualUnmodifiableListView) return _completedSteps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_completedSteps);
}


@override
String toString() {
  return 'StartProjectState.loading(project: $project, completedSteps: $completedSteps)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadingImpl&&(identical(other.project, project) || other.project == project)&&const DeepCollectionEquality().equals(other._completedSteps, _completedSteps));
}


@override
int get hashCode => Object.hash(runtimeType,project,const DeepCollectionEquality().hash(_completedSteps));

/// Create a copy of StartProjectState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);








}


abstract class Loading implements StartProjectState {
  const factory Loading({required final  Project project, final  List<bool> completedSteps}) = _$LoadingImpl;
  

  

@override Project get project;@override List<bool> get completedSteps;
/// Create a copy of StartProjectState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $StartProjectStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(_$LoadedImpl value, $Res Function(_$LoadedImpl) then) = __$$LoadedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 Project project, List<bool> completedSteps, bool showTutorial
});


@override $ProjectCopyWith<$Res> get project;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res> extends _$StartProjectStateCopyWithImpl<$Res, _$LoadedImpl> implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(_$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);


/// Create a copy of StartProjectState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? project = null,Object? completedSteps = null,Object? showTutorial = null,}) {
  return _then(_$LoadedImpl(
project: null == project ? _value.project : project // ignore: cast_nullable_to_non_nullable
as Project,completedSteps: null == completedSteps ? _value._completedSteps : completedSteps // ignore: cast_nullable_to_non_nullable
as List<bool>,showTutorial: null == showTutorial ? _value.showTutorial : showTutorial // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _$LoadedImpl  implements Loaded {
  const _$LoadedImpl({required this.project, final  List<bool> completedSteps = const [], this.showTutorial = false}): _completedSteps = completedSteps;

  

@override final  Project project;
 final  List<bool> _completedSteps;
@override@JsonKey() List<bool> get completedSteps {
  if (_completedSteps is EqualUnmodifiableListView) return _completedSteps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_completedSteps);
}

@override@JsonKey() final  bool showTutorial;

@override
String toString() {
  return 'StartProjectState.loaded(project: $project, completedSteps: $completedSteps, showTutorial: $showTutorial)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadedImpl&&(identical(other.project, project) || other.project == project)&&const DeepCollectionEquality().equals(other._completedSteps, _completedSteps)&&(identical(other.showTutorial, showTutorial) || other.showTutorial == showTutorial));
}


@override
int get hashCode => Object.hash(runtimeType,project,const DeepCollectionEquality().hash(_completedSteps),showTutorial);

/// Create a copy of StartProjectState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);








}


abstract class Loaded implements StartProjectState {
  const factory Loaded({required final  Project project, final  List<bool> completedSteps, final  bool showTutorial}) = _$LoadedImpl;
  

  

@override Project get project;@override List<bool> get completedSteps; bool get showTutorial;
/// Create a copy of StartProjectState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> implements $StartProjectStateCopyWith<$Res> {
  factory _$$FailedImplCopyWith(_$FailedImpl value, $Res Function(_$FailedImpl) then) = __$$FailedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String errMessage, Project project, List<bool> completedSteps
});


@override $ProjectCopyWith<$Res> get project;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res> extends _$StartProjectStateCopyWithImpl<$Res, _$FailedImpl> implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(_$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);


/// Create a copy of StartProjectState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? errMessage = null,Object? project = null,Object? completedSteps = null,}) {
  return _then(_$FailedImpl(
errMessage: null == errMessage ? _value.errMessage : errMessage // ignore: cast_nullable_to_non_nullable
as String,project: null == project ? _value.project : project // ignore: cast_nullable_to_non_nullable
as Project,completedSteps: null == completedSteps ? _value._completedSteps : completedSteps // ignore: cast_nullable_to_non_nullable
as List<bool>,
  ));
}


}

/// @nodoc


class _$FailedImpl  implements Failed {
  const _$FailedImpl({required this.errMessage, required this.project, final  List<bool> completedSteps = const []}): _completedSteps = completedSteps;

  

@override final  String errMessage;
@override final  Project project;
 final  List<bool> _completedSteps;
@override@JsonKey() List<bool> get completedSteps {
  if (_completedSteps is EqualUnmodifiableListView) return _completedSteps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_completedSteps);
}


@override
String toString() {
  return 'StartProjectState.failed(errMessage: $errMessage, project: $project, completedSteps: $completedSteps)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$FailedImpl&&(identical(other.errMessage, errMessage) || other.errMessage == errMessage)&&(identical(other.project, project) || other.project == project)&&const DeepCollectionEquality().equals(other._completedSteps, _completedSteps));
}


@override
int get hashCode => Object.hash(runtimeType,errMessage,project,const DeepCollectionEquality().hash(_completedSteps));

/// Create a copy of StartProjectState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$FailedImplCopyWith<_$FailedImpl> get copyWith => __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);








}


abstract class Failed implements StartProjectState {
  const factory Failed({required final  String errMessage, required final  Project project, final  List<bool> completedSteps}) = _$FailedImpl;
  

  

 String get errMessage;@override Project get project;@override List<bool> get completedSteps;
/// Create a copy of StartProjectState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$FailedImplCopyWith<_$FailedImpl> get copyWith => throw _privateConstructorUsedError;

}
