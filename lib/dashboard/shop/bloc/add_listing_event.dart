part of 'add_listing_bloc.dart';

@freezed
class AddListingEvent with _$AddListingEvent {
  const factory AddListingEvent.started() = _Started;
  const factory AddListingEvent.titleChanged(String title) = _TitleChanged;
  const factory AddListingEvent.priceChanged(String price) = _PriceChanged;
  const factory AddListingEvent.descriptionChanged(String description) =
      _DescriptionChanged;
  const factory AddListingEvent.categoryChanged(String category) =
      _CategoryChanged;
  const factory AddListingEvent.addressChanged(Place place) = _AddressChanged;
  const factory AddListingEvent.imageAdded(List<String> images) = _ImageAdded;
  const factory AddListingEvent.imageRemoved(int index) = _ImageRemoved;
  const factory AddListingEvent.published(User user) = _Published;
}
