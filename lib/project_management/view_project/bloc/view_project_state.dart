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

final class ViewProjectDirty extends ViewProjectState {
  const ViewProjectDirty({
    required super.project,
  });
}

final class ViewProjectFailed extends ViewProjectState {
  final String errMessage;
  const ViewProjectFailed({
    required super.project,
    required this.errMessage,
  });
}
