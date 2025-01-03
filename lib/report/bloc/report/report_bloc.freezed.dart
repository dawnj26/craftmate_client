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
mixin _$ReportEvent {










}

/// @nodoc
abstract class $ReportEventCopyWith<$Res>  {
  factory $ReportEventCopyWith(ReportEvent value, $Res Function(ReportEvent) then) = _$ReportEventCopyWithImpl<$Res, ReportEvent>;



}

/// @nodoc
class _$ReportEventCopyWithImpl<$Res,$Val extends ReportEvent> implements $ReportEventCopyWith<$Res> {
  _$ReportEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ReportEvent
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>  {
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) = __$$StartedImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res> extends _$ReportEventCopyWithImpl<$Res, _$StartedImpl> implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(_$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);


/// Create a copy of ReportEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$StartedImpl  implements _Started {
  const _$StartedImpl();

  



@override
String toString() {
  return 'ReportEvent.started()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StartedImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _Started implements ReportEvent {
  const factory _Started() = _$StartedImpl;
  

  



}

/// @nodoc
abstract class _$$FilterChangedImplCopyWith<$Res>  {
  factory _$$FilterChangedImplCopyWith(_$FilterChangedImpl value, $Res Function(_$FilterChangedImpl) then) = __$$FilterChangedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 ReportFilter filter
});



}

/// @nodoc
class __$$FilterChangedImplCopyWithImpl<$Res> extends _$ReportEventCopyWithImpl<$Res, _$FilterChangedImpl> implements _$$FilterChangedImplCopyWith<$Res> {
  __$$FilterChangedImplCopyWithImpl(_$FilterChangedImpl _value, $Res Function(_$FilterChangedImpl) _then)
      : super(_value, _then);


/// Create a copy of ReportEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? filter = null,}) {
  return _then(_$FilterChangedImpl(
null == filter ? _value.filter : filter // ignore: cast_nullable_to_non_nullable
as ReportFilter,
  ));
}


}

/// @nodoc


class _$FilterChangedImpl  implements _FilterChanged {
  const _$FilterChangedImpl(this.filter);

  

@override final  ReportFilter filter;

@override
String toString() {
  return 'ReportEvent.filterChanged(filter: $filter)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$FilterChangedImpl&&(identical(other.filter, filter) || other.filter == filter));
}


@override
int get hashCode => Object.hash(runtimeType,filter);

/// Create a copy of ReportEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$FilterChangedImplCopyWith<_$FilterChangedImpl> get copyWith => __$$FilterChangedImplCopyWithImpl<_$FilterChangedImpl>(this, _$identity);








}


abstract class _FilterChanged implements ReportEvent {
  const factory _FilterChanged(final  ReportFilter filter) = _$FilterChangedImpl;
  

  

 ReportFilter get filter;
/// Create a copy of ReportEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$FilterChangedImplCopyWith<_$FilterChangedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
mixin _$ReportState {

 List<QueryReport> get reports => throw _privateConstructorUsedError; ReportFilter get filter => throw _privateConstructorUsedError;







/// Create a copy of ReportState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ReportStateCopyWith<ReportState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ReportStateCopyWith<$Res>  {
  factory $ReportStateCopyWith(ReportState value, $Res Function(ReportState) then) = _$ReportStateCopyWithImpl<$Res, ReportState>;
@useResult
$Res call({
 List<QueryReport> reports, ReportFilter filter
});



}

/// @nodoc
class _$ReportStateCopyWithImpl<$Res,$Val extends ReportState> implements $ReportStateCopyWith<$Res> {
  _$ReportStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ReportState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reports = null,Object? filter = null,}) {
  return _then(_value.copyWith(
reports: null == reports ? _value.reports : reports // ignore: cast_nullable_to_non_nullable
as List<QueryReport>,filter: null == filter ? _value.filter : filter // ignore: cast_nullable_to_non_nullable
as ReportFilter,
  )as $Val);
}

}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $ReportStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<QueryReport> reports, ReportFilter filter
});



}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$ReportStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of ReportState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reports = null,Object? filter = null,}) {
  return _then(_$InitialImpl(
reports: null == reports ? _value._reports : reports // ignore: cast_nullable_to_non_nullable
as List<QueryReport>,filter: null == filter ? _value.filter : filter // ignore: cast_nullable_to_non_nullable
as ReportFilter,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl({final  List<QueryReport> reports = const <QueryReport>[], this.filter = ReportFilter.all}): _reports = reports;

  

 final  List<QueryReport> _reports;
@override@JsonKey() List<QueryReport> get reports {
  if (_reports is EqualUnmodifiableListView) return _reports;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reports);
}

@override@JsonKey() final  ReportFilter filter;

@override
String toString() {
  return 'ReportState.initial(reports: $reports, filter: $filter)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&const DeepCollectionEquality().equals(other._reports, _reports)&&(identical(other.filter, filter) || other.filter == filter));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_reports),filter);

/// Create a copy of ReportState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements ReportState {
  const factory Initial({final  List<QueryReport> reports, final  ReportFilter filter}) = _$InitialImpl;
  

  

@override List<QueryReport> get reports;@override ReportFilter get filter;
/// Create a copy of ReportState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> implements $ReportStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl value, $Res Function(_$LoadingImpl) then) = __$$LoadingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<QueryReport> reports, ReportFilter filter
});



}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$ReportStateCopyWithImpl<$Res, _$LoadingImpl> implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);


