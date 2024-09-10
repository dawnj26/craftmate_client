import 'package:bloc/bloc.dart';
import 'package:craftmate_client/globals.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill_extensions/flutter_quill_extensions.dart';
import 'package:project_repository/project_repository.dart';

part 'text_editor_event.dart';
part 'text_editor_state.dart';

class TextEditorBloc extends Bloc<TextEditorEvent, TextEditorState> {
  TextEditorBloc({required ProjectRepository projectRepo})
      : _projectRepository = projectRepo,
        super(const TextEditorInitial()) {
    on<TextEditorImageInserted>(_onImageInserted);
  }

  final ProjectRepository _projectRepository;

  Future<void> _onImageInserted(
    TextEditorImageInserted event,
    Emitter<TextEditorState> emit,
  ) async {
    emit(const TextEditorLoading());

    try {
      final imageUrl =
          await _projectRepository.uploadDocumentImage(event.imagePath);

      logger.info('Uploaded image url: $imageUrl');
      event.controller.insertImageBlock(imageSource: imageUrl);

      emit(const TextEditorNormal());
    } on ProjectException catch (e) {
      emit(TextEditorFailed(errMessage: e.message));
    }
  }
}
