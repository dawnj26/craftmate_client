part of 'view_profile_bloc.dart';

@freezed
class ViewProfileState with _$ViewProfileState {
  const factory ViewProfileState.initial({
    @Default(User()) User user,
  }) = Initial;
  const factory ViewProfileState.loading({
    @Default(User()) User user,
  }) = Loading;
  const factory ViewProfileState.sharing({
    @Default(User()) User user,
  }) = Sharing;
  const factory ViewProfileState.shared({
    @Default(User()) User user,
    required String link,
  }) = Shared;
  const factory ViewProfileState.loaded({
    @Default(User()) User user,
  }) = Loaded;
  const factory ViewProfileState.error({
    required String message,
    @Default(User()) User user,
  }) = Error;
}
