part of 'write_review_bloc.dart';

@freezed
class WriteReviewEvent with _$WriteReviewEvent {
  const factory WriteReviewEvent.started(
    String listingId,
    int sellerId,
  ) = _Started;

  const factory WriteReviewEvent.ratingChanged(int rating) = _RatingChanged;
  const factory WriteReviewEvent.ratingSubmitted(int userId) = _RatingSubmitted;
  const factory WriteReviewEvent.reviewChanged(String review) = _ReviewChanged;
}
