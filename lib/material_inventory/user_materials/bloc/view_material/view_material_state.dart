part of 'view_material_bloc.dart';

@freezed
class ViewMaterialState with _$ViewMaterialState {
  const factory ViewMaterialState.initial() = Initial;

  const factory ViewMaterialState.initializing() = Initializing;
  const factory ViewMaterialState.initialized({
    required Material material,
  }) = Initialized;
  const factory ViewMaterialState.deleting({
    required Material material,
  }) = Deleting;
  const factory ViewMaterialState.deleted({
    required Material material,
  }) = Deleted;

  const factory ViewMaterialState.error({
    required String message,
  }) = Error;
}
