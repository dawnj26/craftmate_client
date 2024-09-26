part of 'home_bloc.dart';

enum HomeStatus { initial, loading, loaded, error }

final class HomeState extends Equatable {
  const HomeState({
    this.status = HomeStatus.initial,
    this.projects = const <Project>[],
    this.trendingProjects = const <Project>[],
    this.message = '',
  });

  final HomeStatus status;
  final List<Project> projects;
  final List<Project> trendingProjects;
  final String message;

  HomeState copyWith({
    HomeStatus? status,
    List<Project>? projects,
    List<Project>? trendingProjects,
    String? message,
  }) {
    return HomeState(
      status: status ?? this.status,
      projects: projects ?? this.projects,
      trendingProjects: trendingProjects ?? this.trendingProjects,
      message: message ?? this.message,
    );
  }

  @override
  List<Object> get props => [status, projects, trendingProjects];
}
