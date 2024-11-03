import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_repository/project_repository.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc({
    required ProjectRepository projectRepository,
  })  : _projectRepository = projectRepository,
        super(const Initial()) {
    on<_Started>(_onStarted);
  }

  final ProjectRepository _projectRepository;

  Future<void> _onStarted(_Started event, Emitter<SearchState> emit) async {
    try {
      emit(const SearchState.loading());
      final categories = await _projectRepository.getProjectCategories();

      emit(SearchState.loaded(categories: categories));
    } on ProjectException catch (e) {
      emit(SearchState.error(message: e.message, categories: []));
    }
  }
}
