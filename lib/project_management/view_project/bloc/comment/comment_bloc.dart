import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project_repository/project_repository.dart';

part 'comment_event.dart';
part 'comment_state.dart';

class CommentBloc extends Bloc<CommentEvent, CommentState> {
  CommentBloc({required ProjectRepository projectRepo})
      : _projectRepo = projectRepo,
        super(const CommentInitial()) {
    on<CommentLoaded>(_onCommentLoaded);
    on<CommentAdded>(_onCommentAdded);
    on<CommentLiked>(_onCommentLiked);
  }

  final ProjectRepository _projectRepo;

  Future<void> _onCommentLoaded(
    CommentLoaded event,
    Emitter<CommentState> emit,
  ) async {
    emit(CommentsLoading(comments: state.comments));
    try {
      final comments = await _projectRepo.getComments(event.project.id);

      emit(CommentsLoadSuccess(comments: comments));
    } on ProjectException catch (e) {
      emit(CommentError(e.message, comments: state.comments));
    }
  }

  Future<void> _onCommentAdded(
    CommentAdded event,
    Emitter<CommentState> emit,
  ) async {
    emit(CommentLoading(comments: state.comments));
    try {
      final comment =
          await _projectRepo.addComment(event.project.id, event.comment);
      final comments = [comment, ...state.comments];

      emit(CommentAddedSuccess(comments: comments));
    } on ProjectException catch (e) {
      emit(CommentError(e.message, comments: state.comments));
    }
  }

  Future<void> _onCommentLiked(
    CommentLiked event,
    Emitter<CommentState> emit,
  ) async {
    emit(CommentLoading(comments: state.comments));
    final commentIndex =
        state.comments.indexWhere((c) => c.id == event.comment.id);
    try {
      state.comments[commentIndex] =
          event.comment.copyWith(isLiked: !event.comment.isLiked);

      emit(CommentAddedSuccess(comments: state.comments));
    } on ProjectException catch (e) {
      state.comments[commentIndex] =
          event.comment.copyWith(isLiked: event.comment.isLiked);

      emit(CommentError(e.message, comments: state.comments));
    }
  }
}
