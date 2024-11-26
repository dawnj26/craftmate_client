part of 'review_bloc.dart';

@freezed
class ReviewState with _$ReviewState {
  const factory ReviewState.initial() = Initial;
  const factory ReviewState.reviewed() = Reviewed;
  const factory ReviewState.error(String message) = Error;
}
