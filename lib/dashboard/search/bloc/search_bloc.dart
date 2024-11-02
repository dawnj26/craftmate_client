import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_repository/project_repository.dart';
import 'package:search_repository/search_repository.dart';
import 'package:stream_transform/stream_transform.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

const _duration = Duration(milliseconds: 300);

EventTransformer<Event> debounce<Event>(Duration duration) {
  return (events, mapper) => events.debounce(duration).switchMap(mapper);
}

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc({
    required SearchRepository searchRepository,
  })  : _searchRepository = searchRepository,
        super(const Initial()) {
    on<_Started>(_onStarted, transformer: debounce(_duration));
  }

  final SearchRepository _searchRepository;

  Future<void> _onStarted(_Started event, Emitter<SearchState> emit) async {
    final query = event.query.trim();
    if (query.isEmpty) {
      return emit(
        const SearchState.loaded(
          projects: [],
        ),
      );
    }

    try {
      emit(const SearchState.loading());
      final projects = await _searchRepository.searchProjects(query);

      emit(SearchState.loaded(projects: projects));
    } on SearchException catch (e) {
      emit(SearchState.error(message: e.message));
    }
  }
}
