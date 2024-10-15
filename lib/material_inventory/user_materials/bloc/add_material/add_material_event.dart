part of 'add_material_bloc.dart';

@freezed
class AddMaterialEvent with _$AddMaterialEvent {
  const factory AddMaterialEvent.started() = _Started;
  const factory AddMaterialEvent.nameChanged(String nameText) = _NameChanged;
  const factory AddMaterialEvent.descriptionChanged(String descriptionText) =
      _DescriptionChanged;
  const factory AddMaterialEvent.quantityChanged(int quantity) =
      _QuantityChanged;
  const factory AddMaterialEvent.imageUploaded(String imagePath) =
      _ImagePathUploaded;
  const factory AddMaterialEvent.submit() = _Submit;
  const factory AddMaterialEvent.categorySelected(int categoryId) =
      _CategorySelected;
}
