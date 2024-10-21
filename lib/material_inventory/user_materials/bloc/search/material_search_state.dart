part of 'material_search_bloc.dart';

@freezed
class MaterialSearchState with _$MaterialSearchState {
  const factory MaterialSearchState.initial({
    @Default([]) List<Material> materials,
  }) = Initial;
  const factory MaterialSearchState.loading({
    @Default([]) List<Material> materials,
  }) = Loading;
  const factory MaterialSearchState.loaded({
    required List<Material> materials,
  }) = Loaded;
  const factory MaterialSearchState.error({
    @Default([]) List<Material> materials,
    required String message,
  }) = Error;
}
