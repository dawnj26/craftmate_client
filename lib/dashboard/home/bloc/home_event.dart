part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

final class HomeLoadProjects extends HomeEvent {
  const HomeLoadProjects();
}

final class HomeLoadMoreProjects extends HomeEvent {
  const HomeLoadMoreProjects();
}

final class HomeRefreshProjects extends HomeEvent {
  const HomeRefreshProjects();
}

final class HomeProjectUpdated extends HomeEvent {
  const HomeProjectUpdated(this.project);

  final Project project;

  @override
  List<Object> get props => [project];
}

final class HomeProjectDeleted extends HomeEvent {
  const HomeProjectDeleted(this.project);

  final Project project;

  @override
  List<Object> get props => [project];
}
