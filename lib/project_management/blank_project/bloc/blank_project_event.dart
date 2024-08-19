part of 'blank_project_bloc.dart';

sealed class BlankProjectEvent extends Equatable {
  const BlankProjectEvent();

  @override
  List<Object> get props => [];
}

final class BlankProjectCreate extends BlankProjectEvent {
  const BlankProjectCreate();
}

final class BlankProjectTitleChange extends BlankProjectEvent {
  final String title;

  const BlankProjectTitleChange({
    required this.title,
  });
}

final class BlankProjectToggleVisibility extends BlankProjectEvent {
  final bool isPulic;
  const BlankProjectToggleVisibility({
    required this.isPulic,
  });
}
