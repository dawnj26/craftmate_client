part of 'review_bloc.dart';

@freezed
class ReviewEvent with _$ReviewEvent {
  const factory ReviewEvent.started(int sellerId, int curUserId) = _Started;
}
