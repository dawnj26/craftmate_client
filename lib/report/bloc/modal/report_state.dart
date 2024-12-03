part of 'report_bloc.dart';

@freezed
class ReportModalState with _$ReportModalState {
  const factory ReportModalState({
    ReportReason? selectedReason,
    @Default('') String description,
  }) = _ReportState;

  const factory ReportModalState.initial({
    ReportReason? selectedReason,
    @Default('') String description,
  }) = _Initial;

  const factory ReportModalState.loading({
    ReportReason? selectedReason,
    @Default('') String description,
  }) = Loading;

  const factory ReportModalState.success({
    ReportReason? selectedReason,
    @Default('') String description,
  }) = Success;

  const factory ReportModalState.failure({
    ReportReason? selectedReason,
    @Default('') String description,
    required String message,
  }) = Failure;
}
