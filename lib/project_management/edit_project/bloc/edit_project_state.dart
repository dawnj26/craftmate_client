part of 'edit_project_bloc.dart';

sealed class EditProjectState extends Equatable {
  const EditProjectState();

  @override
  List<Object> get props => [];
}

final class EditProjectInitial extends EditProjectState {
  const EditProjectInitial();
}

final class EditProjectDirty extends EditProjectState {
  const EditProjectDirty();
}

final class EditProjectClean extends EditProjectState {
  const EditProjectClean({required this.shouldExit});
  final bool shouldExit;

  @override
  // TODO: implement props
  List<Object> get props => [shouldExit];
}

final class EditProjectLoading extends EditProjectState {
  const EditProjectLoading();
}

final class EditProjectFailed extends EditProjectState {
  const EditProjectFailed({
    required this.errMessage,
  });
  final String errMessage;

  @override
  // TODO: implement props
  List<Object> get props => [errMessage];
}
