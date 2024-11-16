import 'package:bloc/bloc.dart';
import 'package:config_repository/config_repository.dart';
import 'package:craftmate_client/helpers/stream_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_repository/project_repository.dart';
import 'package:uuid/uuid.dart';

part 'completed_project_event.dart';
part 'completed_project_state.dart';
part 'completed_project_bloc.freezed.dart';

class CompletedProjectBloc
    extends Bloc<CompletedProjectEvent, CompletedProjectState> {
  CompletedProjectBloc({
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
    Emitter<CompletedProjectState> emit,
  ) async {
    try {
      final paginatedProjects =
          await _projectRepository.getCurrentUserCompletedProjects(
        state.filter,
        state.sort,
        state.order,
        event.category.id == -1 ? null : event.category.id,
      );
      emit(
        CompletedProjectState.loaded(
          projects: paginatedProjects.items,
          paginatedProjects: paginatedProjects,
          filter: state.filter,
          categories: [...state.categories],
          selectedCategory: event.category,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        CompletedProjectState.failed(
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
    Emitter<CompletedProjectState> emit,
  ) async {
    try {
      final paginatedProjects =
          await _projectRepository.getCurrentUserCompletedProjects(
        state.filter,
        event.sort,
        event.order,
        state.selectedCategory.id == -1 ? null : state.selectedCategory.id,
      );
      emit(
        CompletedProjectState.loaded(
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
        CompletedProjectState.failed(
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
    Emitter<CompletedProjectState> emit,
  ) async {
    emit(
      CompletedProjectState.deleting(
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
          await _projectRepository.getCurrentUserCompletedProjects(
        state.filter,
        state.sort,
        state.order,
        state.selectedCategory.id == -1 ? null : state.selectedCategory.id,
      );
      emit(
        CompletedProjectState.deleted(
          projects: paginatedProjects.items,
          paginatedProjects: paginatedProjects,
          filter: state.filter,
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        CompletedProjectState.failed(
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
    Emitter<CompletedProjectState> emit,
  ) async {
    emit(
      CompletedProjectState.deleting(
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
          await _projectRepository.getCurrentUserCompletedProjects(
        state.filter,
        state.sort,
        state.order,
        state.selectedCategory.id == -1 ? null : state.selectedCategory.id,
      );
      emit(
        CompletedProjectState.deleted(
          projects: paginatedProjects.items,
          paginatedProjects: paginatedProjects,
          filter: state.filter,
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        CompletedProjectState.failed(
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
    Emitter<CompletedProjectState> emit,
  ) async {
    try {
      final paginatedProjects =
          await _projectRepository.getCurrentUserCompletedProjects(
        state.filter,
        state.sort,
        state.order,
        state.selectedCategory.id == -1 ? null : state.selectedCategory.id,
      );
      emit(
        CompletedProjectState.loaded(
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
        CompletedProjectState.failed(
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
    Emitter<CompletedProjectState> emit,
  ) async {
    emit(
      CompletedProjectState.loading(
        projects: List.from(state.projects),
        paginatedProjects: state.paginatedProjects.copyWith(),
        filter: state.filter,
        categories: [...state.categories],
        selectedCategory: state.selectedCategory,
      ),
    );
    try {
      final paginatedProjects =
          await _projectRepository.getCurrentUserCompletedProjects(
        event.filter,
        state.sort,
        state.order,
        state.selectedCategory.id == -1 ? null : state.selectedCategory.id,
      );
      emit(
        CompletedProjectState.loaded(
          projects: paginatedProjects.items,
          paginatedProjects: paginatedProjects,
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
          filter: event.filter,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        CompletedProjectState.failed(
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
    Emitter<CompletedProjectState> emit,
  ) async {
    if (!state.paginatedProjects.hasNextPage) return;
    try {
      final projects = await _projectRepository
          .getNextPage(state.paginatedProjects.nextPageUrl!);
      emit(
        CompletedProjectState.loaded(
          projects: List.from(state.projects)..addAll(projects.items),
          paginatedProjects: projects,
          filter: state.filter,
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        CompletedProjectState.failed(
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
    Emitter<CompletedProjectState> emit,
  ) async {
    emit(
      CompletedProjectState.loading(
        projects: List.from(state.projects),
        paginatedProjects: state.paginatedProjects.copyWith(),
      ),
    );
    try {
      final paginatedProjects = await _projectRepository
          .getCurrentUserCompletedProjects(event.filter);
      final categories = await _projectRepository.getProjectCategories();
      emit(
        CompletedProjectState.loaded(
          projects: paginatedProjects.items,
          paginatedProjects: paginatedProjects,
          categories: categories,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        CompletedProjectState.failed(
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
