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
  const ViewProjectChanged(this.project);
  final Project project;

  @override
  // TODO: implement props
  List<Object> get props => [project];
}

final class ViewProjectImageUploaded extends ViewProjectEvent {
  const ViewProjectImageUploaded(this.imageUrl);
  final String imageUrl;

  @override
  // TODO: implement props
  List<Object> get props => [imageUrl];
}

final class ViewProjectRefreshed extends ViewProjectEvent {
  const ViewProjectRefreshed();
}

final class ViewProjectReloaded extends ViewProjectEvent {
  const ViewProjectReloaded();
}

final class ViewProjectViewed extends ViewProjectEvent {
  const ViewProjectViewed();
}

final class ViewProjectForked extends ViewProjectEvent {
  const ViewProjectForked();
}

final class ViewProjectStarted extends ViewProjectEvent {
  const ViewProjectStarted();
}
