part of 'text_editor_bloc.dart';

@freezed
class TextEditorEvent with _$TextEditorEvent {
  const factory TextEditorEvent.initialized({
    required Project project,
  }) = Initialized;
  const factory TextEditorEvent.imageInserted({
    required String imagePath,
    required QuillController controller,
  }) = ImageInserted;
  const factory TextEditorEvent.videoInserted({
    required String videoPath,
    required QuillController controller,
  }) = VideoInserted;
  const factory TextEditorEvent.editorAdded() = EditorAdded;
  const factory TextEditorEvent.editorAddedAt({
    required int index,
  }) = EditorAddedAt;
  const factory TextEditorEvent.editorFocused({
    required TextEditorController controller,
  }) = EditorFocused;
  const factory TextEditorEvent.editorRemovedAt({
    required int index,
  }) = EditorRemoved;
}
