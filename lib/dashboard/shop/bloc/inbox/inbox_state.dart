part of 'inbox_bloc.dart';

@freezed
class InboxState with _$InboxState {
  const factory InboxState.initial({
    @Default([]) List<ListingChat> listingChats,
    @Default(User()) User curUser,
  }) = Initial;
  const factory InboxState.loading({
    @Default([]) List<ListingChat> listingChats,
    @Default(User()) User curUser,
  }) = Loading;
  const factory InboxState.loaded({
    @Default([]) List<ListingChat> listingChats,
    @Default(User()) User curUser,
  }) = Loaded;
  const factory InboxState.error({
    @Default([]) List<ListingChat> listingChats,
    @Default(User()) User curUser,
  }) = Error;
}
