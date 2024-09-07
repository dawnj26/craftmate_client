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
  final bool shouldExit;

  const EditProjectClean({required this.shouldExit});

  @override
  // TODO: implement props
  List<Object> get props => [shouldExit, ...super.props];
}

final class EditProjectLoading extends EditProjectState {
  const EditProjectLoading();
}

final class EditProjectFailed extends EditProjectState {
  final String errMessage;
  const EditProjectFailed({
    required this.errMessage,
  });

  @override
  // TODO: implement props
  List<Object> get props => [errMessage, ...super.props];
}

final class EditProjectSuccess extends EditProjectState {
  const EditProjectSuccess();
}
