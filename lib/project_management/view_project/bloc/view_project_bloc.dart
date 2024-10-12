import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:craftmate_client/globals.dart';
import 'package:equatable/equatable.dart';
import 'package:project_repository/project_repository.dart';
import 'package:stream_transform/stream_transform.dart';

part 'view_project_event.dart';
part 'view_project_state.dart';

EventTransformer<T> debounce<T>(Duration duration) {
  return (events, mapper) => events.debounce(duration).switchMap(mapper);
}

class ViewProjectBloc extends Bloc<ViewProjectEvent, ViewProjectState> {
  ViewProjectBloc({
    required ProjectRepository projectRepository,
    required int projectId,
  })  : _projectRepository = projectRepository,
        _projectId = projectId,
        super(ViewProjectInitial(project: Project.empty())) {
    on<ViewProjectLiked>(
      _onProjectLiked,
      transformer: debounce(const Duration(milliseconds: 180)),
    );
    on<ViewProjectChanged>(_onProjectChanged);
    on<ViewProjectImageUploaded>(_onProjectImageUploaded);
    on<ViewProjectRefreshed>(_onProjectRefreshed);
    on<ViewProjectViewed>(_onProjectViewed);

    // Listen to project changes
    _projectSubscription =
        _projectRepository.getProjectStream(project).listen((p) {
      add(ViewProjectChanged(p));
    });
  }
  late final StreamSubscription<Project> _projectSubscription;

  final ProjectRepository _projectRepository;

  Future<void> _onProjectViewed(
    ViewProjectViewed event,
    Emitter<ViewProjectState> emit,
  ) async {
    try {
      await _projectRepository.viewProjectById(state.project.id);
    } on ProjectException catch (e) {
      emit(
        ViewProjectFailed(
          errMessage: e.message,
          project: state.project,
        ),
      );
    }
  }

  Future<void> _onProjectRefreshed(
    ViewProjectRefreshed event,
    Emitter<ViewProjectState> emit,
  ) async {
    try {
      final project =
          await _projectRepository.tryGetProjectById(state.project.id);
      emit(ViewProjectRefreshSuccess(project: project));
    } on ProjectException catch (e) {
      logger.warning('Refreshing project failed');
      emit(
        ViewProjectFailed(
          errMessage: e.message,
          project: state.project,
        ),
      );
    }
  }

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
