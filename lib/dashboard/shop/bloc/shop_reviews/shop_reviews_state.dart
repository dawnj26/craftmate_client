part of 'shop_reviews_bloc.dart';

@freezed
class ShopReviewsState with _$ShopReviewsState {
  const factory ShopReviewsState.initial({
    @Default(<QueryReview>[]) List<QueryReview> reviews,
  }) = Initial;

  const factory ShopReviewsState.loading({
    @Default(<QueryReview>[]) List<QueryReview> reviews,
  }) = Loading;

  const factory ShopReviewsState.loaded({
    @Default(<QueryReview>[]) List<QueryReview> reviews,
  }) = Loaded;

  const factory ShopReviewsState.error({
    @Default(<QueryReview>[]) List<QueryReview> reviews,
    required String message,
  }) = Error;
}
