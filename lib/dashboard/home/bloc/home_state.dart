part of 'home_bloc.dart';

enum HomeStatus { initial, loading, loaded, error }

final class HomeState extends Equatable {
  const HomeState({
    this.status = HomeStatus.initial,
    this.paginatedProjects = const Pagination(),
    this.projects = const <Project>[],
    this.trendingProjects = const <Project>[],
    this.message = '',
    this.projectReachedMax = false,
  });

  final HomeStatus status;
  final Pagination<Project> paginatedProjects;
  final List<Project> projects;
  final List<Project> trendingProjects;
  final String message;
  final bool projectReachedMax;

  HomeState copyWith({
    HomeStatus? status,
    Pagination<Project>? paginatedProjects,
    List<Project>? projects,
    List<Project>? trendingProjects,
    String? message,
    bool? projectReachedMax,
  }) {
    return HomeState(
      status: status ?? this.status,
      paginatedProjects: paginatedProjects ?? this.paginatedProjects,
      projects: projects ?? this.projects,
      trendingProjects: trendingProjects ?? this.trendingProjects,
      message: message ?? this.message,
      projectReachedMax: projectReachedMax ?? this.projectReachedMax,
    );
  }

  @override
  List<Object> get props => [status, projects, trendingProjects];
}
