part of 'listing_category_bloc.dart';

@freezed
class ListingCategoryEvent with _$ListingCategoryEvent {
  const factory ListingCategoryEvent.started(String category) = _Started;
}
