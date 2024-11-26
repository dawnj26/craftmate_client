part of 'write_review_bloc.dart';

@freezed
class WriteReviewState with _$WriteReviewState {
  const factory WriteReviewState.initial({
    @Default(User()) User seller,
    @Default(QueryProduct()) QueryProduct query,
    @Default(0) int rating,
    @Default('') String review,
  }) = Initial;

  const factory WriteReviewState.loading({
    @Default(User()) User seller,
    @Default(QueryProduct()) QueryProduct query,
    @Default(0) int rating,
    @Default('') String review,
  }) = Loading;

  const factory WriteReviewState.loaded({
    required User seller,
    required QueryProduct query,
    required int rating,
    @Default('') String review,
  }) = Loaded;

  const factory WriteReviewState.submitting({
    required User seller,
    required QueryProduct query,
    required int rating,
    @Default('') String review,
  }) = Submitting;

  const factory WriteReviewState.success({
    required User seller,
    required QueryProduct query,
    required int rating,
    @Default('') String review,
  }) = Success;

  const factory WriteReviewState.invalid({
    required User seller,
    required QueryProduct query,
    required int rating,
    @Default('') String review,
  }) = Invalid;

  const factory WriteReviewState.error({
    required String message,
    @Default(User()) User seller,
    @Default(QueryProduct()) QueryProduct query,
    @Default(0) int rating,
    @Default('') String review,
  }) = Error;
}
