import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:craftmate_client/globals.dart';
import 'package:equatable/equatable.dart';
import 'package:project_repository/project_repository.dart';

part 'view_project_event.dart';
part 'view_project_state.dart';

class ViewProjectBloc extends Bloc<ViewProjectEvent, ViewProjectState> {
  late final StreamSubscription<Project> _projectSubscription;

  ViewProjectBloc({
    required ProjectRepository projectRepository,
    required Project project,
  })  : _projectRepository = projectRepository,
        super(ViewProjectInitial(project: project)) {
    on<ViewProjectLiked>(_onProjectLiked);
    on<ViewProjectChanged>(_onProjectChanged);
    on<ViewProjectImageUploaded>(_onProjectImageUploaded);

    // Listen to project changes
    _projectSubscription =
        _projectRepository.getProjectStream(project).listen((p) {
      add(ViewProjectChanged(p));
    });
  }

  final ProjectRepository _projectRepository;

  Future<void> _onProjectImageUploaded(
    ViewProjectImageUploaded event,
    Emitter<ViewProjectState> emit,
  ) async {
    emit(ViewProjectLoading(project: state.project.copyWith()));

    try {
      logger.info('Uploading image');
      final uploadedImageUrl = await _projectRepository.uploadProjectImage(
        state.project,
        event.imageUrl,
      );
      emit(
        ViewProjectUploadSuccess(
          project: state.project.copyWith(imageUrl: uploadedImageUrl),
          isModalOpen: true,
        ),
      );
    } on ProjectException catch (e) {
      logger.warning('Uploading image failed');
      emit(
        ViewProjectFailed(
          errMessage: e.message,
          project: state.project,
        ),
      );
    }
  }

  Future<void> _onProjectLiked(
    ViewProjectLiked event,
    Emitter<ViewProjectState> emit,
  ) async {
    try {
      logger.info('Liking project');
      await _projectRepository.tryToggleLikeById(state.project);
    } on ProjectException catch (e) {
      logger.warning('Toggling like failed');
      emit(
        ViewProjectFailed(
          errMessage: e.message,
          project: state.project,
        ),
      );
    }
  }

  void _onProjectChanged(
    ViewProjectChanged event,
    Emitter<ViewProjectState> emit,
  ) {
    emit(ViewProjectDirty(project: event.project));
  }

  @override
  Future<void> close() {
    // TODO: implement close
    _projectSubscription.cancel();
    _projectRepository.dispose();

    return super.close();
  }
}
