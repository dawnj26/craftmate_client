part of 'edit_name_bloc.dart';

@freezed
class EditNameEvent with _$EditNameEvent {
  const factory EditNameEvent.nameChanged(String name) = _NameChanged;
  const factory EditNameEvent.nameSaved() = _NameSaved;
}
