part of 'inbox_bloc.dart';

@freezed
class InboxState with _$InboxState {
  const factory InboxState.initial({
    @Default([]) List<ListingChat> listingChats,
  }) = Initial;
  const factory InboxState.loading({
    @Default([]) List<ListingChat> listingChats,
  }) = Loading;
  const factory InboxState.loaded({
    @Default([]) List<ListingChat> listingChats,
  }) = Loaded;
  const factory InboxState.error({
    @Default([]) List<ListingChat> listingChats,
  }) = Error;
}
