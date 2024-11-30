import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:craftmate_client/globals.dart';
import 'package:craftmate_client/helpers/stream_helper.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:project_repository/project_repository.dart';

part 'view_project_event.dart';
part 'view_project_state.dart';

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
    on<ViewProjectReloaded>(_onProjectReloaded);
    on<ViewProjectForked>(_onProjectForked);
    on<ViewProjectStarted>(_onProjectStarted);
    on<ViewProjectShared>(_onProjectShared);
  }

  final ProjectRepository _projectRepository;
  final int _projectId;

  Future<void> _onProjectShared(
    ViewProjectShared event,
    Emitter<ViewProjectState> emit,
  ) async {
    emit(ViewProjectUploading(project: state.project.copyWith()));

    try {
      final link = await _projectRepository.shareProject(state.project.id);
      await Clipboard.setData(ClipboardData(text: link));

      emit(
        ViewProjectShareSuccess(
          project: state.project.copyWith(),
          link: link,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        ViewProjectFailed(
          errMessage: e.message,
          project: state.project.copyWith(),
        ),
      );
    }
  }

  Future<void> _onProjectStarted(
    ViewProjectStarted event,
    Emitter<ViewProjectState> emit,
  ) async {
    emit(ViewProjectUploading(project: state.project.copyWith()));

    try {
      final project = await _projectRepository.startProject(_projectId);
      emit(ViewProjectStartSuccess(project: project));
    } on ProjectException catch (e) {
      emit(
        ViewProjectFailed(
          errMessage: e.message,
          project: state.project.copyWith(),
        ),
      );
    }
  }

  Future<void> _onProjectForked(
    ViewProjectForked event,
    Emitter<ViewProjectState> emit,
  ) async {
    emit(ViewProjectUploading(project: state.project.copyWith()));
    try {
      final forkedProjectId = await _projectRepository.forkProject(_projectId);
      emit(
        ViewProjectForkSuccess(
          project: state.project.copyWith(),
          projectId: forkedProjectId,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        ViewProjectFailed(
          errMessage: e.message,
          project: state.project.copyWith(),
        ),
      );
    }
  }

  Future<void> _onProjectReloaded(
    ViewProjectReloaded event,
    Emitter<ViewProjectState> emit,
  ) async {
    await _loadProject(emit);
  }

  Future<void> _onProjectViewed(
    ViewProjectViewed event,
    Emitter<ViewProjectState> emit,
  ) async {
    await _loadProject(emit);
  }

  Future<void> _loadProject(Emitter<ViewProjectState> emit) async {
    emit(ViewProjectLoading(project: state.project.copyWith()));
    try {
      final project = await _projectRepository.tryGetProjectById(_projectId);
      emit(ViewProjectDirty(project: project));
    } on ProjectException catch (e) {
      emit(
        ViewProjectFailed(
          errMessage: e.message,
          project: state.project.copyWith(),
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
    emit(ViewProjectUploading(project: state.project.copyWith()));

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
    final prevProject = state.project;
    try {
      if (!prevProject.isLiked) {
        emit(
          ViewProjectDirty(
            project: prevProject.copyWith(
              isLiked: !prevProject.isLiked,
              likeCount: prevProject.likeCount + 1,
            ),
          ),
        );
      } else {
        emit(
          ViewProjectDirty(
            project: prevProject.copyWith(
              isLiked: !prevProject.isLiked,
              likeCount: prevProject.likeCount - 1,
            ),
          ),
        );
      }
      await _projectRepository.tryToggleLikeById(state.project);
    } on ProjectException catch (e) {
      logger.warning('Toggling like failed');
      emit(
        ViewProjectFailed(
          errMessage: e.message,
          project: prevProject,
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
}
