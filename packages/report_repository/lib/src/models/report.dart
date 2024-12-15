import 'package:freezed_annotation/freezed_annotation.dart';

part 'report.freezed.dart';
part 'report.g.dart';

@freezed
class Report with _$Report {
  const factory Report({
    @Default(ReportReason.other) ReportReason reason,
    @Default('') String description,
    @Default(-1) int reporterId,
    @Default(-1) int reportedId,
    @Default(false) bool isReviewed,
    @Default([]) List<String> images,
    DateTime? createdAt,
  }) = _Report;

  factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);
}

enum ReportReason {
  spam,
  inappropriate,
  harassment,
  other,
}
