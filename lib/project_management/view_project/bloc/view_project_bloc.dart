import 'package:bloc/bloc.dart';
import 'package:craftmate_client/globals.dart';
import 'package:equatable/equatable.dart';
import 'package:project_repository/project_repository.dart';

part 'view_project_event.dart';
part 'view_project_state.dart';

class ViewProjectBloc extends Bloc<ViewProjectEvent, ViewProjectState> {
  ViewProjectBloc({
    required ProjectRepository projectRepository,
    required Project project,
  })  : _projectRepository = projectRepository,
        super(ViewProjectInitial(project: project)) {
    on<ViewProjectLiked>(_onProjectLiked);
  }

  final ProjectRepository _projectRepository;

  Future<void> _onProjectLiked(
    ViewProjectLiked event,
    Emitter<ViewProjectState> emit,
  ) async {
    final project = state.project;

    emit(
      ViewProjectDirty(
        project: project.copyWith(isLiked: !state.project.isLiked),
      ),
    );

    try {
      logger.info('Liking project');
      await _projectRepository.tryToggleLikeById(project.id);
    } on ProjectException catch (_) {
      logger.warning('Toggling like failed');
      emit(
        ViewProjectDirty(
          project: project.copyWith(isLiked: !state.project.isLiked),
        ),
      );
    }
  }
}
