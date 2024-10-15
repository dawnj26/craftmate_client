import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_repository/material_repository.dart';

part 'user_material_event.dart';
part 'user_material_state.dart';
part 'user_material_bloc.freezed.dart';

class UserMaterialBloc extends Bloc<UserMaterialEvent, UserMaterialState> {
  UserMaterialBloc({
    required MaterialRepository materialRepository,
  })  : _materialRepository = materialRepository,
        super(const _Initial()) {
    on<_Started>(_onStarted);
  }

  final MaterialRepository _materialRepository;

  Future<void> _onStarted(
    _Started event,
    Emitter<UserMaterialState> emit,
  ) async {
    emit(const UserMaterialState.loading());
    try {
      final materials = await _materialRepository.getMaterials();
      emit(UserMaterialState.loaded(materials: materials));
    } on MaterialException catch (e) {
      emit(UserMaterialState.error(message: e.message));
    }
  }
}
