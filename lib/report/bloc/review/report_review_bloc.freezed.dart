// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_review_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReportReviewEvent {










}

/// @nodoc
abstract class $ReportReviewEventCopyWith<$Res>  {
  factory $ReportReviewEventCopyWith(ReportReviewEvent value, $Res Function(ReportReviewEvent) then) = _$ReportReviewEventCopyWithImpl<$Res, ReportReviewEvent>;



}

/// @nodoc
class _$ReportReviewEventCopyWithImpl<$Res,$Val extends ReportReviewEvent> implements $ReportReviewEventCopyWith<$Res> {
  _$ReportReviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ReportReviewEvent
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>  {
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) = __$$StartedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String reportId
});



}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res> extends _$ReportReviewEventCopyWithImpl<$Res, _$StartedImpl> implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(_$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);


/// Create a copy of ReportReviewEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reportId = null,}) {
  return _then(_$StartedImpl(
null == reportId ? _value.reportId : reportId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$StartedImpl  implements _Started {
  const _$StartedImpl(this.reportId);

  

@override final  String reportId;

@override
String toString() {
  return 'ReportReviewEvent.started(reportId: $reportId)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StartedImpl&&(identical(other.reportId, reportId) || other.reportId == reportId));
}


@override
int get hashCode => Object.hash(runtimeType,reportId);

/// Create a copy of ReportReviewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$StartedImplCopyWith<_$StartedImpl> get copyWith => __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);








}


abstract class _Started implements ReportReviewEvent {
  const factory _Started(final  String reportId) = _$StartedImpl;
  

  

 String get reportId;
/// Create a copy of ReportReviewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$StartedImplCopyWith<_$StartedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$BanUserImplCopyWith<$Res>  {
  factory _$$BanUserImplCopyWith(_$BanUserImpl value, $Res Function(_$BanUserImpl) then) = __$$BanUserImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$BanUserImplCopyWithImpl<$Res> extends _$ReportReviewEventCopyWithImpl<$Res, _$BanUserImpl> implements _$$BanUserImplCopyWith<$Res> {
  __$$BanUserImplCopyWithImpl(_$BanUserImpl _value, $Res Function(_$BanUserImpl) _then)
      : super(_value, _then);


/// Create a copy of ReportReviewEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$BanUserImpl  implements _BanUser {
  const _$BanUserImpl();

  



@override
String toString() {
  return 'ReportReviewEvent.banUser()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$BanUserImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _BanUser implements ReportReviewEvent {
  const factory _BanUser() = _$BanUserImpl;
  

  



}

/// @nodoc
abstract class _$$UnbanUserImplCopyWith<$Res>  {
  factory _$$UnbanUserImplCopyWith(_$UnbanUserImpl value, $Res Function(_$UnbanUserImpl) then) = __$$UnbanUserImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$UnbanUserImplCopyWithImpl<$Res> extends _$ReportReviewEventCopyWithImpl<$Res, _$UnbanUserImpl> implements _$$UnbanUserImplCopyWith<$Res> {
  __$$UnbanUserImplCopyWithImpl(_$UnbanUserImpl _value, $Res Function(_$UnbanUserImpl) _then)
      : super(_value, _then);


/// Create a copy of ReportReviewEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$UnbanUserImpl  implements _UnbanUser {
  const _$UnbanUserImpl();

  



@override
String toString() {
  return 'ReportReviewEvent.unbanUser()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$UnbanUserImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _UnbanUser implements ReportReviewEvent {
  const factory _UnbanUser() = _$UnbanUserImpl;
  

  



}

/// @nodoc
abstract class _$$DismissReportImplCopyWith<$Res>  {
  factory _$$DismissReportImplCopyWith(_$DismissReportImpl value, $Res Function(_$DismissReportImpl) then) = __$$DismissReportImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$DismissReportImplCopyWithImpl<$Res> extends _$ReportReviewEventCopyWithImpl<$Res, _$DismissReportImpl> implements _$$DismissReportImplCopyWith<$Res> {
  __$$DismissReportImplCopyWithImpl(_$DismissReportImpl _value, $Res Function(_$DismissReportImpl) _then)
      : super(_value, _then);


/// Create a copy of ReportReviewEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$DismissReportImpl  implements _DismissReport {
  const _$DismissReportImpl();

  



@override
String toString() {
  return 'ReportReviewEvent.dismissReport()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$DismissReportImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _DismissReport implements ReportReviewEvent {
  const factory _DismissReport() = _$DismissReportImpl;
  

  



}

/// @nodoc
mixin _$ReportReviewState {

 QueryReport get query => throw _privateConstructorUsedError;







/// Create a copy of ReportReviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ReportReviewStateCopyWith<ReportReviewState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ReportReviewStateCopyWith<$Res>  {
  factory $ReportReviewStateCopyWith(ReportReviewState value, $Res Function(ReportReviewState) then) = _$ReportReviewStateCopyWithImpl<$Res, ReportReviewState>;
@useResult
$Res call({
 QueryReport query
});


$QueryReportCopyWith<$Res> get query;
}

/// @nodoc
class _$ReportReviewStateCopyWithImpl<$Res,$Val extends ReportReviewState> implements $ReportReviewStateCopyWith<$Res> {
  _$ReportReviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ReportReviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,}) {
  return _then(_value.copyWith(
query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as QueryReport,
  )as $Val);
}
/// Create a copy of ReportReviewState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QueryReportCopyWith<$Res> get query {
  
  return $QueryReportCopyWith<$Res>(_value.query, (value) {
    return _then(_value.copyWith(query: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $ReportReviewStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 QueryReport query
});


@override $QueryReportCopyWith<$Res> get query;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$ReportReviewStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of ReportReviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,}) {
  return _then(_$InitialImpl(
query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as QueryReport,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl({this.query = const QueryReport()});

  

@override@JsonKey() final  QueryReport query;

@override
String toString() {
  return 'ReportReviewState.initial(query: $query)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

/// Create a copy of ReportReviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements ReportReviewState {
  const factory Initial({final  QueryReport query}) = _$InitialImpl;
  

  

@override QueryReport get query;
/// Create a copy of ReportReviewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> implements $ReportReviewStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl value, $Res Function(_$LoadingImpl) then) = __$$LoadingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 QueryReport query
});


@override $QueryReportCopyWith<$Res> get query;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$ReportReviewStateCopyWithImpl<$Res, _$LoadingImpl> implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);


/// Create a copy of ReportReviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,}) {
  return _then(_$LoadingImpl(
query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as QueryReport,
  ));
}


}

/// @nodoc


class _$LoadingImpl  implements Loading {
  const _$LoadingImpl({this.query = const QueryReport()});

  

@override@JsonKey() final  QueryReport query;

@override
String toString() {
  return 'ReportReviewState.loading(query: $query)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadingImpl&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

/// Create a copy of ReportReviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);








}


abstract class Loading implements ReportReviewState {
  const factory Loading({final  QueryReport query}) = _$LoadingImpl;
  

  

@override QueryReport get query;
/// Create a copy of ReportReviewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$DismissingImplCopyWith<$Res> implements $ReportReviewStateCopyWith<$Res> {
  factory _$$DismissingImplCopyWith(_$DismissingImpl value, $Res Function(_$DismissingImpl) then) = __$$DismissingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 QueryReport query
});


@override $QueryReportCopyWith<$Res> get query;
}

/// @nodoc
class __$$DismissingImplCopyWithImpl<$Res> extends _$ReportReviewStateCopyWithImpl<$Res, _$DismissingImpl> implements _$$DismissingImplCopyWith<$Res> {
  __$$DismissingImplCopyWithImpl(_$DismissingImpl _value, $Res Function(_$DismissingImpl) _then)
      : super(_value, _then);


/// Create a copy of ReportReviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,}) {
  return _then(_$DismissingImpl(
query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as QueryReport,
  ));
}


}

/// @nodoc


class _$DismissingImpl  implements Dismissing {
  const _$DismissingImpl({this.query = const QueryReport()});

  

@override@JsonKey() final  QueryReport query;

@override
String toString() {
  return 'ReportReviewState.dismissing(query: $query)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$DismissingImpl&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

/// Create a copy of ReportReviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$DismissingImplCopyWith<_$DismissingImpl> get copyWith => __$$DismissingImplCopyWithImpl<_$DismissingImpl>(this, _$identity);








}


abstract class Dismissing implements ReportReviewState {
  const factory Dismissing({final  QueryReport query}) = _$DismissingImpl;
  

  

@override QueryReport get query;
/// Create a copy of ReportReviewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$DismissingImplCopyWith<_$DismissingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$DismissedImplCopyWith<$Res> implements $ReportReviewStateCopyWith<$Res> {
  factory _$$DismissedImplCopyWith(_$DismissedImpl value, $Res Function(_$DismissedImpl) then) = __$$DismissedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 QueryReport query
});


@override $QueryReportCopyWith<$Res> get query;
}

/// @nodoc
class __$$DismissedImplCopyWithImpl<$Res> extends _$ReportReviewStateCopyWithImpl<$Res, _$DismissedImpl> implements _$$DismissedImplCopyWith<$Res> {
  __$$DismissedImplCopyWithImpl(_$DismissedImpl _value, $Res Function(_$DismissedImpl) _then)
      : super(_value, _then);


/// Create a copy of ReportReviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,}) {
  return _then(_$DismissedImpl(
query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as QueryReport,
  ));
}


}

/// @nodoc


class _$DismissedImpl  implements Dismissed {
  const _$DismissedImpl({this.query = const QueryReport()});

  

@override@JsonKey() final  QueryReport query;

@override
String toString() {
  return 'ReportReviewState.dismissed(query: $query)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$DismissedImpl&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

/// Create a copy of ReportReviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$DismissedImplCopyWith<_$DismissedImpl> get copyWith => __$$DismissedImplCopyWithImpl<_$DismissedImpl>(this, _$identity);








}


abstract class Dismissed implements ReportReviewState {
  const factory Dismissed({final  QueryReport query}) = _$DismissedImpl;
  

  

@override QueryReport get query;
/// Create a copy of ReportReviewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$DismissedImplCopyWith<_$DismissedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$BannedImplCopyWith<$Res> implements $ReportReviewStateCopyWith<$Res> {
  factory _$$BannedImplCopyWith(_$BannedImpl value, $Res Function(_$BannedImpl) then) = __$$BannedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 QueryReport query
});


@override $QueryReportCopyWith<$Res> get query;
}

/// @nodoc
class __$$BannedImplCopyWithImpl<$Res> extends _$ReportReviewStateCopyWithImpl<$Res, _$BannedImpl> implements _$$BannedImplCopyWith<$Res> {
  __$$BannedImplCopyWithImpl(_$BannedImpl _value, $Res Function(_$BannedImpl) _then)
      : super(_value, _then);


/// Create a copy of ReportReviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,}) {
  return _then(_$BannedImpl(
query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as QueryReport,
  ));
}


}

