import 'package:bloc/bloc.dart';
import 'package:config_repository/config_repository.dart';
import 'package:craftmate_client/helpers/stream_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_repository/project_repository.dart';
import 'package:uuid/uuid.dart';

part 'inactive_project_event.dart';
part 'inactive_project_state.dart';
part 'inactive_project_bloc.freezed.dart';

class InactiveProjectBloc
    extends Bloc<InactiveProjectEvent, InactiveProjectState> {
  InactiveProjectBloc({
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
    Emitter<InactiveProjectState> emit,
  ) async {
    try {
      final paginatedProjects =
          await _projectRepository.getCurrentUserInactiveProjects(
        state.filter,
        state.sort,
        state.order,
        event.category.id == -1 ? null : event.category.id,
      );
      emit(
        InactiveProjectState.loaded(
          projects: paginatedProjects.items,
          paginatedProjects: paginatedProjects,
          filter: state.filter,
          categories: [...state.categories],
          selectedCategory: event.category,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        InactiveProjectState.failed(
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
    Emitter<InactiveProjectState> emit,
  ) async {
    try {
      final paginatedProjects =
          await _projectRepository.getCurrentUserInactiveProjects(
        state.filter,
        event.sort,
        event.order,
        state.selectedCategory.id == -1 ? null : state.selectedCategory.id,
      );
      emit(
        InactiveProjectState.loaded(
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
        InactiveProjectState.failed(
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
    Emitter<InactiveProjectState> emit,
  ) async {
    emit(
      InactiveProjectState.deleting(
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
          await _projectRepository.getCurrentUserInactiveProjects(
        state.filter,
        state.sort,
        state.order,
        state.selectedCategory.id == -1 ? null : state.selectedCategory.id,
      );
      emit(
        InactiveProjectState.deleted(
          projects: paginatedProjects.items,
          paginatedProjects: paginatedProjects,
          filter: state.filter,
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        InactiveProjectState.failed(
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
    Emitter<InactiveProjectState> emit,
  ) async {
    emit(
      InactiveProjectState.deleting(
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
          await _projectRepository.getCurrentUserInactiveProjects(
        state.filter,
        state.sort,
        state.order,
        state.selectedCategory.id == -1 ? null : state.selectedCategory.id,
      );
      emit(
        InactiveProjectState.deleted(
          projects: paginatedProjects.items,
          paginatedProjects: paginatedProjects,
          filter: state.filter,
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        InactiveProjectState.failed(
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
    Emitter<InactiveProjectState> emit,
  ) async {
    try {
      final paginatedProjects =
          await _projectRepository.getCurrentUserInactiveProjects(
        state.filter,
        state.sort,
        state.order,
        state.selectedCategory.id == -1 ? null : state.selectedCategory.id,
      );
      emit(
        InactiveProjectState.loaded(
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
        InactiveProjectState.failed(
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
    Emitter<InactiveProjectState> emit,
  ) async {
    emit(
      InactiveProjectState.loading(
        projects: List.from(state.projects),
        paginatedProjects: state.paginatedProjects.copyWith(),
        filter: state.filter,
        categories: [...state.categories],
        selectedCategory: state.selectedCategory,
      ),
    );
    try {
      final paginatedProjects =
          await _projectRepository.getCurrentUserInactiveProjects(
        event.filter,
        state.sort,
        state.order,
        state.selectedCategory.id == -1 ? null : state.selectedCategory.id,
      );
      emit(
        InactiveProjectState.loaded(
          projects: paginatedProjects.items,
          paginatedProjects: paginatedProjects,
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
          filter: event.filter,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        InactiveProjectState.failed(
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
    Emitter<InactiveProjectState> emit,
  ) async {
    if (!state.paginatedProjects.hasNextPage) return;
    try {
      final projects = await _projectRepository
          .getNextPage(state.paginatedProjects.nextPageUrl!);
      emit(
        InactiveProjectState.loaded(
          projects: List.from(state.projects)..addAll(projects.items),
          paginatedProjects: projects,
          filter: state.filter,
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        InactiveProjectState.failed(
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
    Emitter<InactiveProjectState> emit,
  ) async {
    emit(
      InactiveProjectState.loading(
        projects: List.from(state.projects),
        paginatedProjects: state.paginatedProjects.copyWith(),
      ),
    );
    try {
      final paginatedProjects =
          await _projectRepository.getCurrentUserInactiveProjects(event.filter);
      final categories = await _projectRepository.getProjectCategories();
      emit(
        InactiveProjectState.loaded(
          projects: paginatedProjects.items,
          paginatedProjects: paginatedProjects,
          categories: categories,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        InactiveProjectState.failed(
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
