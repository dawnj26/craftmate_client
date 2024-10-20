part of 'view_material_bloc.dart';

@freezed
class ViewMaterialState with _$ViewMaterialState {
  const factory ViewMaterialState.initial() = _Initial;

  const factory ViewMaterialState.initializing() = _Initializing;
  const factory ViewMaterialState.initialized({
    required Material material,
  }) = _Initialized;
  const factory ViewMaterialState.deleting({
    required Material material,
  }) = Deleting;
  const factory ViewMaterialState.deleted({
    required Material material,
  }) = Deleted;

  const factory ViewMaterialState.error({
    required String message,
  }) = _Error;
}
