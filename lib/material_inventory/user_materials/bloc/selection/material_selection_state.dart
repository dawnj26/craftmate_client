part of 'material_selection_bloc.dart';

@freezed
class MaterialSelectionState with _$MaterialSelectionState {
  const factory MaterialSelectionState.initial({
    @Default([]) List<int> selectedMaterials,
  }) = Initial;
  const factory MaterialSelectionState.on({
    @Default([]) List<int> selectedMaterials,
  }) = On;
  const factory MaterialSelectionState.off({
    @Default([]) List<int> selectedMaterials,
  }) = Off;
}
