part of 'report_bloc.dart';

@freezed
class ReportModalEvent with _$ReportModalEvent {
  const factory ReportModalEvent.started() = _Started;
  const factory ReportModalEvent.reasonSelected(ReportReason reason) =
      _ReasonSelected;
  const factory ReportModalEvent.descriptionChanged(String description) =
      _DescriptionChanged;
  const factory ReportModalEvent.submitted(int reporterId, int reportedId) =
      _Submitted;
  const factory ReportModalEvent.photoAdded(List<String> imagesPath) =
      _PhotoAdded;
  const factory ReportModalEvent.photoRemoved(int index) = _PhotoRemoved;
}
