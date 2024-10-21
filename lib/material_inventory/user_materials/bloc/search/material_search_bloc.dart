import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_repository/material_repository.dart';
import 'package:stream_transform/stream_transform.dart';

part 'material_search_event.dart';
part 'material_search_state.dart';
part 'material_search_bloc.freezed.dart';

EventTransformer<Event> debounce<Event>(Duration duration) {
  return (events, mapper) => events.debounce(duration).switchMap(mapper);
}

class MaterialSearchBloc
    extends Bloc<MaterialSearchEvent, MaterialSearchState> {
  MaterialSearchBloc({required MaterialRepository materialRepo})
      : _materialRepository = materialRepo,
        super(const Initial()) {
    on<_SearchMaterial>(
      _onSearch,
      transformer: debounce(const Duration(milliseconds: 300)),
    );
    on<_ClearSearch>(_clearSearch);
  }

  final MaterialRepository _materialRepository;

  void _clearSearch(
    _ClearSearch event,
    Emitter<MaterialSearchState> emit,
  ) {
    emit(const MaterialSearchState.initial());
  }

  Future<void> _onSearch(
    _SearchMaterial event,
    Emitter<MaterialSearchState> emit,
  ) async {
    if (event.query.isEmpty) {
      emit(const MaterialSearchState.initial());
      return;
    }

    emit(
      MaterialSearchState.loading(
        materials: [...state.materials],
      ),
    );
    try {
      final materials = await _materialRepository.searchMaterials(event.query);
      emit(
        MaterialSearchState.loaded(
          materials: materials,
        ),
      );
    } on MaterialException catch (e) {
      emit(
        MaterialSearchState.error(
          message: e.message,
          materials: [...state.materials],
        ),
      );
    }
  }
}
