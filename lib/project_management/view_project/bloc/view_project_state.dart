part of 'view_project_bloc.dart';

sealed class ViewProjectState extends Equatable {
  const ViewProjectState({
    required this.project,
  });

  final Project project;

  @override
  List<Object> get props => [project];
}

final class ViewProjectInitial extends ViewProjectState {
  const ViewProjectInitial({
    required super.project,
  });
}

final class ViewProjectUploading extends ViewProjectState {
  const ViewProjectUploading({
    required super.project,
  });
}

final class ViewProjectLoading extends ViewProjectState {
  const ViewProjectLoading({
    required super.project,
  });
}

final class ViewProjectDirty extends ViewProjectState {
  const ViewProjectDirty({
    required super.project,
  });
}

final class ViewProjectUploadSuccess extends ViewProjectState {
  const ViewProjectUploadSuccess({
    required super.project,
    this.isModalOpen = false,
  });
  final bool isModalOpen;

  @override
  // TODO: implement props
  List<Object> get props => [isModalOpen];
}

final class ViewProjectFailed extends ViewProjectState {
  const ViewProjectFailed({
    required super.project,
    required this.errMessage,
  });
  final String errMessage;
}

final class ViewProjectRefreshSuccess extends ViewProjectState {
  const ViewProjectRefreshSuccess({
    required super.project,
  });
}

final class ViewProjectForkSuccess extends ViewProjectState {
  const ViewProjectForkSuccess({
    required super.project,
    required this.projectId,
  });

  final int projectId;

  @override
  // TODO: implement props
  List<Object> get props => [projectId];
}
