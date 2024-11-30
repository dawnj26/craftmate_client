part of 'shop_search_bloc.dart';

@freezed
class ShopSearchEvent with _$ShopSearchEvent {
  const factory ShopSearchEvent.search(String query) = _Search;

  const factory ShopSearchEvent.started() = _Started;
}
