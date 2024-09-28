part of 'blank_project_bloc.dart';

sealed class BlankProjectState extends Equatable {
  const BlankProjectState({
    this.projectTitle = const ProjectTitle.pure(),
    this.valid = false,
    this.isPulic = false,
  });

  final ProjectTitle projectTitle;
  final bool valid;
  final bool isPulic;

  @override
  List<Object> get props => [projectTitle, valid, isPulic];
}

final class BlankProjectInitial extends BlankProjectState {
  const BlankProjectInitial();
}

final class BlankProjectModified extends BlankProjectState {
  const BlankProjectModified({
    required super.projectTitle,
    required super.valid,
    required super.isPulic,
  });
}

final class BlankProjectInProgress extends BlankProjectState {
  const BlankProjectInProgress({
    required super.projectTitle,
    required super.valid,
    required super.isPulic,
  });
}

final class BlankProjectInvalid extends BlankProjectState {
  const BlankProjectInvalid({
    required super.projectTitle,
    required super.valid,
    required super.isPulic,
  });
}

final class BlankProjectFailed extends BlankProjectState {
  const BlankProjectFailed({
    required super.projectTitle,
    required super.valid,
    required super.isPulic,
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
    required super.isPulic,
    required this.project,
  });
  final Project project;

  @override
  // TODO: implement props
  List<Object> get props => [project];
}
