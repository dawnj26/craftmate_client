part of 'blank_project_bloc.dart';

sealed class BlankProjectState extends Equatable {
  const BlankProjectState({
    this.projectTitle = const ProjectTitle.pure(),
    this.valid = false,
    this.visibility = ProjectVisibility.public,
    this.categories = const [],
    this.selectedCategory = const ProjectCategory(name: 'Select a category'),
  });

  final ProjectTitle projectTitle;
  final bool valid;
  final ProjectVisibility visibility;
  final List<ProjectCategory> categories;
  final ProjectCategory selectedCategory;

  @override
  List<Object> get props =>
      [projectTitle, valid, visibility, categories, selectedCategory];
}

final class BlankProjectInitial extends BlankProjectState {
  const BlankProjectInitial();
}

final class BlankProjectLoading extends BlankProjectState {
  const BlankProjectLoading();
}

final class BlankProjectLoaded extends BlankProjectState {
  const BlankProjectLoaded({
    required super.categories,
  });
}

final class BlankProjectModified extends BlankProjectState {
  const BlankProjectModified({
    required super.projectTitle,
    required super.valid,
    required super.visibility,
    required super.categories,
    required super.selectedCategory,
  });
}

final class BlankProjectInProgress extends BlankProjectState {
  const BlankProjectInProgress({
    required super.projectTitle,
    required super.valid,
    required super.visibility,
    required super.categories,
    required super.selectedCategory,
  });
}

final class BlankProjectInvalid extends BlankProjectState {
  const BlankProjectInvalid({
    required super.projectTitle,
    required super.valid,
    required super.visibility,
    required super.categories,
    required super.selectedCategory,
  });
}

final class BlankProjectFailed extends BlankProjectState {
  const BlankProjectFailed({
    required super.projectTitle,
    required super.valid,
    required super.visibility,
    required this.errorMsg,
    required super.categories,
    required super.selectedCategory,
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
    required super.categories,
    required super.selectedCategory,
  });
  final Project project;

  @override
  // TODO: implement props
  List<Object> get props => [project];
}
