import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'selection_event.dart';
part 'selection_state.dart';
part 'selection_bloc.freezed.dart';

class SelectionBloc extends Bloc<SelectionEvent, SelectionState> {
  SelectionBloc() : super(const Initial()) {
    on<SelectionEvent>((event, emit) {
      switch (event) {
        case _Started(:final projectId):
          emit(SelectionState.on(selectedProjectIds: [projectId]));
        case _Selected(:final projectId):
          emit(
            SelectionState.on(
              selectedProjectIds: [...state.selectedProjectIds, projectId],
            ),
          );
        case _Unselected(:final projectId):
          final updatedIds =
              state.selectedProjectIds.where((e) => e != projectId).toList();
          if (updatedIds.isEmpty) {
            emit(const SelectionState.off());
            return;
          }

          emit(SelectionState.on(selectedProjectIds: updatedIds));
        case _Clear():
          emit(const SelectionState.off());
      }
    });
  }
}
