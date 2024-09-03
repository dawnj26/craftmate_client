part of 'view_project_bloc.dart';

sealed class ViewProjectEvent extends Equatable {
  const ViewProjectEvent();

  @override
  List<Object> get props => [];
}

final class ViewProjectLiked extends ViewProjectEvent {
  const ViewProjectLiked();
}

final class ViewProjectChanged extends ViewProjectEvent {
  final Project project;
  const ViewProjectChanged(this.project);

  @override
  // TODO: implement props
  List<Object> get props => [project, ...super.props];
}
