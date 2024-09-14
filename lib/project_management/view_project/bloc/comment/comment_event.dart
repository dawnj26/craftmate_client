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
