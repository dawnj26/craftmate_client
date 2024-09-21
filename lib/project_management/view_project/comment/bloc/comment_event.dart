part of 'comment_bloc.dart';

sealed class CommentEvent extends Equatable {
  const CommentEvent();

  @override
  List<Object> get props => [];
}

final class CommentLoad extends CommentEvent {
  const CommentLoad(this.project);

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

final class CommentLiked extends CommentEvent {
  const CommentLiked(this.comment, this.projectId);

  final Comment comment;
  final int projectId;

  @override
  List<Object> get props => [comment];
}
