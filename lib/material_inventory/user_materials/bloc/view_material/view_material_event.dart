part of 'view_material_bloc.dart';

@freezed
class ViewMaterialEvent with _$ViewMaterialEvent {
  const factory ViewMaterialEvent.started({
    required int materialId,
  }) = _Started;
  const factory ViewMaterialEvent.delete({
    required int materialId,
  }) = _Delete;
}
