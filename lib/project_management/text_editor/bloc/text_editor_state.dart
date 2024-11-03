part of 'text_editor_bloc.dart';

@freezed
class TextEditorState with _$TextEditorState {
  const factory TextEditorState.initial({
    @Default([]) List<TextEditorController> controllers,
    TextEditorController? descriptionController,
  }) = Initial;

  const factory TextEditorState.loaded({
    @Default([]) List<TextEditorController> controllers,
    TextEditorController? descriptionController,
  }) = Loaded;
  const factory TextEditorState.inserted({
    @Default([]) List<TextEditorController> controllers,
    TextEditorController? descriptionController,
  }) = Inserted;

  const factory TextEditorState.deleted({
    @Default([]) List<TextEditorController> controllers,
    TextEditorController? descriptionController,
  }) = Deleted;

  const factory TextEditorState.loading({
    @Default([]) List<TextEditorController> controllers,
    TextEditorController? descriptionController,
  }) = Loading;
  const factory TextEditorState.normal({
    @Default([]) List<TextEditorController> controllers,
    TextEditorController? descriptionController,
  }) = Normal;
  const factory TextEditorState.failed({
    required String errMessage,
    @Default([]) List<TextEditorController> controllers,
    TextEditorController? descriptionController,
  }) = Failed;
}
