import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_repository/project_repository.dart';

part 'profile_project_event.dart';
part 'profile_project_state.dart';
part 'profile_project_bloc.freezed.dart';

class ProfileProjectBloc
    extends Bloc<ProfileProjectEvent, ProfileProjectState> {
  ProfileProjectBloc({
    required ProjectRepository projectRepository,
    required int userId,
  })  : _projectRepository = projectRepository,
        _userId = userId,
        super(const Initial()) {
    on<_Started>(_onStarted);
    on<_LoadMoreProjects>(_onLoadMoreProjects);
    on<_CategoryChanged>(_onCategoryChanged);
  }

  final ProjectRepository _projectRepository;
  final int _userId;

  Future<void> _onCategoryChanged(
    _CategoryChanged event,
    Emitter<ProfileProjectState> emit,
  ) async {
    emit(
      Loading(
        projects: [...state.projects],
        page: state.page.copyWith(),
        categories: [...state.categories],
        selectedCategory: event.category,
      ),
    );
    try {
      final projects = await _projectRepository.getProjectsByUserId(
        _userId,
        event.category.id == -1 ? null : event.category.id,
      );
      emit(
        Loaded(
          projects: projects.items,
          page: projects,
          categories: [...state.categories],
          selectedCategory: event.category,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        Error(
          projects: [...state.projects],
          page: state.page.copyWith(),
          message: e.message,
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
        ),
      );
    }
  }

  Future<void> _onLoadMoreProjects(
    _LoadMoreProjects event,
    Emitter<ProfileProjectState> emit,
  ) async {
    if (!state.page.hasNextPage) return;
    try {
      final projects =
          await _projectRepository.getNextPage(state.page.nextPageUrl!);
      emit(
        Loaded(
          projects: [...state.projects, ...projects.items],
          page: projects,
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        Error(
          projects: [...state.projects],
          page: state.page.copyWith(),
          message: e.message,
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
        ),
      );
    }
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<ProfileProjectState> emit,
  ) async {
    emit(const Loading());
    try {
      final projects = await _projectRepository.getProjectsByUserId(_userId);
      final categories = await _projectRepository.getProjectCategories();
      emit(
        Loaded(
          projects: projects.items,
          page: projects,
          categories: categories,
        ),
      );
    } on ProjectException catch (e) {
      emit(Error(message: e.message));
    }
  }
}
