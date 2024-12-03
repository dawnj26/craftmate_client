part of 'report_review_bloc.dart';

@freezed
class ReportReviewEvent with _$ReportReviewEvent {
  const factory ReportReviewEvent.started(String reportId) = _Started;
  const factory ReportReviewEvent.banUser() = _BanUser;
  const factory ReportReviewEvent.unbanUser() = _UnbanUser;
  const factory ReportReviewEvent.dismissReport() = _DismissReport;
}
