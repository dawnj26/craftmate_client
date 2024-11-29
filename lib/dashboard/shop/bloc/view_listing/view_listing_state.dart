part of 'view_listing_bloc.dart';

@freezed
class ViewListingState with _$ViewListingState {
  const factory ViewListingState.initial({
    @Default(QueryProduct()) QueryProduct query,
    @Default(User()) User seller,
    @Default('') String message,
  }) = Initial;

  const factory ViewListingState.loading({
    @Default(QueryProduct()) QueryProduct query,
    @Default(User()) User seller,
    @Default('') String message,
  }) = Loading;

  const factory ViewListingState.sending({
    @Default(QueryProduct()) QueryProduct query,
    @Default(User()) User seller,
    @Default('') String message,
  }) = Sending;

  const factory ViewListingState.sent({
    @Default(QueryProduct()) QueryProduct query,
    @Default(User()) User seller,
    @Default('') String message,
  }) = Sent;

  const factory ViewListingState.loaded({
    required QueryProduct query,
    required User seller,
    @Default('') String message,
  }) = Loaded;

  const factory ViewListingState.deleting({
    @Default(QueryProduct()) QueryProduct query,
    @Default(User()) User seller,
    @Default('') String message,
  }) = Deleting;

  const factory ViewListingState.deleted({
    @Default(QueryProduct()) QueryProduct query,
    @Default(User()) User seller,
    @Default('') String message,
  }) = Deleted;

  const factory ViewListingState.error({
    required String errMessage,
    @Default(QueryProduct()) QueryProduct query,
    @Default(User()) User seller,
    @Default('') String message,
  }) = Error;
}
