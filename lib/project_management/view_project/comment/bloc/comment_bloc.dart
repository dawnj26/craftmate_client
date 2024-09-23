import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project_repository/project_repository.dart';

part 'comment_event.dart';
part 'comment_state.dart';

class CommentBloc extends Bloc<CommentEvent, CommentState> {
  CommentBloc({required ProjectRepository projectRepo})
      : _projectRepo = projectRepo,
        super(const CommentInitial()) {
    on<CommentLoad>(_onCommentLoaded);
    on<CommentAdded>(_onCommentAdded);
    on<CommentLiked>(_onCommentLiked);
    on<CommentClickedReply>(_onCommentClickedReply);
    on<CommentReplyCanceled>(_onCommentReplyCanceled);
  }

  final ProjectRepository _projectRepo;

  void _onCommentReplyCanceled(
    CommentReplyCanceled event,
    Emitter<CommentState> emit,
  ) {
    emit(CommentLoaded(comments: state.comments, inputText: event.inputText));
  }

  void _onCommentClickedReply(
    CommentClickedReply event,
    Emitter<CommentState> emit,
  ) {
    emit(
      CommentReplying(
        comments: state.comments,
        userName: event.project.creator.name,
      ),
    );
  }

  Future<void> _onCommentLoaded(
    CommentLoad event,
    Emitter<CommentState> emit,
  ) async {
    emit(CommentsLoading(comments: List.from(state.comments)));
    try {
      final comments = await _projectRepo.getComments(event.project.id);

      emit(CommentLoaded(comments: comments));
    } on ProjectException catch (e) {
      emit(CommentError(e.message, comments: List.from(state.comments)));
    }
  }

  Future<void> _onCommentAdded(
    CommentAdded event,
    Emitter<CommentState> emit,
  ) async {
    emit(CommentSending(comments: List.from(state.comments)));
    try {
      final comment =
          await _projectRepo.addComment(event.project, event.comment);
      final comments = [comment, ...state.comments];

      emit(CommentLoaded(comments: comments));
    } on ProjectException catch (e) {
      emit(CommentError(e.message, comments: List.from(state.comments)));
    }
  }

  Future<void> _onCommentLiked(
    CommentLiked event,
    Emitter<CommentState> emit,
  ) async {
    final List<Comment> updatedComments = List.from(state.comments);
    final commentIndex =
        updatedComments.indexWhere((c) => c.id == event.comment.id);

    try {
      final likeCount = event.comment.isLiked
          ? event.comment.likeCount - 1
          : event.comment.likeCount + 1;

      updatedComments[commentIndex] = event.comment.copyWith(
        isLiked: !event.comment.isLiked,
        likeCount: likeCount,
      );

      emit(CommentLoaded(comments: updatedComments));
      await _projectRepo.likeComment(event.comment, event.projectId);
    } on ProjectException catch (e) {
      state.comments[commentIndex] = event.comment.copyWith(
        isLiked: !event.comment.isLiked,
        likeCount: event.comment.likeCount - 1,
      );

      emit(CommentError(e.message, comments: List.from(state.comments)));
    }
  }
}
