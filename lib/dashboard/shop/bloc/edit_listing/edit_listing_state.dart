part of 'edit_listing_bloc.dart';

@freezed
class EditListingState with _$EditListingState {
  const factory EditListingState.initial({
    @Default(ListingTitle.pure()) ListingTitle title,
    @Default(ListingPrice.pure()) ListingPrice price,
    @Default('') String description,
    @Default(ListingCategory.pure('')) ListingCategory category,
    @Default([]) List<String> images,
    @Default([]) List<String> networkImages,
    @Default([]) List<ProjectCategory> categories,
    Place? place,
  }) = Initial;

  const factory EditListingState.loading({
    @Default(ListingTitle.pure()) ListingTitle title,
    @Default(ListingPrice.pure()) ListingPrice price,
    @Default('') String description,
    @Default(ListingCategory.pure('')) ListingCategory category,
    @Default([]) List<String> images,
    @Default([]) List<String> networkImages,
    @Default([]) List<ProjectCategory> categories,
    Place? place,
  }) = Loading;

  const factory EditListingState.loaded({
    @Default(ListingTitle.pure()) ListingTitle title,
    @Default(ListingPrice.pure()) ListingPrice price,
    @Default('') String description,
    @Default(ListingCategory.pure('')) ListingCategory category,
    @Default([]) List<String> images,
    @Default([]) List<String> networkImages,
    @Default([]) List<ProjectCategory> categories,
    Place? place,
  }) = Loaded;

  const factory EditListingState.updating({
    @Default(ListingTitle.pure()) ListingTitle title,
    @Default(ListingPrice.pure()) ListingPrice price,
    @Default('') String description,
    @Default(ListingCategory.pure('')) ListingCategory category,
    @Default([]) List<String> images,
    @Default([]) List<String> networkImages,
    @Default([]) List<ProjectCategory> categories,
    Place? place,
  }) = Updating;

  const factory EditListingState.success({
    @Default(ListingTitle.pure()) ListingTitle title,
    @Default(ListingPrice.pure()) ListingPrice price,
    @Default('') String description,
    @Default(ListingCategory.pure('')) ListingCategory category,
    @Default([]) List<String> images,
    @Default([]) List<String> networkImages,
    @Default([]) List<ProjectCategory> categories,
    Place? place,
  }) = Success;

  const factory EditListingState.error({
    required String message,
    @Default(ListingTitle.pure()) ListingTitle title,
    @Default(ListingPrice.pure()) ListingPrice price,
    @Default('') String description,
    @Default(ListingCategory.pure('')) ListingCategory category,
    @Default([]) List<String> images,
    @Default([]) List<String> networkImages,
    @Default([]) List<ProjectCategory> categories,
    Place? place,
  }) = Error;
}
