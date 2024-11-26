part of 'add_listing_bloc.dart';

@freezed
class AddListingState with _$AddListingState {
  const factory AddListingState.initial({
    @Default(ListingTitle.pure()) ListingTitle title,
    @Default(ListingPrice.pure()) ListingPrice price,
    @Default('') String description,
    @Default(ListingCategory.pure('')) ListingCategory category,
    @Default([]) List<String> images,
    @Default([]) List<String> networkImages,
    @Default([]) List<ProjectCategory> categories,
    Place? place,
  }) = Initial;

  const factory AddListingState.loading({
    @Default(ListingTitle.pure()) ListingTitle title,
    @Default(ListingPrice.pure()) ListingPrice price,
    @Default('') String description,
    @Default(ListingCategory.pure('')) ListingCategory category,
    @Default([]) List<String> images,
    @Default([]) List<String> networkImages,
    @Default([]) List<ProjectCategory> categories,
    Place? place,
  }) = Loading;

  const factory AddListingState.loaded({
    @Default(ListingTitle.pure()) ListingTitle title,
    @Default(ListingPrice.pure()) ListingPrice price,
    @Default('') String description,
    @Default(ListingCategory.pure('')) ListingCategory category,
    @Default([]) List<String> images,
    @Default([]) List<String> networkImages,
    @Default([]) List<ProjectCategory> categories,
    Place? place,
  }) = Loaded;

  const factory AddListingState.publishing({
    @Default(ListingTitle.pure()) ListingTitle title,
    @Default(ListingPrice.pure()) ListingPrice price,
    @Default('') String description,
    @Default(ListingCategory.pure('')) ListingCategory category,
    @Default([]) List<String> images,
    @Default([]) List<String> networkImages,
    @Default([]) List<ProjectCategory> categories,
    Place? place,
  }) = Publishing;

  const factory AddListingState.success({
    @Default(ListingTitle.pure()) ListingTitle title,
    @Default(ListingPrice.pure()) ListingPrice price,
    @Default('') String description,
    @Default(ListingCategory.pure('')) ListingCategory category,
    @Default([]) List<String> images,
    @Default([]) List<String> networkImages,
    @Default([]) List<ProjectCategory> categories,
    Place? place,
  }) = Success;

  const factory AddListingState.error({
    @Default(ListingTitle.pure()) ListingTitle title,
    @Default(ListingPrice.pure()) ListingPrice price,
    @Default('') String description,
    @Default(ListingCategory.pure('')) ListingCategory category,
    @Default([]) List<String> images,
    @Default([]) List<String> networkImages,
    @Default([]) List<ProjectCategory> categories,
    Place? place,
    required String message,
  }) = Error;
}
