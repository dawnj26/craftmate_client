part of 'edit_email_bloc.dart';

@freezed
class EditEmailEvent with _$EditEmailEvent {
  const factory EditEmailEvent.emailChanged(String email) = _EmailChanged;
  const factory EditEmailEvent.emailSaved() = _EmailSaved;
}
