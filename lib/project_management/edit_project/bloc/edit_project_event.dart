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
  const EditProjectDescriptionSaved({
    required this.newDescription,
    required this.currentProject,
    required this.shouldExit,
  });
  final List<dynamic> newDescription;
  final Project currentProject;
  final bool shouldExit;

  @override
  // TODO: implement props
  List<Object> get props => [currentProject, newDescription, ...super.props];
}

final class EditProjectRecipeSaved extends EditProjectEvent {
  const EditProjectRecipeSaved({
    required this.newSteps,
    required this.newDescription,
    required this.currentProject,
    required this.shouldExit,
  });
  final TextEditorController newDescription;
  final List<TextEditorController> newSteps;
  final Project currentProject;
  final bool shouldExit;

  @override
  // TODO: implement props
  List<Object> get props =>
      [currentProject, newSteps, newDescription, ...super.props];
}
