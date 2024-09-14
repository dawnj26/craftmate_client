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
  }

  final ProjectRepository _projectRepo;

  Future<void> _onCommentLoaded(
    CommentLoaded event,
    Emitter<CommentState> emit,
  ) async {
    emit(const CommentLoading());
    try {
      final comments = await _projectRepo.getComments(event.project.id);

      emit(CommentSuccess(comments));
    } on ProjectException catch (e) {
      emit(CommentError(e.message));
    }
  }
}
