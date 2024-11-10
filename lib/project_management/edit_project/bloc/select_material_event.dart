part of 'select_material_bloc.dart';

@freezed
class SelectMaterialEvent with _$SelectMaterialEvent {
  const factory SelectMaterialEvent.started() = _Started;
  const factory SelectMaterialEvent.materialSelected(int materialId) =
      _MaterialSelected;
  const factory SelectMaterialEvent.addedMaterials() = _AddedMaterials;
  const factory SelectMaterialEvent.searchStarted() = _SearchStarted;
  const factory SelectMaterialEvent.searchCanceled() = _SearchCanceled;
  const factory SelectMaterialEvent.search(String query) = _Search;
}