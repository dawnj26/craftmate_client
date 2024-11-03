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

final class BlankProjectCategoryChange extends BlankProjectEvent {
  const BlankProjectCategoryChange({
    required this.category,
  });
  final ProjectCategory category;

  @override
  // TODO: implement props
  List<Object> get props => [category];
}

final class BlankProjectInitialized extends BlankProjectEvent {
  const BlankProjectInitialized();
}

final class BlankProjectTitleChange extends BlankProjectEvent {
  const BlankProjectTitleChange({
    required this.title,
  });
  final String title;

  @override
  // TODO: implement props
  List<Object> get props => [title];
}

final class BlankProjectToggleVisibility extends BlankProjectEvent {
  const BlankProjectToggleVisibility({
    required this.visibility,
  });
  final ProjectVisibility visibility;

  @override
  // TODO: implement props
  List<Object> get props => [visibility];
}
