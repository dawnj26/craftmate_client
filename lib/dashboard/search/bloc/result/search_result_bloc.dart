import 'package:bloc/bloc.dart';
import 'package:craftmate_client/helpers/stream_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_repository/project_repository.dart';
import 'package:search_repository/search_repository.dart';

part 'search_result_event.dart';
part 'search_result_state.dart';
part 'search_result_bloc.freezed.dart';

const _duration = Duration(milliseconds: 300);

class SearchResultBloc extends Bloc<SearchResultEvent, SearchResultState> {
  SearchResultBloc({
    required SearchRepository searchRepository,
    required ProjectRepository projectRepository,
  })  : _searchRepository = searchRepository,
        _projectRepository = projectRepository,
        super(const Initial()) {
    on<_Started>(_onStarted, transformer: debounce(_duration));
  }

  final SearchRepository _searchRepository;
  final ProjectRepository _projectRepository;

  Future<void> _onStarted(
    _Started event,
    Emitter<SearchResultState> emit,
  ) async {
    final query = event.query.trim();
    if (query.isEmpty) {
      return emit(
        const SearchResultState.loaded(
          projects: [],
          categories: [],
        ),
      );
    }

    try {
      emit(const SearchResultState.loading());
      final projects = await _searchRepository.searchProjects(query);
      final categories = await _projectRepository.getProjectCategories();

      emit(
        SearchResultState.loaded(projects: projects, categories: categories),
      );
    } on SearchException catch (e) {
      emit(
        SearchResultState.error(
          message: e.message,
          projects: [],
          categories: [],
        ),
      );
    }
  }
}
