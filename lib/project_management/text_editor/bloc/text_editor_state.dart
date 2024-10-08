part of 'text_editor_bloc.dart';

@freezed
class TextEditorState with _$TextEditorState {
  const factory TextEditorState.initial({
    @Default([]) List<TextEditorController> controllers,
    TextEditorController? descriptionController,
  }) = _Initial;

  const factory TextEditorState.loaded({
    @Default([]) List<TextEditorController> controllers,
    TextEditorController? descriptionController,
  }) = _Loaded;

  const factory TextEditorState.deleted({
    @Default([]) List<TextEditorController> controllers,
    TextEditorController? descriptionController,
  }) = _Deleted;

  const factory TextEditorState.loading({
    @Default([]) List<TextEditorController> controllers,
    TextEditorController? descriptionController,
  }) = _Loading;
  const factory TextEditorState.normal({
    @Default([]) List<TextEditorController> controllers,
    TextEditorController? descriptionController,
  }) = _Normal;
  const factory TextEditorState.failed({
    required String errMessage,
    @Default([]) List<TextEditorController> controllers,
    TextEditorController? descriptionController,
  }) = _Failed;
}
