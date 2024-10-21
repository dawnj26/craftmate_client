part of 'material_search_bloc.dart';

@freezed
class MaterialSearchEvent with _$MaterialSearchEvent {
  const factory MaterialSearchEvent.searchMaterial(String query) =
      _SearchMaterial;
  const factory MaterialSearchEvent.clearSearch() = _ClearSearch;
}
