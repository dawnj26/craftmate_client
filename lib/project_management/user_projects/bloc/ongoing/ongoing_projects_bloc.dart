import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:config_repository/config_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_repository/project_repository.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:uuid/uuid.dart';

part 'ongoing_projects_event.dart';
part 'ongoing_projects_state.dart';
part 'ongoing_projects_bloc.freezed.dart';

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class OngoingProjectsBloc
    extends Bloc<OngoingProjectsEvent, OngoingProjectsState> {
  OngoingProjectsBloc({
    required ProjectRepository projectRepository,
  })  : _projectRepository = projectRepository,
        super(const Initial()) {
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
    on<_CategoryChanged>(_onCategoryChanged);
  }

  final ProjectRepository _projectRepository;

  Future<void> _onCategoryChanged(
    _CategoryChanged event,
    Emitter<OngoingProjectsState> emit,
  ) async {
    try {
      final paginatedProjects =
          await _projectRepository.getCurrentUserOngoingProjects(
        state.filter,
        state.sort,
        state.order,
        event.category.id == -1 ? null : event.category.id,
      );
      emit(
        OngoingProjectsState.loaded(
          projects: paginatedProjects.items,
          paginatedProjects: paginatedProjects,
          filter: state.filter,
          categories: [...state.categories],
          selectedCategory: event.category,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        OngoingProjectsState.failed(
          projects: List.from(state.projects),
          paginatedProjects: state.paginatedProjects.copyWith(),
          filter: state.filter,
          categories: [...state.categories],
          selectedCategory: event.category,
          errMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> _onSortChanged(
    _SortChanged event,
    Emitter<OngoingProjectsState> emit,
  ) async {
    try {
      final paginatedProjects =
          await _projectRepository.getCurrentUserOngoingProjects(
        state.filter,
        event.sort,
        event.order,
        state.selectedCategory.id == -1 ? null : state.selectedCategory.id,
      );
      emit(
        OngoingProjectsState.loaded(
          projects: paginatedProjects.items,
          paginatedProjects: paginatedProjects,
          filter: state.filter,
          sort: event.sort,
          order: event.order,
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        OngoingProjectsState.failed(
          projects: List.from(state.projects),
          paginatedProjects: state.paginatedProjects.copyWith(),
          filter: state.filter,
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
          errMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> _onDeleteProject(
    _DeleteProject event,
    Emitter<OngoingProjectsState> emit,
  ) async {
    emit(
      OngoingProjectsState.deleting(
        projects: List.from(state.projects),
        paginatedProjects: state.paginatedProjects.copyWith(),
        filter: state.filter,
        categories: [...state.categories],
        selectedCategory: state.selectedCategory,
      ),
    );
    try {
      await _projectRepository.deleteProject(event.project);
      final paginatedProjects =
          await _projectRepository.getCurrentUserOngoingProjects(
        state.filter,
        state.sort,
        state.order,
        state.selectedCategory.id == -1 ? null : state.selectedCategory.id,
      );
      emit(
        OngoingProjectsState.deleted(
          projects: paginatedProjects.items,
          paginatedProjects: paginatedProjects,
          filter: state.filter,
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        OngoingProjectsState.failed(
          projects: List.from(state.projects),
          paginatedProjects: state.paginatedProjects.copyWith(),
          filter: state.filter,
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
          errMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> _onDeleteProjects(
    _DeleteProjects event,
    Emitter<OngoingProjectsState> emit,
  ) async {
    emit(
      OngoingProjectsState.deleting(
        projects: List.from(state.projects),
        paginatedProjects: state.paginatedProjects.copyWith(),
        filter: state.filter,
        categories: [...state.categories],
        selectedCategory: state.selectedCategory,
      ),
    );
    try {
      await _projectRepository.deleteProjects(event.projectIds);
      final paginatedProjects =
          await _projectRepository.getCurrentUserOngoingProjects(
        state.filter,
        state.sort,
        state.order,
        state.selectedCategory.id == -1 ? null : state.selectedCategory.id,
      );
      emit(
        OngoingProjectsState.deleted(
          projects: paginatedProjects.items,
          paginatedProjects: paginatedProjects,
          filter: state.filter,
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        OngoingProjectsState.failed(
          projects: List.from(state.projects),
          paginatedProjects: state.paginatedProjects.copyWith(),
          filter: state.filter,
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
          errMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> _onRefreshProjects(
    _RefreshProjects event,
    Emitter<OngoingProjectsState> emit,
  ) async {
    try {
      final paginatedProjects =
          await _projectRepository.getCurrentUserOngoingProjects(
        state.filter,
        state.sort,
        state.order,
        state.selectedCategory.id == -1 ? null : state.selectedCategory.id,
      );
      emit(
        OngoingProjectsState.loaded(
          projects: paginatedProjects.items,
          paginatedProjects: paginatedProjects,
          filter: state.filter,
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
          uuid: const Uuid().v4(),
        ),
      );
    } on ProjectException catch (e) {
      emit(
        OngoingProjectsState.failed(
          projects: List.from(state.projects),
          paginatedProjects: state.paginatedProjects.copyWith(),
          filter: state.filter,
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
          errMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> _onFilterChanged(
    _FilterChanged event,
    Emitter<OngoingProjectsState> emit,
  ) async {
    emit(
      OngoingProjectsState.loading(
        projects: List.from(state.projects),
        paginatedProjects: state.paginatedProjects.copyWith(),
        filter: state.filter,
        categories: [...state.categories],
        selectedCategory: state.selectedCategory,
      ),
    );
    try {
      final paginatedProjects =
          await _projectRepository.getCurrentUserOngoingProjects(
        event.filter,
        state.sort,
        state.order,
        state.selectedCategory.id == -1 ? null : state.selectedCategory.id,
      );
      emit(
        OngoingProjectsState.loaded(
          projects: paginatedProjects.items,
          paginatedProjects: paginatedProjects,
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
          filter: event.filter,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        OngoingProjectsState.failed(
          projects: List.from(state.projects),
          paginatedProjects: state.paginatedProjects.copyWith(),
          filter: state.filter,
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
          errMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> _onLoadMoreProjects(
    _LoadMoreProjects event,
    Emitter<OngoingProjectsState> emit,
  ) async {
    if (!state.paginatedProjects.hasNextPage) return;
    try {
      final projects = await _projectRepository
          .getNextPage(state.paginatedProjects.nextPageUrl!);
      emit(
        OngoingProjectsState.loaded(
          projects: List.from(state.projects)..addAll(projects.items),
          paginatedProjects: projects,
          filter: state.filter,
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        OngoingProjectsState.failed(
          projects: List.from(state.projects),
          paginatedProjects: state.paginatedProjects.copyWith(),
          errMessage: e.message,
          filter: state.filter,
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
        ),
      );
    }
  }

  Future<void> _onFetchProjects(
    _FetchProjects event,
    Emitter<OngoingProjectsState> emit,
  ) async {
    emit(
      OngoingProjectsState.loading(
        projects: List.from(state.projects),
        paginatedProjects: state.paginatedProjects.copyWith(),
      ),
    );
    try {
      final paginatedProjects =
          await _projectRepository.getCurrentUserOngoingProjects(event.filter);
      final categories = await _projectRepository.getProjectCategories();
      emit(
        OngoingProjectsState.loaded(
          projects: paginatedProjects.items,
          paginatedProjects: paginatedProjects,
          categories: categories,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        OngoingProjectsState.failed(
          projects: [...state.projects],
          paginatedProjects: state.paginatedProjects.copyWith(),
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
          errMessage: e.toString(),
        ),
      );
    }
  }
}
