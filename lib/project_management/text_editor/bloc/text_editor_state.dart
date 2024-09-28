part of 'text_editor_bloc.dart';

sealed class TextEditorState extends Equatable {
  const TextEditorState();

  @override
  List<Object> get props => [];
}

final class TextEditorInitial extends TextEditorState {
  const TextEditorInitial();
}

final class TextEditorLoading extends TextEditorState {
  const TextEditorLoading();
}

final class TextEditorNormal extends TextEditorState {
  const TextEditorNormal();
}

final class TextEditorFailed extends TextEditorState {
  const TextEditorFailed({required this.errMessage});
  final String errMessage;

  @override
  // TODO: implement props
  List<Object> get props => [errMessage];
}
