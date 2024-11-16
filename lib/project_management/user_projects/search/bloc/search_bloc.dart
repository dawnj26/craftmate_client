import 'package:bloc/bloc.dart';
import 'package:craftmate_client/helpers/stream_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_repository/project_repository.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

const _duration = Duration(milliseconds: 300);

class ProjectSearchBloc extends Bloc<ProjectSearchEvent, ProjectSearchState> {
  ProjectSearchBloc({
    required ProjectRepository projectRepository,
  })  : _projectRepository = projectRepository,
        super(const Initial()) {
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
    Emitter<ProjectSearchState> emit,
  ) {
    emit(const ProjectSearchState.initial());
  }

  Future<void> _loadMoreProjects(
    _LoadMoreProjects event,
    Emitter<ProjectSearchState> emit,
  ) async {
    if (!state.pagination.hasNextPage) return;

    try {
      final projects =
          await _projectRepository.getNextPage(state.pagination.nextPageUrl!);
      emit(
        ProjectSearchState.loaded(
          projects: [...state.projects, ...projects.items],
          pagination: projects,
        ),
      );
    } catch (e) {
      emit(ProjectSearchState.error(message: e.toString()));
    }
  }

  Future<void> _searchProjects(
    _SearchProjects event,
    Emitter<ProjectSearchState> emit,
  ) async {
    if (event.query.isEmpty) {
      emit(const ProjectSearchState.initial());
      return;
    }

    emit(
      ProjectSearchState.loading(
        projects: state.projects,
        pagination: state.pagination,
      ),
    );
    try {
      final projects = await _projectRepository.searchProjects(event.query);
      emit(
        ProjectSearchState.loaded(
          projects: projects.items,
          pagination: state.pagination,
        ),
      );
    } catch (e) {
      emit(ProjectSearchState.error(message: e.toString()));
    }
  }
}
