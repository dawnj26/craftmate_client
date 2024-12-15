part of 'report_bloc.dart';

@freezed
class ReportModalState with _$ReportModalState {
  const factory ReportModalState({
    ReportReason? selectedReason,
    @Default('') String description,
    @Default([]) List<String> imagesPath,
  }) = _ReportState;

  const factory ReportModalState.initial({
    ReportReason? selectedReason,
    @Default('') String description,
    @Default([]) List<String> imagesPath,
  }) = Initial;

  const factory ReportModalState.loading({
    ReportReason? selectedReason,
    @Default('') String description,
    @Default([]) List<String> imagesPath,
  }) = Loading;

  const factory ReportModalState.success({
    ReportReason? selectedReason,
    @Default('') String description,
    @Default([]) List<String> imagesPath,
  }) = Success;

  const factory ReportModalState.failure({
    ReportReason? selectedReason,
    @Default('') String description,
    @Default([]) List<String> imagesPath,
    required String message,
  }) = Failure;
}
