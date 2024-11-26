import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_repository/src/models/review/review.dart';
import 'package:user_repository/user_repository.dart';

part 'query_review.freezed.dart';

@freezed
class QueryReview with _$QueryReview {
  const factory QueryReview({
    @Default('') String id,
    @Default(User()) User user,
    @Default(Review()) Review review,
    @Default(false) bool isLiked,
    @Default(0) int likes,
  }) = _QueryReview;
}
