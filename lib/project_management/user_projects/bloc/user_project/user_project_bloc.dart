import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:craftmate_client/globals.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_repository/project_repository.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:uuid/uuid.dart';

part 'user_project_event.dart';
part 'user_project_state.dart';
part 'user_project_bloc.freezed.dart';

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class UserProjectBloc extends Bloc<UserProjectEvent, UserProjectState> {
  UserProjectBloc({
    required ProjectRepository projectRepository,
  })  : _projectRepository = projectRepository,
        super(const _Initial()) {
    on<_FetchProjects>(_onFetchProjects);
    on<_LoadMoreProjects>(
      _onLoadMoreProjects,
      transformer: throttleDroppable(const Duration(milliseconds: 100)),
    );
    on<_FilterChanged>(_onFilterChanged);
    on<_RefreshProjects>(_onRefreshProjects);
    on<_DeleteProjects>(_onDeleteProjects);
    on<_DeleteProject>(_onDeleteProject);
    on<_SortChanged>(_onSortChanged);
  }

  final ProjectRepository _projectRepository;

  Future<void> _onSortChanged(
    _SortChanged event,
    Emitter<UserProjectState> emit,
  ) async {
    try {
      final paginatedProjects = await _projectRepository.getCurrentUserProjects(
        state.filter,
        event.sort,
        event.order,
      );
      emit(
        UserProjectState.loaded(
          projects: paginatedProjects.items,
          paginatedProjects: paginatedProjects,
          filter: state.filter,
          sort: event.sort,
          order: event.order,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        UserProjectState.error(
          projects: List.from(state.projects),
          paginatedProjects: state.paginatedProjects.copyWith(),
          filter: state.filter,
          message: e.toString(),
        ),
      );
    }
  }

  Future<void> _onDeleteProject(
    _DeleteProject event,
    Emitter<UserProjectState> emit,
  ) async {
    emit(
      UserProjectState.deleting(
        projects: List.from(state.projects),
        paginatedProjects: state.paginatedProjects.copyWith(),
        filter: state.filter,
      ),
    );
    try {
      await _projectRepository.deleteProject(event.project);
      final paginatedProjects =
          await _projectRepository.getCurrentUserProjects(state.filter);
      emit(
        UserProjectState.deleted(
          projects: paginatedProjects.items,
          paginatedProjects: paginatedProjects,
          filter: state.filter,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        UserProjectState.error(
          projects: List.from(state.projects),
          paginatedProjects: state.paginatedProjects.copyWith(),
          filter: state.filter,
          message: e.toString(),
        ),
      );
    }
  }

  Future<void> _onDeleteProjects(
    _DeleteProjects event,
    Emitter<UserProjectState> emit,
  ) async {
    emit(
      UserProjectState.deleting(
        projects: List.from(state.projects),
        paginatedProjects: state.paginatedProjects.copyWith(),
        filter: state.filter,
      ),
    );
    try {
      await _projectRepository.deleteProjects(event.projectIds);
      final paginatedProjects =
          await _projectRepository.getCurrentUserProjects(state.filter);
      emit(
        UserProjectState.deleted(
          projects: paginatedProjects.items,
          paginatedProjects: paginatedProjects,
          filter: state.filter,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        UserProjectState.error(
          projects: List.from(state.projects),
          paginatedProjects: state.paginatedProjects.copyWith(),
          filter: state.filter,
          message: e.toString(),
        ),
      );
    }
  }

  Future<void> _onRefreshProjects(
    _RefreshProjects event,
    Emitter<UserProjectState> emit,
  ) async {
    try {
      final paginatedProjects =
          await _projectRepository.getCurrentUserProjects(state.filter);
      emit(
        UserProjectState.loaded(
          projects: paginatedProjects.items,
          paginatedProjects: paginatedProjects,
          filter: state.filter,
          uuid: const Uuid().v4(),
        ),
      );
    } on ProjectException catch (e) {
      emit(
        UserProjectState.error(
          projects: List.from(state.projects),
          paginatedProjects: state.paginatedProjects.copyWith(),
          filter: state.filter,
          message: e.toString(),
        ),
      );
    }
  }

  Future<void> _onFilterChanged(
    _FilterChanged event,
    Emitter<UserProjectState> emit,
  ) async {
    emit(
      UserProjectState.loading(
        projects: List.from(state.projects),
        paginatedProjects: state.paginatedProjects.copyWith(),
        filter: state.filter,
      ),
    );
    try {
      final paginatedProjects =
          await _projectRepository.getCurrentUserProjects(event.filter);
      emit(
        UserProjectState.loaded(
          projects: paginatedProjects.items,
          paginatedProjects: paginatedProjects,
          filter: event.filter,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        UserProjectState.error(
          projects: List.from(state.projects),
          paginatedProjects: state.paginatedProjects.copyWith(),
          filter: state.filter,
          message: e.toString(),
        ),
      );
    }
  }

  Future<void> _onLoadMoreProjects(
    _LoadMoreProjects event,
    Emitter<UserProjectState> emit,
  ) async {
    if (!state.paginatedProjects.hasNextPage) return;
    try {
      final projects = await _projectRepository
          .getNextPage(state.paginatedProjects.nextPageUrl!);
      emit(
        UserProjectState.loaded(
          projects: List.from(state.projects)..addAll(projects.items),
          paginatedProjects: projects,
          filter: state.filter,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        UserProjectState.error(
          projects: List.from(state.projects),
          paginatedProjects: state.paginatedProjects.copyWith(),
          message: e.message,
          filter: state.filter,
        ),
      );
    }
  }

  Future<void> _onFetchProjects(
    _FetchProjects event,
    Emitter<UserProjectState> emit,
  ) async {
    emit(
      UserProjectState.loading(
        projects: List.from(state.projects),
        paginatedProjects: state.paginatedProjects.copyWith(),
      ),
    );
    try {
      final paginatedProjects =
          await _projectRepository.getCurrentUserProjects(event.filter);
      emit(
        UserProjectState.loaded(
          projects: paginatedProjects.items,
          paginatedProjects: paginatedProjects,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        UserProjectState.error(
          projects: List.from(state.projects),
          paginatedProjects: state.paginatedProjects.copyWith(),
          message: e.toString(),
        ),
      );
    }
  }
}
