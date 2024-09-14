part of 'comment_bloc.dart';

sealed class CommentState extends Equatable {
  const CommentState();

  @override
  List<Object> get props => [];
}

final class CommentInitial extends CommentState {
  const CommentInitial();
}

final class CommentLoading extends CommentState {
  const CommentLoading();
}

final class CommentSuccess extends CommentState {
  final List<Comment> comments;
  const CommentSuccess(this.comments);

  @override
  List<Object> get props => [comments];
}

final class CommentError extends CommentState {
  const CommentError(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}
