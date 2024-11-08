part of 'user_profile_bloc.dart';

@freezed
class UserProfileState with _$UserProfileState {
  const factory UserProfileState.initial({
    @Default(User()) User user,
  }) = Initial;
  const factory UserProfileState.loading({
    @Default(User()) User user,
  }) = Loading;
  const factory UserProfileState.loaded({
    @Default(User()) User user,
  }) = Loaded;
  const factory UserProfileState.error({
    @Default(User()) User user,
    required String message,
  }) = Error;
}
