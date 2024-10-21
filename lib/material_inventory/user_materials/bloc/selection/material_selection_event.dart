part of 'material_selection_bloc.dart';

@freezed
class MaterialSelectionEvent with _$MaterialSelectionEvent {
  const factory MaterialSelectionEvent.started({
    required int materialId,
  }) = _Started;

  const factory MaterialSelectionEvent.selected({
    required int materialId,
  }) = _Selected;

  const factory MaterialSelectionEvent.unselected({
    required int materialId,
  }) = _Unselected;

  const factory MaterialSelectionEvent.clear() = _Clear;
}
