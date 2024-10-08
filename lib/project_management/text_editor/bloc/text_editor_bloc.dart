import 'package:bloc/bloc.dart';
import 'package:craftmate_client/globals.dart';
import 'package:craftmate_client/project_management/text_editor/models/text_editor_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill_extensions/flutter_quill_extensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_repository/project_repository.dart';

part 'text_editor_event.dart';
part 'text_editor_state.dart';
part 'text_editor_bloc.freezed.dart';

class TextEditorBloc extends Bloc<TextEditorEvent, TextEditorState> {
  TextEditorBloc({
    required ProjectRepository projectRepository,
  })  : _projectRepository = projectRepository,
        super(
          const _Initial(),
        ) {
    on<ImageInserted>(_onImageInserted);
    on<VideoInserted>(_onVideoInserted);
    on<EditorAdded>(_onEditorAdded);
    on<Initialized>(_onInitialized);
    on<EditorAddedAt>(_onEditorAddedAt);
    on<EditorRemoved>(_onEditorRemoved);
  }

  final ProjectRepository _projectRepository;

  void _onEditorRemoved(
    EditorRemoved event,
    Emitter<TextEditorState> emit,
  ) {
    final newControllers = <TextEditorController>[...state.controllers];
    newControllers[event.index - 1].dispose();
    newControllers.removeAt(event.index - 1);

    emit(
      TextEditorState.deleted(
        controllers: newControllers,
        descriptionController: state.descriptionController,
      ),
    );
  }

  void _onEditorAddedAt(
    EditorAddedAt event,
    Emitter<TextEditorState> emit,
  ) {
    final newControllers = <TextEditorController>[...state.controllers];

    newControllers.insert(
      event.index,
      TextEditorController(
        quillController: QuillController.basic(),
        focusNode: FocusNode(),
      ),
    );

    emit(
      TextEditorState.normal(
        controllers: newControllers,
        descriptionController: state.descriptionController,
      ),
    );
  }

  void _onInitialized(
    Initialized event,
    Emitter<TextEditorState> emit,
  ) {
    final newControllers = <TextEditorController>[];

    if (event.project.steps != null) {
      final steps = event.project.steps!;
      for (final step in steps) {
        if (step.content == null) {
          newControllers.add(
            TextEditorController(
              quillController: QuillController.basic(),
              focusNode: FocusNode(),
            ),
          );
        } else {
          final document = Document.fromJson(step.content!);
          newControllers.add(
            TextEditorController(
              quillController: QuillController(
                document: document,
                selection: const TextSelection.collapsed(offset: 0),
              ),
              focusNode: FocusNode(),
            ),
          );
        }
      }
    }

    if (event.project.description != null) {
      final document = Document.fromJson(event.project.description!);
      final description = TextEditorController(
        quillController: QuillController(
          document: document,
          selection: const TextSelection.collapsed(offset: 0),
        ),
        focusNode: FocusNode(),
      );

      emit(
        TextEditorState.loaded(
          controllers: newControllers,
          descriptionController: description,
        ),
      );
      return;
    }

    emit(
      TextEditorState.loaded(
        controllers: newControllers,
        descriptionController: TextEditorController(
          quillController: QuillController.basic(),
          focusNode: FocusNode(),
        ),
      ),
    );
  }

  @override
  Future<void> close() {
    // TODO: implement close
    for (final controller in state.controllers) {
      controller.dispose();
    }
    return super.close();
  }

  void _onEditorAdded(
    EditorAdded event,
    Emitter<TextEditorState> emit,
  ) {
    emit(
      TextEditorState.normal(
        controllers: List.of(state.controllers)
          ..add(
            TextEditorController(
              quillController: QuillController.basic(),
              focusNode: FocusNode(),
            ),
          ),
        descriptionController: state.descriptionController,
      ),
    );
  }

  Future<void> _onImageInserted(
    ImageInserted event,
    Emitter<TextEditorState> emit,
  ) async {
    emit(
      TextEditorState.loading(
        controllers: List.of(state.controllers),
        descriptionController: state.descriptionController,
      ),
    );

    try {
      final imageUrl =
          await _projectRepository.uploadDocumentImage(event.imagePath);

      logger.info('Uploaded image url: $imageUrl');
      event.controller.insertImageBlock(imageSource: imageUrl);

      emit(
        TextEditorState.normal(
          controllers: List.of(state.controllers),
          descriptionController: state.descriptionController,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        TextEditorState.failed(
          errMessage: e.message,
          controllers: List.of(state.controllers),
          descriptionController: state.descriptionController,
        ),
      );
    }
  }

  Future<void> _onVideoInserted(
    VideoInserted event,
    Emitter<TextEditorState> emit,
  ) async {
    emit(
      TextEditorState.loading(
        controllers: List.of(state.controllers),
        descriptionController: state.descriptionController,
      ),
    );

    try {
      final videoUrl = await _projectRepository.uploadVideo(event.videoPath);

      logger.info('Uploaded image url: $videoUrl');
      event.controller.insertVideoBlock(videoUrl: videoUrl);

      emit(
        TextEditorState.normal(
          controllers: List.of(state.controllers),
          descriptionController: state.descriptionController,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        TextEditorState.failed(
          errMessage: e.message,
          controllers: List.of(state.controllers),
          descriptionController: state.descriptionController,
        ),
      );
    }
  }
}
