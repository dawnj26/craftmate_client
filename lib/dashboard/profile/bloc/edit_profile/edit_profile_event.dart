part of 'edit_profile_bloc.dart';

@freezed
class EditProfileEvent with _$EditProfileEvent {
  const factory EditProfileEvent.userChanged({
    required User user,
  }) = _UserChanged;
  const factory EditProfileEvent.photoUploaded({
    required String filePath,
  }) = _PhotoUploaded;
}
