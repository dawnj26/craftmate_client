import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'material_selection_event.dart';
part 'material_selection_state.dart';
part 'material_selection_bloc.freezed.dart';

class MaterialSelectionBloc
    extends Bloc<MaterialSelectionEvent, MaterialSelectionState> {
  MaterialSelectionBloc() : super(const Initial()) {
    on<_Started>(_onStarted);
    on<_Selected>(_onSelected);
    on<_Unselected>(_onUnselected);
    on<_Clear>(_onClear);
  }

  void _onClear(_Clear event, Emitter<MaterialSelectionState> emit) {
    emit(const Off());
  }

  void _onUnselected(_Unselected event, Emitter<MaterialSelectionState> emit) {
    final selectedMaterials = state.selectedMaterials
        .where((element) => element != event.materialId)
        .toList();

    if (selectedMaterials.isEmpty) {
      emit(const Off());
      return;
    }

    emit(On(selectedMaterials: selectedMaterials));
  }

  void _onSelected(_Selected event, Emitter<MaterialSelectionState> emit) {
    emit(On(selectedMaterials: [...state.selectedMaterials, event.materialId]));
  }

  void _onStarted(_Started event, Emitter<MaterialSelectionState> emit) {
    emit(On(selectedMaterials: [event.materialId]));
  }
}
