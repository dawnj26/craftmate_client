part of 'report_review_bloc.dart';

@freezed
class ReportReviewState with _$ReportReviewState {
  const factory ReportReviewState.initial({
    @Default(QueryReport()) QueryReport query,
  }) = Initial;

  const factory ReportReviewState.loading({
    @Default(QueryReport()) QueryReport query,
  }) = Loading;

  const factory ReportReviewState.dismissing({
    @Default(QueryReport()) QueryReport query,
  }) = Dismissing;

  const factory ReportReviewState.dismissed({
    @Default(QueryReport()) QueryReport query,
  }) = Dismissed;

  const factory ReportReviewState.banned({
    @Default(QueryReport()) QueryReport query,
  }) = Banned;

  const factory ReportReviewState.unbanned({
    @Default(QueryReport()) QueryReport query,
  }) = Unbanned;

  const factory ReportReviewState.loaded({
    @Default(QueryReport()) QueryReport query,
  }) = Loaded;

  const factory ReportReviewState.error({
    required String message,
    @Default(QueryReport()) QueryReport query,
  }) = Error;
}
