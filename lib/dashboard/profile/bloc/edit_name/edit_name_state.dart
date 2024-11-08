part of 'edit_name_bloc.dart';

@freezed
class EditNameState with _$EditNameState {
  const factory EditNameState.initial({
    @Default('') String name,
    @Default(false) bool isNameChanged,
  }) = Initial;
  const factory EditNameState.saving({
    @Default('') String name,
    @Default(false) bool isNameChanged,
  }) = Saving;
  const factory EditNameState.saved({
    @Default('') String name,
    required User user,
    @Default(false) bool isNameChanged,
  }) = Saved;
  const factory EditNameState.error({
    @Default('') String name,
    @Default(false) bool isNameChanged,
    @Default('') String message,
  }) = Error;
}
