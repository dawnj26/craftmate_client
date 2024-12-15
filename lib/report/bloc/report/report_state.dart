part of 'report_bloc.dart';

@freezed
class ReportState with _$ReportState {
  const factory ReportState.initial({
    @Default(<QueryReport>[]) List<QueryReport> reports,
    @Default(ReportFilter.all) ReportFilter filter,
  }) = Initial;

  const factory ReportState.loading({
    @Default(<QueryReport>[]) List<QueryReport> reports,
    @Default(ReportFilter.all) ReportFilter filter,
  }) = Loading;

  const factory ReportState.loaded({
    @Default(<QueryReport>[]) List<QueryReport> reports,
    @Default(ReportFilter.all) ReportFilter filter,
  }) = Loaded;

  const factory ReportState.error({
    required String message,
    @Default(<QueryReport>[]) List<QueryReport> reports,
    @Default(ReportFilter.all) ReportFilter filter,
  }) = Error;
}

enum ReportFilter {
  all,
  pending,
  resolved,
}

extension ReportFilterX on ReportFilter {
  String get value {
    switch (this) {
      case ReportFilter.all:
        return 'All';
      case ReportFilter.pending:
        return 'Pending';
      case ReportFilter.resolved:
        return 'Resolved';
    }
  }

  List<QueryReport> filterReports(List<QueryReport> reports) {
    switch (this) {
      case ReportFilter.all:
        return reports;
      case ReportFilter.pending:
        return reports.where((query) => !query.report.isReviewed).toList();
      case ReportFilter.resolved:
        return reports.where((query) => query.report.isReviewed).toList();
    }
  }
}
