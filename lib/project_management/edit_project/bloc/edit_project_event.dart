part of 'edit_project_bloc.dart';

sealed class EditProjectEvent extends Equatable {
  const EditProjectEvent();

  @override
  List<Object> get props => [];
}

final class EditProjectChanged extends EditProjectEvent {
  const EditProjectChanged();
}

final class EditProjectDescriptionSaved extends EditProjectEvent {
  final List<dynamic> newDescription;
  final Project currentProject;
  final bool shouldExit;

  const EditProjectDescriptionSaved({
    required this.newDescription,
    required this.currentProject,
    required this.shouldExit,
  });

  @override
  // TODO: implement props
  List<Object> get props => [currentProject, newDescription, ...super.props];
}

final class EditProjectStepsSaved extends EditProjectEvent {
  final List<dynamic> newSteps;
  final Project currentProject;
  final bool shouldExit;

  const EditProjectStepsSaved({
    required this.newSteps,
    required this.currentProject,
    required this.shouldExit,
  });

  @override
  // TODO: implement props
  List<Object> get props => [currentProject, newSteps, ...super.props];
}
