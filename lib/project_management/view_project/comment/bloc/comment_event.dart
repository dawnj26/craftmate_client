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

final class CommentClickedReply extends CommentEvent {
  const CommentClickedReply(this.project, this.comment);
  final Project project;
  final Comment comment;

  @override
  // TODO: implement props
  List<Object> get props => [project, comment];
}

final class CommentReplyCanceled extends CommentEvent {
  const CommentReplyCanceled(this.inputText);
  final String inputText;

  @override
  // TODO: implement props
  List<Object> get props => [inputText];
}

final class CommentReplySubmitted extends CommentEvent {
  const CommentReplySubmitted(this.comment, this.project, this.commentText);

  final Comment comment;
  final Project project;
  final String commentText;

  @override
  List<Object> get props => [comment, project, commentText];
}

final class CommentDeleted extends CommentEvent {
  const CommentDeleted(this.comment, this.project);
  final Comment comment;
  final Project project;

  @override
  // TODO: implement props
  List<Object> get props => [comment, project];
}
