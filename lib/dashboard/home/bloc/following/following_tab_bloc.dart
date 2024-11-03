import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_repository/project_repository.dart';
import 'package:uuid/uuid.dart';

part 'following_tab_event.dart';
part 'following_tab_state.dart';
part 'following_tab_bloc.freezed.dart';

class FollowingTabBloc extends Bloc<FollowingTabEvent, FollowingTabState> {
  FollowingTabBloc({
    required ProjectRepository projectRepository,
  })  : _projectRepo = projectRepository,
        super(const Initial()) {
    on<_Started>(_onStarted);
    on<_Refreshed>(_onRefreshed);
    on<_LoadMoreProjects>(_onLoadMoreProjects);
    on<_CategoryChanged>(_onCategoryChanged);
  }

  final ProjectRepository _projectRepo;

  Future<void> _onCategoryChanged(
    _CategoryChanged event,
    Emitter<FollowingTabState> emit,
  ) async {
    try {
      final categoryId = event.category.id == -1 ? null : event.category.id;

      final page = await _projectRepo.getFollowingProjects(categoryId, true);
      emit(
        Loaded(
          projects: page.items,
          page: page,
          categories: [...state.categories],
          selectedCategory: event.category,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        Error(
          message: e.message,
          page: state.page.copyWith(),
          projects: [...state.projects],
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
        ),
      );
    }
  }

  Future<void> _onLoadMoreProjects(
    _LoadMoreProjects event,
    Emitter<FollowingTabState> emit,
  ) async {
    if (!state.page.hasNextPage) return;
    try {
      final page = await _projectRepo.getNextPage(state.page.nextPageUrl!);
      emit(
        Loaded(
          projects: [...state.projects, ...page.items],
          page: page,
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        Error(
          message: e.message,
          page: state.page.copyWith(),
          projects: [...state.projects],
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
        ),
      );
    }
  }

  Future<void> _onRefreshed(
    _Refreshed event,
    Emitter<FollowingTabState> emit,
  ) async {
    try {
      final page = await _projectRepo.getFollowingProjects();
      emit(
        Loaded(
          projects: page.items,
          page: page,
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
          uuid: const Uuid().v4(),
        ),
      );
    } on ProjectException catch (e) {
      emit(
        Error(
          message: e.message,
          page: state.page.copyWith(),
          projects: [...state.projects],
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
        ),
      );
    }
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<FollowingTabState> emit,
  ) async {
    emit(const Loading());
    try {
      final page = await _projectRepo.getFollowingProjects(null, true);
      final categories = await _projectRepo.getProjectCategories();
      emit(
        Loaded(
          projects: page.items,
          page: page,
          categories: categories,
          selectedCategory: state.selectedCategory,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        Error(
          message: e.message,
          page: state.page,
          projects: [...state.projects],
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
        ),
      );
    }
  }
}
