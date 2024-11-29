part of 'edit_listing_bloc.dart';

@freezed
class EditListingEvent with _$EditListingEvent {
  const factory EditListingEvent.started(String id) = _Started;
  const factory EditListingEvent.titleChanged(String title) = _TitleChanged;
  const factory EditListingEvent.priceChanged(String price) = _PriceChanged;
  const factory EditListingEvent.descriptionChanged(String description) =
      _DescriptionChanged;
  const factory EditListingEvent.categoryChanged(String category) =
      _CategoryChanged;
  const factory EditListingEvent.addressChanged(Place place) = _AddressChanged;
  const factory EditListingEvent.imageAdded(List<String> images) = _ImageAdded;
  const factory EditListingEvent.imageRemoved(int index) = _ImageRemoved;
  const factory EditListingEvent.networkImageRemoved(int index) =
      _NetworkImageRemoved;
  const factory EditListingEvent.updated(int userId) = _Updated;
}
