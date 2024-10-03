import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'selection_event.dart';
part 'selection_state.dart';
part 'selection_bloc.freezed.dart';

class SelectionBloc extends Bloc<SelectionEvent, SelectionState> {
  SelectionBloc() : super(const _Initial()) {
    on<SelectionEvent>((event, emit) {
      event.when(
        started: (id) {
          emit(SelectionState.on(selectedProjectIds: [id]));
        },
        selected: (id) {
          emit(
            SelectionState.on(
              selectedProjectIds: [...state.selectedProjectIds, id],
            ),
          );
        },
        unselected: (id) {
          final updatedIds =
              state.selectedProjectIds.where((e) => e != id).toList();
          if (updatedIds.isEmpty) {
            emit(const SelectionState.off());
            return;
          }

          emit(SelectionState.on(selectedProjectIds: updatedIds));
        },
        clear: () {
          emit(const SelectionState.off());
        },
      );
    });
  }
}
