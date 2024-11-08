part of 'edit_profile_bloc.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState.initial({
    @Default(User()) User user,
  }) = Initial;

  const factory EditProfileState.loading({
    @Default(User()) User user,
  }) = Loading;

  const factory EditProfileState.loaded({
    required User user,
  }) = Loaded;
  const factory EditProfileState.uploading({
    @Default(User()) User user,
  }) = Uploading;

  const factory EditProfileState.uploaded({
    required User user,
  }) = Uploaded;

  const factory EditProfileState.error({
    required String message,
    @Default(User()) User user,
  }) = Error;
}
