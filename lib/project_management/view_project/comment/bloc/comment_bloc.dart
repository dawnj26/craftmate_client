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
    on<CommentReplySubmitted>(_onCommentReplySubmitted);
    on<CommentDeleted>(_onCommentDeleted);
  }

  final ProjectRepository _projectRepo;

  Future<void> _onCommentDeleted(
    CommentDeleted event,
    Emitter<CommentState> emit,
  ) async {
    emit(CommentSending(comments: List.from(state.comments)));
    try {
      final updatedComments = _deleteComment(state.comments, event.comment);
      await _projectRepo.deleteComment(
        event.comment,
        event.project,
        updatedComments.length,
      );

      emit(CommentLoaded(comments: updatedComments));
    } on ProjectException catch (e) {
      emit(CommentError(e.message, comments: List.from(state.comments)));
    }
  }

  List<Comment> _deleteComment(List<Comment> comments, Comment comment) {
    return comments
        .where((c) => c.id != comment.id)
        .map(
          (c) => c.copyWith(
            children: _deleteComment(c.children, comment),
          ),
        )
        .toList();
  }

  Future<void> _onCommentReplySubmitted(
    CommentReplySubmitted event,
    Emitter<CommentState> emit,
  ) async {
    emit(CommentSending(comments: List.from(state.comments)));
    try {
      final comment = await _projectRepo.replyComment(
        event.comment,
        event.project,
        event.commentText,
      );

      final updatesComments = _replyComment(state.comments, comment);

      emit(CommentLoaded(comments: updatesComments));
    } on ProjectException catch (e) {
      emit(CommentError(e.message, comments: List.from(state.comments)));
    }
  }

  List<Comment> _replyComment(List<Comment> comments, Comment comment) {
    return comments.map((c) {
      if (c.id == comment.parentId) {
        return c.copyWith(children: [comment, ...c.children]);
      } else if (c.children.isNotEmpty) {
        return c.copyWith(children: _replyComment(c.children, comment));
      }
      return c;
    }).toList();
  }

  void _onCommentReplyCanceled(
    CommentReplyCanceled event,
    Emitter<CommentState> emit,
  ) {
    emit(
      CommentLoaded(
        comments: List.from(state.comments),
        inputText: event.inputText,
      ),
    );
  }

  void _onCommentClickedReply(
    CommentClickedReply event,
    Emitter<CommentState> emit,
  ) {
    emit(
      CommentReplying(
        comments: state.comments,
        project: event.project,
        comment: event.comment,
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
    try {
      final updatedComments = _likeComment(state.comments, event.comment);

      emit(CommentLoaded(comments: updatedComments));
      await _projectRepo.likeComment(event.comment, event.projectId);
    } on ProjectException catch (e) {
      final resetComments = _likeComment(state.comments, event.comment);
      emit(CommentError(e.message, comments: resetComments));
    }
  }

  List<Comment> _likeComment(List<Comment> comments, Comment comment) {
    return comments.map((c) {
      if (c.id == comment.id) {
        return c.copyWith(
          isLiked: !c.isLiked,
          likeCount: c.isLiked ? c.likeCount - 1 : c.likeCount + 1,
        );
      } else if (c.children.isNotEmpty) {
        return c.copyWith(children: _likeComment(c.children, comment));
      }
      return c;
    }).toList();
  }
}
