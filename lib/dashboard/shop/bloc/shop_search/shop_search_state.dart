part of 'shop_search_bloc.dart';

@freezed
class ShopSearchState with _$ShopSearchState {
  const factory ShopSearchState.initial({
    @Default([]) List<SearchSuggestion> results,
    @Default('') String query,
  }) = Initial;

  const factory ShopSearchState.loading({
    @Default([]) List<SearchSuggestion> results,
    @Default('') String query,
  }) = Loading;

  const factory ShopSearchState.loaded({
    @Default([]) List<SearchSuggestion> results,
    @Default('') String query,
  }) = Loaded;

  const factory ShopSearchState.error({
    @Default([]) List<SearchSuggestion> results,
    @Default('') String query,
    required String error,
  }) = Error;
}