/// Create a copy of ReportState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reports = null,Object? filter = null,}) {
  return _then(_$LoadingImpl(
reports: null == reports ? _value._reports : reports // ignore: cast_nullable_to_non_nullable
as List<QueryReport>,filter: null == filter ? _value.filter : filter // ignore: cast_nullable_to_non_nullable
as ReportFilter,
  ));
}


}

/// @nodoc


class _$LoadingImpl  implements Loading {
  const _$LoadingImpl({final  List<QueryReport> reports = const <QueryReport>[], this.filter = ReportFilter.all}): _reports = reports;

  

 final  List<QueryReport> _reports;
@override@JsonKey() List<QueryReport> get reports {
  if (_reports is EqualUnmodifiableListView) return _reports;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reports);
}

@override@JsonKey() final  ReportFilter filter;

@override
String toString() {
  return 'ReportState.loading(reports: $reports, filter: $filter)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadingImpl&&const DeepCollectionEquality().equals(other._reports, _reports)&&(identical(other.filter, filter) || other.filter == filter));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_reports),filter);

/// Create a copy of ReportState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);








}


abstract class Loading implements ReportState {
  const factory Loading({final  List<QueryReport> reports, final  ReportFilter filter}) = _$LoadingImpl;
  

  

@override List<QueryReport> get reports;@override ReportFilter get filter;
/// Create a copy of ReportState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $ReportStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(_$LoadedImpl value, $Res Function(_$LoadedImpl) then) = __$$LoadedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<QueryReport> reports, ReportFilter filter
});



}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res> extends _$ReportStateCopyWithImpl<$Res, _$LoadedImpl> implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(_$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);


/// Create a copy of ReportState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reports = null,Object? filter = null,}) {
  return _then(_$LoadedImpl(
reports: null == reports ? _value._reports : reports // ignore: cast_nullable_to_non_nullable
as List<QueryReport>,filter: null == filter ? _value.filter : filter // ignore: cast_nullable_to_non_nullable
as ReportFilter,
  ));
}


}

/// @nodoc


class _$LoadedImpl  implements Loaded {
  const _$LoadedImpl({final  List<QueryReport> reports = const <QueryReport>[], this.filter = ReportFilter.all}): _reports = reports;

  

 final  List<QueryReport> _reports;
@override@JsonKey() List<QueryReport> get reports {
  if (_reports is EqualUnmodifiableListView) return _reports;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reports);
}

@override@JsonKey() final  ReportFilter filter;

@override
String toString() {
  return 'ReportState.loaded(reports: $reports, filter: $filter)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadedImpl&&const DeepCollectionEquality().equals(other._reports, _reports)&&(identical(other.filter, filter) || other.filter == filter));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_reports),filter);

/// Create a copy of ReportState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);








}


abstract class Loaded implements ReportState {
  const factory Loaded({final  List<QueryReport> reports, final  ReportFilter filter}) = _$LoadedImpl;
  

  

@override List<QueryReport> get reports;@override ReportFilter get filter;
/// Create a copy of ReportState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $ReportStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String message, List<QueryReport> reports, ReportFilter filter
});



}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$ReportStateCopyWithImpl<$Res, _$ErrorImpl> implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);


/// Create a copy of ReportState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? reports = null,Object? filter = null,}) {
  return _then(_$ErrorImpl(
message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,reports: null == reports ? _value._reports : reports // ignore: cast_nullable_to_non_nullable
as List<QueryReport>,filter: null == filter ? _value.filter : filter // ignore: cast_nullable_to_non_nullable
as ReportFilter,
  ));
}


}

/// @nodoc


class _$ErrorImpl  implements Error {
  const _$ErrorImpl({required this.message, final  List<QueryReport> reports = const <QueryReport>[], this.filter = ReportFilter.all}): _reports = reports;

  

@override final  String message;
 final  List<QueryReport> _reports;
@override@JsonKey() List<QueryReport> get reports {
  if (_reports is EqualUnmodifiableListView) return _reports;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reports);
}

@override@JsonKey() final  ReportFilter filter;

@override
String toString() {
  return 'ReportState.error(message: $message, reports: $reports, filter: $filter)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ErrorImpl&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._reports, _reports)&&(identical(other.filter, filter) || other.filter == filter));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(_reports),filter);

/// Create a copy of ReportState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);








}


abstract class Error implements ReportState {
  const factory Error({required final  String message, final  List<QueryReport> reports, final  ReportFilter filter}) = _$ErrorImpl;
  

  

 String get message;@override List<QueryReport> get reports;@override ReportFilter get filter;
/// Create a copy of ReportState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
