part of 'category_search_bloc.dart';

@freezed
class CategorySearchState with _$CategorySearchState {
  const factory CategorySearchState.initial({
    @Default([]) List<ProjectCategory> categories,
    @Default([]) List<ProjectCategory> filteredCategories,
  }) = _Initial;
  const factory CategorySearchState.loaded({
    @Default([]) List<ProjectCategory> categories,
    @Default([]) List<ProjectCategory> filteredCategories,
  }) = _Loaded;
}
