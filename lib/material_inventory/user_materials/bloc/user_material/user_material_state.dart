part of 'user_material_bloc.dart';

@freezed
class UserMaterialState with _$UserMaterialState {
  const factory UserMaterialState.initial({
    @Default([]) List<Material> materials,
  }) = Initial;
  const factory UserMaterialState.loading({
    @Default([]) List<Material> materials,
  }) = Loading;
  const factory UserMaterialState.loaded({
    @Default([]) List<Material> materials,
  }) = Loaded;
  const factory UserMaterialState.error({
    @Default([]) List<Material> materials,
    required String message,
  }) = Error;
}
