part of 'blank_project_bloc.dart';

sealed class BlankProjectState extends Equatable {
  const BlankProjectState({
    this.projectTitle = const ProjectTitle.pure(),
    this.valid = false,
    this.visibility = ProjectVisibility.public,
  });

  final ProjectTitle projectTitle;
  final bool valid;
  final ProjectVisibility visibility;

  @override
  List<Object> get props => [projectTitle, valid, visibility];
}

final class BlankProjectInitial extends BlankProjectState {
  const BlankProjectInitial();
}

final class BlankProjectModified extends BlankProjectState {
  const BlankProjectModified({
    required super.projectTitle,
    required super.valid,
    required super.visibility,
  });
}

final class BlankProjectInProgress extends BlankProjectState {
  const BlankProjectInProgress({
    required super.projectTitle,
    required super.valid,
    required super.visibility,
  });
}

final class BlankProjectInvalid extends BlankProjectState {
  const BlankProjectInvalid({
    required super.projectTitle,
    required super.valid,
    required super.visibility,
  });
}

final class BlankProjectFailed extends BlankProjectState {
  const BlankProjectFailed({
    required super.projectTitle,
    required super.valid,
    required super.visibility,
    required this.errorMsg,
  });
  final String errorMsg;

  @override
  // TODO: implement props
  List<Object> get props => [errorMsg];
}

final class BlankProjectSuccess extends BlankProjectState {
  const BlankProjectSuccess({
    required super.projectTitle,
    required super.valid,
    required super.visibility,
    required this.project,
  });
  final Project project;

  @override
  // TODO: implement props
  List<Object> get props => [project];
}
