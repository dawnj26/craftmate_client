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
