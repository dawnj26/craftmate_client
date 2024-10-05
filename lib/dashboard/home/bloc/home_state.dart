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
    this.uuid = '',
  });

  final HomeStatus status;
  final Pagination<Project> paginatedProjects;
  final List<Project> projects;
  final List<Project> trendingProjects;
  final String message;
  final bool projectReachedMax;
  final String uuid;

  HomeState copyWith({
    HomeStatus? status,
    Pagination<Project>? paginatedProjects,
    List<Project>? projects,
    List<Project>? trendingProjects,
    String? message,
    bool? projectReachedMax,
    String? uuid,
  }) {
    return HomeState(
      status: status ?? this.status,
      paginatedProjects: paginatedProjects ?? this.paginatedProjects,
      projects: projects ?? this.projects,
      trendingProjects: trendingProjects ?? this.trendingProjects,
      message: message ?? this.message,
      projectReachedMax: projectReachedMax ?? this.projectReachedMax,
      uuid: uuid ?? '',
    );
  }

  @override
  List<Object> get props =>
      [status, projects, trendingProjects, projectReachedMax, uuid];
}
