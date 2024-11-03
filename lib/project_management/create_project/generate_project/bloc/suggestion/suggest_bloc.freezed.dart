// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suggest_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SuggestEvent {










}

/// @nodoc
abstract class $SuggestEventCopyWith<$Res>  {
  factory $SuggestEventCopyWith(SuggestEvent value, $Res Function(SuggestEvent) then) = _$SuggestEventCopyWithImpl<$Res, SuggestEvent>;



}

/// @nodoc
class _$SuggestEventCopyWithImpl<$Res,$Val extends SuggestEvent> implements $SuggestEventCopyWith<$Res> {
  _$SuggestEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of SuggestEvent
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>  {
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) = __$$StartedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 List<ProjectSuggestion> suggestions
});



}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res> extends _$SuggestEventCopyWithImpl<$Res, _$StartedImpl> implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(_$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);


/// Create a copy of SuggestEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? suggestions = null,}) {
  return _then(_$StartedImpl(
suggestions: null == suggestions ? _value._suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<ProjectSuggestion>,
  ));
}


}

/// @nodoc


class _$StartedImpl  implements _Started {
  const _$StartedImpl({required final  List<ProjectSuggestion> suggestions}): _suggestions = suggestions;

  

 final  List<ProjectSuggestion> _suggestions;
@override List<ProjectSuggestion> get suggestions {
  if (_suggestions is EqualUnmodifiableListView) return _suggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestions);
}


@override
String toString() {
  return 'SuggestEvent.started(suggestions: $suggestions)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StartedImpl&&const DeepCollectionEquality().equals(other._suggestions, _suggestions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_suggestions));

/// Create a copy of SuggestEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$StartedImplCopyWith<_$StartedImpl> get copyWith => __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);








}


abstract class _Started implements SuggestEvent {
  const factory _Started({required final  List<ProjectSuggestion> suggestions}) = _$StartedImpl;
  

  

 List<ProjectSuggestion> get suggestions;
/// Create a copy of SuggestEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$StartedImplCopyWith<_$StartedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$RegeneratedImplCopyWith<$Res>  {
  factory _$$RegeneratedImplCopyWith(_$RegeneratedImpl value, $Res Function(_$RegeneratedImpl) then) = __$$RegeneratedImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$RegeneratedImplCopyWithImpl<$Res> extends _$SuggestEventCopyWithImpl<$Res, _$RegeneratedImpl> implements _$$RegeneratedImplCopyWith<$Res> {
  __$$RegeneratedImplCopyWithImpl(_$RegeneratedImpl _value, $Res Function(_$RegeneratedImpl) _then)
      : super(_value, _then);


/// Create a copy of SuggestEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$RegeneratedImpl  implements _Regenerated {
  const _$RegeneratedImpl();

  



@override
String toString() {
  return 'SuggestEvent.regenerated()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$RegeneratedImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _Regenerated implements SuggestEvent {
  const factory _Regenerated() = _$RegeneratedImpl;
  

  



}

/// @nodoc
mixin _$SuggestState {

 List<ProjectSuggestion> get suggestions => throw _privateConstructorUsedError;







/// Create a copy of SuggestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$SuggestStateCopyWith<SuggestState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $SuggestStateCopyWith<$Res>  {
  factory $SuggestStateCopyWith(SuggestState value, $Res Function(SuggestState) then) = _$SuggestStateCopyWithImpl<$Res, SuggestState>;
@useResult
$Res call({
 List<ProjectSuggestion> suggestions
});



}

/// @nodoc
class _$SuggestStateCopyWithImpl<$Res,$Val extends SuggestState> implements $SuggestStateCopyWith<$Res> {
  _$SuggestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of SuggestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? suggestions = null,}) {
  return _then(_value.copyWith(
suggestions: null == suggestions ? _value.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<ProjectSuggestion>,
  )as $Val);
}

}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $SuggestStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<ProjectSuggestion> suggestions
});



}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$SuggestStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of SuggestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? suggestions = null,}) {
  return _then(_$InitialImpl(
suggestions: null == suggestions ? _value._suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<ProjectSuggestion>,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl({final  List<ProjectSuggestion> suggestions = const []}): _suggestions = suggestions;

  

 final  List<ProjectSuggestion> _suggestions;
@override@JsonKey() List<ProjectSuggestion> get suggestions {
  if (_suggestions is EqualUnmodifiableListView) return _suggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestions);
}


@override
String toString() {
  return 'SuggestState.initial(suggestions: $suggestions)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&const DeepCollectionEquality().equals(other._suggestions, _suggestions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_suggestions));

/// Create a copy of SuggestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements SuggestState {
  const factory Initial({final  List<ProjectSuggestion> suggestions}) = _$InitialImpl;
  

  

@override List<ProjectSuggestion> get suggestions;
/// Create a copy of SuggestState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> implements $SuggestStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl value, $Res Function(_$LoadingImpl) then) = __$$LoadingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<ProjectSuggestion> suggestions
});



}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$SuggestStateCopyWithImpl<$Res, _$LoadingImpl> implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);


/// Create a copy of SuggestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? suggestions = null,}) {
  return _then(_$LoadingImpl(
suggestions: null == suggestions ? _value._suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<ProjectSuggestion>,
  ));
}


}

/// @nodoc


class _$LoadingImpl  implements Loading {
  const _$LoadingImpl({final  List<ProjectSuggestion> suggestions = const []}): _suggestions = suggestions;

  

