part of 'report_bloc.dart';

@freezed
class ReportState with _$ReportState {
  const factory ReportState.initial({
    @Default(<QueryReport>[]) List<QueryReport> reports,
  }) = Initial;

  const factory ReportState.loading({
    @Default(<QueryReport>[]) List<QueryReport> reports,
  }) = Loading;

  const factory ReportState.loaded({
    @Default(<QueryReport>[]) List<QueryReport> reports,
  }) = Loaded;

  const factory ReportState.error({
    required String message,
    @Default(<QueryReport>[]) List<QueryReport> reports,
  }) = Error;
}