/// @nodoc


class _$BannedImpl  implements Banned {
  const _$BannedImpl({this.query = const QueryReport()});

  

@override@JsonKey() final  QueryReport query;

@override
String toString() {
  return 'ReportReviewState.banned(query: $query)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$BannedImpl&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

/// Create a copy of ReportReviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$BannedImplCopyWith<_$BannedImpl> get copyWith => __$$BannedImplCopyWithImpl<_$BannedImpl>(this, _$identity);








}


abstract class Banned implements ReportReviewState {
  const factory Banned({final  QueryReport query}) = _$BannedImpl;
  

  

@override QueryReport get query;
/// Create a copy of ReportReviewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$BannedImplCopyWith<_$BannedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$UnbannedImplCopyWith<$Res> implements $ReportReviewStateCopyWith<$Res> {
  factory _$$UnbannedImplCopyWith(_$UnbannedImpl value, $Res Function(_$UnbannedImpl) then) = __$$UnbannedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 QueryReport query
});


@override $QueryReportCopyWith<$Res> get query;
}

/// @nodoc
class __$$UnbannedImplCopyWithImpl<$Res> extends _$ReportReviewStateCopyWithImpl<$Res, _$UnbannedImpl> implements _$$UnbannedImplCopyWith<$Res> {
  __$$UnbannedImplCopyWithImpl(_$UnbannedImpl _value, $Res Function(_$UnbannedImpl) _then)
      : super(_value, _then);


/// Create a copy of ReportReviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,}) {
  return _then(_$UnbannedImpl(
query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as QueryReport,
  ));
}


}

