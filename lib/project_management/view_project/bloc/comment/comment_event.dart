part of 'comment_bloc.dart';

sealed class CommentEvent extends Equatable {
  const CommentEvent();

  @override
  List<Object> get props => [];
}

final class CommentLoaded extends CommentEvent {
  const CommentLoaded(this.project);

  final Project project;

  @override
  List<Object> get props => [project];
}
final class CommentAdded extends CommentEvent {
  const CommentAdded(this.project, this.comment);

  final Project project;
  final String comment;
  @override
  List<Object> get props => [project, comment];
}
