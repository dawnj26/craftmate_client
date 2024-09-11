part of 'text_editor_bloc.dart';

sealed class TextEditorEvent extends Equatable {
  const TextEditorEvent();

  @override
  List<Object> get props => [];
}

final class TextEditorImageInserted extends TextEditorEvent {
  final String imagePath;
  final QuillController controller;

  const TextEditorImageInserted({
    required this.imagePath,
    required this.controller,
  });

  @override
  // TODO: implement props
  List<Object> get props => [imagePath, controller];
}

final class TextEditorVideoInserted extends TextEditorEvent {
  final String videoPath;
  final QuillController controller;

  const TextEditorVideoInserted({
    required this.videoPath,
    required this.controller,
  });

  @override
  // TODO: implement props
  List<Object> get props => [videoPath, controller];
}