/// @nodoc


class _$UnbannedImpl  implements Unbanned {
  const _$UnbannedImpl({this.query = const QueryReport()});

  

@override@JsonKey() final  QueryReport query;

@override
String toString() {
  return 'ReportReviewState.unbanned(query: $query)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$UnbannedImpl&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

/// Create a copy of ReportReviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$UnbannedImplCopyWith<_$UnbannedImpl> get copyWith => __$$UnbannedImplCopyWithImpl<_$UnbannedImpl>(this, _$identity);








}


abstract class Unbanned implements ReportReviewState {
  const factory Unbanned({final  QueryReport query}) = _$UnbannedImpl;
  

  

@override QueryReport get query;
/// Create a copy of ReportReviewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$UnbannedImplCopyWith<_$UnbannedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $ReportReviewStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(_$LoadedImpl value, $Res Function(_$LoadedImpl) then) = __$$LoadedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 QueryReport query
});


@override $QueryReportCopyWith<$Res> get query;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res> extends _$ReportReviewStateCopyWithImpl<$Res, _$LoadedImpl> implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(_$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);


/// Create a copy of ReportReviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,}) {
  return _then(_$LoadedImpl(
query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as QueryReport,
  ));
}


}

/// @nodoc


class _$LoadedImpl  implements Loaded {
  const _$LoadedImpl({this.query = const QueryReport()});

  

@override@JsonKey() final  QueryReport query;

@override
String toString() {
  return 'ReportReviewState.loaded(query: $query)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadedImpl&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

/// Create a copy of ReportReviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);








}


abstract class Loaded implements ReportReviewState {
  const factory Loaded({final  QueryReport query}) = _$LoadedImpl;
  

  

@override QueryReport get query;
/// Create a copy of ReportReviewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $ReportReviewStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String message, QueryReport query
});


@override $QueryReportCopyWith<$Res> get query;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$ReportReviewStateCopyWithImpl<$Res, _$ErrorImpl> implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);


/// Create a copy of ReportReviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? query = null,}) {
  return _then(_$ErrorImpl(
message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as QueryReport,
  ));
}


}

/// @nodoc


class _$ErrorImpl  implements Error {
  const _$ErrorImpl({required this.message, this.query = const QueryReport()});

  

@override final  String message;
@override@JsonKey() final  QueryReport query;

@override
String toString() {
  return 'ReportReviewState.error(message: $message, query: $query)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ErrorImpl&&(identical(other.message, message) || other.message == message)&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,message,query);

/// Create a copy of ReportReviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);








}


abstract class Error implements ReportReviewState {
  const factory Error({required final  String message, final  QueryReport query}) = _$ErrorImpl;
  

  

 String get message;@override QueryReport get query;
/// Create a copy of ReportReviewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
