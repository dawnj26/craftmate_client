import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_repository/project_repository.dart';
import 'package:stream_transform/stream_transform.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

const _duration = Duration(milliseconds: 300);

EventTransformer<Event> debounce<Event>(Duration duration) {
  return (events, mapper) => events.debounce(duration).switchMap(mapper);
}

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc({
    required ProjectRepository projectRepository,
  })  : _projectRepository = projectRepository,
        super(const _Initial()) {
    on<_SearchProjects>(_searchProjects, transformer: debounce(_duration));
    on<_LoadMoreProjects>(
      _loadMoreProjects,
      transformer: throttleDroppable(const Duration(milliseconds: 100)),
    );
    on<_ClearSearch>(_clearSearch);
  }

  final ProjectRepository _projectRepository;

  void _clearSearch(
    _ClearSearch event,
    Emitter<SearchState> emit,
  ) {
    emit(const SearchState.initial());
  }

  Future<void> _loadMoreProjects(
    _LoadMoreProjects event,
    Emitter<SearchState> emit,
  ) async {
    if (!state.pagination.hasNextPage) return;

    try {
      final projects =
          await _projectRepository.getNextPage(state.pagination.nextPageUrl!);
      emit(
        SearchState.loaded(
          projects: [...state.projects, ...projects.items],
          pagination: projects,
        ),
      );
    } catch (e) {
      emit(SearchState.error(message: e.toString()));
    }
  }

  Future<void> _searchProjects(
    _SearchProjects event,
    Emitter<SearchState> emit,
  ) async {
    if (event.query.isEmpty) {
      emit(const SearchState.initial());
      return;
    }

    emit(
      SearchState.loading(
        projects: state.projects,
        pagination: state.pagination,
      ),
    );
    try {
      final projects = await _projectRepository.searchProjects(event.query);
      emit(
        SearchState.loaded(
          projects: projects.items,
          pagination: state.pagination,
        ),
      );
    } catch (e) {
      emit(SearchState.error(message: e.toString()));
    }
  }
}
