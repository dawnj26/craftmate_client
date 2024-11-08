part of 'edit_bio_bloc.dart';

@freezed
class EditBioEvent with _$EditBioEvent {
  const factory EditBioEvent.bioChanged(String bio) = _BioChanged;
  const factory EditBioEvent.bioSaved() = _BioSaved;
}
