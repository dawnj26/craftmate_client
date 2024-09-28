part of 'blank_project_bloc.dart';

sealed class BlankProjectEvent extends Equatable {
  const BlankProjectEvent();

  @override
  List<Object> get props => [];
}

final class BlankProjectCreate extends BlankProjectEvent {
  const BlankProjectCreate({this.tags});
  final String? tags;
}

final class BlankProjectTitleChange extends BlankProjectEvent {
  const BlankProjectTitleChange({
    required this.title,
  });
  final String title;
}

final class BlankProjectToggleVisibility extends BlankProjectEvent {
  const BlankProjectToggleVisibility({
    required this.isPulic,
  });
  final bool isPulic;
}
