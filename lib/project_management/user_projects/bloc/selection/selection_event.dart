part of 'selection_bloc.dart';

@freezed
class SelectionEvent with _$SelectionEvent {
  const factory SelectionEvent.started({
    required int projectId,
  }) = _Started;

  const factory SelectionEvent.selected({
    required int projectId,
  }) = _Selected;

  const factory SelectionEvent.unselected({
    required int projectId,
  }) = _Unselected;

  const factory SelectionEvent.clear() = _Clear;
}
