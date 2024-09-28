part of 'text_editor_bloc.dart';

sealed class TextEditorEvent extends Equatable {
  const TextEditorEvent();

  @override
  List<Object> get props => [];
}

final class TextEditorImageInserted extends TextEditorEvent {
  const TextEditorImageInserted({
    required this.imagePath,
    required this.controller,
  });
  final String imagePath;
  final QuillController controller;

  @override
  // TODO: implement props
  List<Object> get props => [imagePath, controller];
}

final class TextEditorVideoInserted extends TextEditorEvent {
  const TextEditorVideoInserted({
    required this.videoPath,
    required this.controller,
  });
  final String videoPath;
  final QuillController controller;

  @override
  // TODO: implement props
  List<Object> get props => [videoPath, controller];
}
