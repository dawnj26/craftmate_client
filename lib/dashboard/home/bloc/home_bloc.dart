import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project_repository/project_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required ProjectRepository projectRepo})
      : _projectRepo = projectRepo,
        super(const HomeState()) {
    on<HomeLoadProjects>(_onLoadProjects);
  }

  final ProjectRepository _projectRepo;

  Future<void> _onLoadProjects(
    HomeLoadProjects event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(status: HomeStatus.loading));
    try {
      final projects = await _projectRepo.getLatestProjects();
      emit(
        state.copyWith(
          status: HomeStatus.loaded,
          projects: projects,
          trendingProjects: List.from(state.trendingProjects),
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
}
