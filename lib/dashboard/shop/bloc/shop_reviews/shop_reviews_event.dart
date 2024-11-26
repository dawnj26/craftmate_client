part of 'shop_reviews_bloc.dart';

@freezed
class ShopReviewsEvent with _$ShopReviewsEvent {
  const factory ShopReviewsEvent.started(int userId) = _Started;
}
