part of 'user_material_bloc.dart';

@freezed
class UserMaterialState with _$UserMaterialState {
  const factory UserMaterialState.initial({
    @Default([]) List<Material> materials,
  }) = _Initial;
  const factory UserMaterialState.loading({
    @Default([]) List<Material> materials,
  }) = _Loading;
  const factory UserMaterialState.loaded({
    @Default([]) List<Material> materials,
  }) = _Loaded;
  const factory UserMaterialState.error({
    @Default([]) List<Material> materials,
    required String message,
  }) = _Error;
}
