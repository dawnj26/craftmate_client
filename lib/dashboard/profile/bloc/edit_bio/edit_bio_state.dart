part of 'edit_bio_bloc.dart';

@freezed
class EditBioState with _$EditBioState {
  const factory EditBioState.initial({
    @Default('') String bio,
    @Default(false) bool isBioChanged,
  }) = Initial;
  const factory EditBioState.saving({
    @Default('') String bio,
    @Default(false) bool isBioChanged,
  }) = Saving;
  const factory EditBioState.saved({
    @Default('') String bio,
    @Default(false) bool isBioChanged,
    required User user,
  }) = Saved;
  const factory EditBioState.error({
    required String message,
    @Default('') String bio,
    @Default(false) bool isBioChanged,
  }) = Error;
}
