part of 'user_material_bloc.dart';

@freezed
class UserMaterialEvent with _$UserMaterialEvent {
  const factory UserMaterialEvent.started() = _Started;
  const factory UserMaterialEvent.reload() = _Reload;
}
