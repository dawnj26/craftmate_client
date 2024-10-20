import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_repository/material_repository.dart';

part 'view_material_event.dart';
part 'view_material_state.dart';
part 'view_material_bloc.freezed.dart';

class ViewMaterialBloc extends Bloc<ViewMaterialEvent, ViewMaterialState> {
  ViewMaterialBloc({required MaterialRepository materialRepository})
      : _materialRepository = materialRepository,
        super(const _Initial()) {
    on<_Started>(_onStarted);
    on<_Delete>(_onDelete);
  }

  final MaterialRepository _materialRepository;

  Future<void> _onDelete(
    _Delete event,
    Emitter<ViewMaterialState> emit,
  ) async {
    switch (state) {
      case _Initialized(material: final material):
        emit(ViewMaterialState.deleting(material: material));
    }
    try {
      await _materialRepository.deleteMaterial(event.materialId);
      switch (state) {
        case Deleting(material: final material):
          emit(ViewMaterialState.deleted(material: material));
      }
    } on MaterialException catch (e) {
      emit(ViewMaterialState.error(message: e.message));
    }
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<ViewMaterialState> emit,
  ) async {
    emit(const ViewMaterialState.initializing());
    try {
      final material = await _materialRepository.getMaterial(event.materialId);
      emit(ViewMaterialState.initialized(material: material));
    } on MaterialException catch (e) {
      emit(ViewMaterialState.error(message: e.message));
    }
  }
}