 final  List<ProjectSuggestion> _suggestions;
@override@JsonKey() List<ProjectSuggestion> get suggestions {
  if (_suggestions is EqualUnmodifiableListView) return _suggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestions);
}


@override
String toString() {
  return 'SuggestState.loading(suggestions: $suggestions)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadingImpl&&const DeepCollectionEquality().equals(other._suggestions, _suggestions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_suggestions));

/// Create a copy of SuggestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);








}


abstract class Loading implements SuggestState {
  const factory Loading({final  List<ProjectSuggestion> suggestions}) = _$LoadingImpl;
  

  

@override List<ProjectSuggestion> get suggestions;
/// Create a copy of SuggestState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $SuggestStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(_$LoadedImpl value, $Res Function(_$LoadedImpl) then) = __$$LoadedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<ProjectSuggestion> suggestions
});



}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res> extends _$SuggestStateCopyWithImpl<$Res, _$LoadedImpl> implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(_$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);


/// Create a copy of SuggestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? suggestions = null,}) {
  return _then(_$LoadedImpl(
suggestions: null == suggestions ? _value._suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<ProjectSuggestion>,
  ));
}


}

/// @nodoc


class _$LoadedImpl  implements Loaded {
  const _$LoadedImpl({final  List<ProjectSuggestion> suggestions = const []}): _suggestions = suggestions;

  

 final  List<ProjectSuggestion> _suggestions;
@override@JsonKey() List<ProjectSuggestion> get suggestions {
  if (_suggestions is EqualUnmodifiableListView) return _suggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestions);
}


@override
String toString() {
  return 'SuggestState.loaded(suggestions: $suggestions)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadedImpl&&const DeepCollectionEquality().equals(other._suggestions, _suggestions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_suggestions));

/// Create a copy of SuggestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);








}


abstract class Loaded implements SuggestState {
  const factory Loaded({final  List<ProjectSuggestion> suggestions}) = _$LoadedImpl;
  

  

@override List<ProjectSuggestion> get suggestions;
/// Create a copy of SuggestState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$RegenerateSuccessImplCopyWith<$Res> implements $SuggestStateCopyWith<$Res> {
  factory _$$RegenerateSuccessImplCopyWith(_$RegenerateSuccessImpl value, $Res Function(_$RegenerateSuccessImpl) then) = __$$RegenerateSuccessImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<ProjectSuggestion> suggestions
});



}

/// @nodoc
class __$$RegenerateSuccessImplCopyWithImpl<$Res> extends _$SuggestStateCopyWithImpl<$Res, _$RegenerateSuccessImpl> implements _$$RegenerateSuccessImplCopyWith<$Res> {
  __$$RegenerateSuccessImplCopyWithImpl(_$RegenerateSuccessImpl _value, $Res Function(_$RegenerateSuccessImpl) _then)
      : super(_value, _then);


/// Create a copy of SuggestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? suggestions = null,}) {
  return _then(_$RegenerateSuccessImpl(
suggestions: null == suggestions ? _value._suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<ProjectSuggestion>,
  ));
}


}

/// @nodoc


class _$RegenerateSuccessImpl  implements RegenerateSuccess {
  const _$RegenerateSuccessImpl({final  List<ProjectSuggestion> suggestions = const []}): _suggestions = suggestions;

  

 final  List<ProjectSuggestion> _suggestions;
@override@JsonKey() List<ProjectSuggestion> get suggestions {
  if (_suggestions is EqualUnmodifiableListView) return _suggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestions);
}


@override
String toString() {
  return 'SuggestState.regenerateSuccess(suggestions: $suggestions)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$RegenerateSuccessImpl&&const DeepCollectionEquality().equals(other._suggestions, _suggestions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_suggestions));

/// Create a copy of SuggestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$RegenerateSuccessImplCopyWith<_$RegenerateSuccessImpl> get copyWith => __$$RegenerateSuccessImplCopyWithImpl<_$RegenerateSuccessImpl>(this, _$identity);








}


abstract class RegenerateSuccess implements SuggestState {
  const factory RegenerateSuccess({final  List<ProjectSuggestion> suggestions}) = _$RegenerateSuccessImpl;
  

  

@override List<ProjectSuggestion> get suggestions;
/// Create a copy of SuggestState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$RegenerateSuccessImplCopyWith<_$RegenerateSuccessImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $SuggestStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<ProjectSuggestion> suggestions, String message
});



}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$SuggestStateCopyWithImpl<$Res, _$ErrorImpl> implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);


/// Create a copy of SuggestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? suggestions = null,Object? message = null,}) {
  return _then(_$ErrorImpl(
suggestions: null == suggestions ? _value._suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<ProjectSuggestion>,message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$ErrorImpl  implements Error {
  const _$ErrorImpl({final  List<ProjectSuggestion> suggestions = const [], required this.message}): _suggestions = suggestions;

  

 final  List<ProjectSuggestion> _suggestions;
@override@JsonKey() List<ProjectSuggestion> get suggestions {
  if (_suggestions is EqualUnmodifiableListView) return _suggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestions);
}

@override final  String message;

@override
String toString() {
  return 'SuggestState.error(suggestions: $suggestions, message: $message)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ErrorImpl&&const DeepCollectionEquality().equals(other._suggestions, _suggestions)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_suggestions),message);

/// Create a copy of SuggestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);








}


abstract class Error implements SuggestState {
  const factory Error({final  List<ProjectSuggestion> suggestions, required final  String message}) = _$ErrorImpl;
  

  

@override List<ProjectSuggestion> get suggestions; String get message;
/// Create a copy of SuggestState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
