part of 'edit_email_bloc.dart';

@freezed
class EditEmailState with _$EditEmailState {
  const factory EditEmailState.initial({
    @Default('') String email,
    @Default(true) bool isEmailValid,
    @Default(false) bool isEmailChanged,
  }) = Initial;
  const factory EditEmailState.saving({
    @Default('') String email,
    @Default(true) bool isEmailValid,
    @Default(false) bool isEmailChanged,
  }) = Saving;
  const factory EditEmailState.saved({
    @Default('') String email,
    @Default(true) bool isEmailValid,
    @Default(false) bool isEmailChanged,
    required User user,
  }) = Saved;
  const factory EditEmailState.error({
    required String message,
    @Default('') String email,
    @Default(true) bool isEmailValid,
    @Default(false) bool isEmailChanged,
  }) = Error;
}
