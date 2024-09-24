part of 'comment_bloc.dart';

sealed class CommentState extends Equatable {
  const CommentState({
    this.comments = const [],
  });

  final List<Comment> comments;

  @override
  List<Object> get props => [comments];
}

final class CommentInitial extends CommentState {
  const CommentInitial({super.comments});
}

final class CommentsLoading extends CommentState {
  const CommentsLoading({super.comments});
}

final class CommentSending extends CommentState {
  const CommentSending({super.comments});
}

final class CommentLoading extends CommentState {
  const CommentLoading({super.comments});
}

final class CommentLoaded extends CommentState {
  final String? inputText;
  const CommentLoaded({super.comments, this.inputText});
}

final class CommentError extends CommentState {
  const CommentError(this.message, {super.comments});

  final String message;

  @override
  List<Object> get props => [message, super.comments];
}

final class CommentReplying extends CommentState {
  final Project project;
  final Comment comment;
  const CommentReplying({
    super.comments,
    required this.project,
    required this.comment,
  });

  @override
  // TODO: implement props
  List<Object> get props => [project, super.comments, comment];
}
