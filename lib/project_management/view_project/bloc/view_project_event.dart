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
  List<Object> get props => [project];
}

final class ViewProjectImageUploaded extends ViewProjectEvent {
  final String imageUrl;
  const ViewProjectImageUploaded(this.imageUrl);

  @override
  // TODO: implement props
  List<Object> get props => [imageUrl];
}

final class ViewProjectRefreshed extends ViewProjectEvent {
  const ViewProjectRefreshed();
}
