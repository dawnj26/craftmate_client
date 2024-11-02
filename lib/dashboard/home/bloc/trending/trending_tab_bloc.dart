import 'package:bloc/bloc.dart';
import 'package:craftmate_client/dashboard/home/models/most_filter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_repository/project_repository.dart';
import 'package:uuid/uuid.dart';

part 'trending_tab_event.dart';
part 'trending_tab_state.dart';
part 'trending_tab_bloc.freezed.dart';

class TrendingTabBloc extends Bloc<TrendingTabEvent, TrendingTabState> {
  TrendingTabBloc({
    required ProjectRepository projectRepository,
  })  : _projectRepo = projectRepository,
        super(const Initial()) {
    on<_Started>(_onStarted);
    on<_Refreshed>(_onRefreshed);
    on<_LoadMoreProjects>(_onLoadMoreProjects);
    on<_FilterChanged>(_onFilterChanged);
  }

  final ProjectRepository _projectRepo;

  Future<void> _onFilterChanged(
    _FilterChanged event,
    Emitter<TrendingTabState> emit,
  ) async {
    try {
      final page = await _projectRepo.getTrendingProjects(
        'this_week',
        event.filter.value,
      );
      emit(
        Loaded(
          projects: page.items,
          page: page,
          uuid: '',
          filter: event.filter,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        Error(
          message: e.message,
          page: state.page.copyWith(),
          projects: [...state.projects],
        ),
      );
    }
  }

  Future<void> _onLoadMoreProjects(
    _LoadMoreProjects event,
    Emitter<TrendingTabState> emit,
  ) async {
    if (!state.page.hasNextPage) return;
    try {
      final page = await _projectRepo.getNextPage(state.page.nextPageUrl!);
      emit(
        Loaded(
          projects: [...state.projects, ...page.items],
          page: page,
          uuid: '',
        ),
      );
    } on ProjectException catch (e) {
      emit(
        Error(
          message: e.message,
          page: state.page.copyWith(),
          projects: [...state.projects],
        ),
      );
    }
  }

  Future<void> _onRefreshed(
    _Refreshed event,
    Emitter<TrendingTabState> emit,
  ) async {
    try {
      final page = await _projectRepo.getTrendingProjects(
        'this_week',
        state.filter.value,
      );
      emit(
        Loaded(
          projects: page.items,
          page: page,
          uuid: const Uuid().v4(),
          filter: state.filter,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        Error(
          message: e.message,
          page: state.page.copyWith(),
          projects: [...state.projects],
        ),
      );
    }
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<TrendingTabState> emit,
  ) async {
    emit(const Loading());
    try {
      final page = await _projectRepo.getTrendingProjects('this_week');
      emit(Loaded(projects: page.items, page: page, uuid: ''));
    } on ProjectException catch (e) {
      emit(
        Error(
          message: e.message,
          page: state.page,
          projects: [...state.projects],
        ),
      );
    }
  }
}
