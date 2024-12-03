import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:report_repository/report_repository.dart';
import 'package:user_repository/user_repository.dart';

part 'query_report.freezed.dart';
part 'query_report.g.dart';

@freezed
class QueryReport with _$QueryReport {
  const factory QueryReport({
    @Default('') String id,
    @Default(Report()) Report report,
    @Default(User()) User reporter,
    @Default(User()) User reported,
  }) = _QueryReport;

  factory QueryReport.fromJson(Map<String, dynamic> json) =>
      _$QueryReportFromJson(json);
}
