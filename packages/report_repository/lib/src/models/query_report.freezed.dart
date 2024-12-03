// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'query_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QueryReport _$QueryReportFromJson(Map<String, dynamic> json) {
  return _QueryReport.fromJson(json);
}

/// @nodoc
mixin _$QueryReport {
  String get id => throw _privateConstructorUsedError;
  Report get report => throw _privateConstructorUsedError;
  User get reporter => throw _privateConstructorUsedError;
  User get reported => throw _privateConstructorUsedError;

  /// Serializes this QueryReport to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QueryReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QueryReportCopyWith<QueryReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryReportCopyWith<$Res> {
  factory $QueryReportCopyWith(
          QueryReport value, $Res Function(QueryReport) then) =
      _$QueryReportCopyWithImpl<$Res, QueryReport>;
  @useResult
  $Res call({String id, Report report, User reporter, User reported});

  $ReportCopyWith<$Res> get report;
  $UserCopyWith<$Res> get reporter;
  $UserCopyWith<$Res> get reported;
}

/// @nodoc
class _$QueryReportCopyWithImpl<$Res, $Val extends QueryReport>
    implements $QueryReportCopyWith<$Res> {
  _$QueryReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QueryReport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? report = null,
    Object? reporter = null,
    Object? reported = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      report: null == report
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as Report,
      reporter: null == reporter
          ? _value.reporter
          : reporter // ignore: cast_nullable_to_non_nullable
              as User,
      reported: null == reported
          ? _value.reported
          : reported // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  /// Create a copy of QueryReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReportCopyWith<$Res> get report {
    return $ReportCopyWith<$Res>(_value.report, (value) {
      return _then(_value.copyWith(report: value) as $Val);
    });
  }

  /// Create a copy of QueryReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get reporter {
    return $UserCopyWith<$Res>(_value.reporter, (value) {
      return _then(_value.copyWith(reporter: value) as $Val);
    });
  }

  /// Create a copy of QueryReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get reported {
    return $UserCopyWith<$Res>(_value.reported, (value) {
      return _then(_value.copyWith(reported: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QueryReportImplCopyWith<$Res>
    implements $QueryReportCopyWith<$Res> {
  factory _$$QueryReportImplCopyWith(
          _$QueryReportImpl value, $Res Function(_$QueryReportImpl) then) =
      __$$QueryReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, Report report, User reporter, User reported});

  @override
  $ReportCopyWith<$Res> get report;
  @override
  $UserCopyWith<$Res> get reporter;
  @override
  $UserCopyWith<$Res> get reported;
}

/// @nodoc
class __$$QueryReportImplCopyWithImpl<$Res>
    extends _$QueryReportCopyWithImpl<$Res, _$QueryReportImpl>
    implements _$$QueryReportImplCopyWith<$Res> {
  __$$QueryReportImplCopyWithImpl(
      _$QueryReportImpl _value, $Res Function(_$QueryReportImpl) _then)
      : super(_value, _then);

  /// Create a copy of QueryReport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? report = null,
    Object? reporter = null,
    Object? reported = null,
  }) {
    return _then(_$QueryReportImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      report: null == report
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as Report,
      reporter: null == reporter
          ? _value.reporter
          : reporter // ignore: cast_nullable_to_non_nullable
              as User,
      reported: null == reported
          ? _value.reported
          : reported // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QueryReportImpl implements _QueryReport {
  const _$QueryReportImpl(
      {this.id = '',
      this.report = const Report(),
      this.reporter = const User(),
      this.reported = const User()});

  factory _$QueryReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$QueryReportImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final Report report;
  @override
  @JsonKey()
  final User reporter;
  @override
  @JsonKey()
  final User reported;

  @override
  String toString() {
    return 'QueryReport(id: $id, report: $report, reporter: $reporter, reported: $reported)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryReportImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.report, report) || other.report == report) &&
            (identical(other.reporter, reporter) ||
                other.reporter == reporter) &&
            (identical(other.reported, reported) ||
                other.reported == reported));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, report, reporter, reported);

  /// Create a copy of QueryReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryReportImplCopyWith<_$QueryReportImpl> get copyWith =>
      __$$QueryReportImplCopyWithImpl<_$QueryReportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QueryReportImplToJson(
      this,
    );
  }
}

abstract class _QueryReport implements QueryReport {
  const factory _QueryReport(
      {final String id,
      final Report report,
      final User reporter,
      final User reported}) = _$QueryReportImpl;

  factory _QueryReport.fromJson(Map<String, dynamic> json) =
      _$QueryReportImpl.fromJson;

  @override
  String get id;
  @override
  Report get report;
  @override
  User get reporter;
  @override
  User get reported;

  /// Create a copy of QueryReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QueryReportImplCopyWith<_$QueryReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
