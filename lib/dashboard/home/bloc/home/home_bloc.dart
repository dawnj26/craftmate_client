import 'package:bloc/bloc.dart';
import 'package:craftmate_client/helpers/stream_helper.dart';
import 'package:equatable/equatable.dart';
import 'package:project_repository/project_repository.dart';
import 'package:uuid/uuid.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required ProjectRepository projectRepo})
      : _projectRepo = projectRepo,
        super(const HomeState()) {
    on<HomeLoadProjects>(_onLoadProjects);
    on<HomeRefreshProjects>(_onRefreshProjects);
    on<HomeProjectUpdated>(_onProjectUpdated);
    on<HomeLoadMoreProjects>(
      _onLoadMoreProjects,
      transformer: throttleDroppable(const Duration(milliseconds: 100)),
    );
    on<HomeProjectDeleted>(_onProjectDeleted);
  }

  final ProjectRepository _projectRepo;

  void _onProjectDeleted(HomeProjectDeleted event, Emitter<HomeState> emit) {
    final updatedProjects =
        state.projects.where((p) => p.id != event.project.id).toList();
    emit(
      state.copyWith(
        projects: updatedProjects,
      ),
    );
  }

  Future<void> _onLoadMoreProjects(
    HomeLoadMoreProjects event,
    Emitter<HomeState> emit,
  ) async {
    if (!state.paginatedProjects.hasNextPage) return;
    try {
      final projects =
          await _projectRepo.getNextPage(state.paginatedProjects.nextPageUrl!);
      emit(
        state.copyWith(
          status: HomeStatus.loaded,
          paginatedProjects: projects,
          projects: List.from(state.projects)..addAll(projects.items),
          trendingProjects: List.from(state.trendingProjects),
        ),
      );
    } on ProjectException catch (e) {
      emit(
        state.copyWith(
          status: HomeStatus.error,
          paginatedProjects: state.paginatedProjects.copyWith(),
          projects: List.from(state.projects),
          trendingProjects: List.from(state.trendingProjects),
          message: e.message,
        ),
      );
    }
  }

  Future<void> _onProjectUpdated(
    HomeProjectUpdated event,
    Emitter<HomeState> emit,
  ) async {
    final updatedProjects = state.projects.map((project) {
      if (project.id == event.project.id) {
        return event.project.copyWith();
      }
      return project;
    }).toList();
    emit(
      state.copyWith(
        status: HomeStatus.loaded,
        paginatedProjects: state.paginatedProjects.copyWith(),
        projects: updatedProjects,
        trendingProjects: List.from(state.trendingProjects),
      ),
    );
  }

  Future<void> _onRefreshProjects(
    HomeRefreshProjects event,
    Emitter<HomeState> emit,
  ) async {
    try {
      final paginatedProjects = await _projectRepo.getLatestProjects();
      emit(
        state.copyWith(
          status: HomeStatus.loaded,
          paginatedProjects: paginatedProjects,
          projects: paginatedProjects.items,
          trendingProjects: List.from(state.trendingProjects),
          uuid: const Uuid().v4(),
        ),
      );
    } on ProjectException catch (e) {
      emit(
        state.copyWith(
          status: HomeStatus.error,
          projects: List.from(state.projects),
          trendingProjects: List.from(state.trendingProjects),
          message: e.message,
        ),
      );
    }
  }

  Future<void> _onLoadProjects(
    HomeLoadProjects event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        status: HomeStatus.loading,
        paginatedProjects: state.paginatedProjects.copyWith(),
        projects: List.from(state.projects),
        trendingProjects: List.from(state.trendingProjects),
      ),
    );
    try {
      final projects = await _projectRepo.getLatestProjects();
      emit(
        state.copyWith(
          status: HomeStatus.loaded,
          paginatedProjects: projects,
          projects: projects.items,
          trendingProjects: List.from(state.trendingProjects),
        ),
      );
    } on ProjectException catch (e) {
      emit(
        state.copyWith(
          status: HomeStatus.error,
          paginatedProjects: state.paginatedProjects.copyWith(),
          projects: List.from(state.projects),
          trendingProjects: List.from(state.trendingProjects),
          message: e.message,
        ),
      );
    }
  }
}
