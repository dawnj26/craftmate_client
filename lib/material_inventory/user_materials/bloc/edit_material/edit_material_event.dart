part of 'edit_material_bloc.dart';

@freezed
class EditMaterialEvent with _$EditMaterialEvent {
  const factory EditMaterialEvent.started() = _Started;
  const factory EditMaterialEvent.nameChanged(String nameText) = _NameChanged;
  const factory EditMaterialEvent.descriptionChanged(String descriptionText) =
      _DescriptionChanged;
  const factory EditMaterialEvent.quantityChanged(int quantity) =
      _QuantityChanged;
  const factory EditMaterialEvent.imageUploaded(String imagePath) =
      _ImagePathUploaded;
  const factory EditMaterialEvent.submit() = _Submit;
  const factory EditMaterialEvent.categorySelected(int categoryId) =
      _CategorySelected;
  const factory EditMaterialEvent.reset() = _Reset;
}
