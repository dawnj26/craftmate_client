import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_repository/project_repository.dart';

part 'view_suggestion_event.dart';
part 'view_suggestion_state.dart';
part 'view_suggestion_bloc.freezed.dart';

class ViewSuggestionBloc
    extends Bloc<ViewSuggestionEvent, ViewSuggestionState> {
  ViewSuggestionBloc({
    required ProjectRepository projectRepo,
    required Prompt prompt,
  })  : _projectRepo = projectRepo,
        _prompt = prompt,
        super(const Initial()) {
    on<_Started>(_onStarted);
    on<_SuggestionSaved>(_onSuggestionSaved);
  }

  final ProjectRepository _projectRepo;
  final Prompt _prompt;

  Future<void> _onSuggestionSaved(
    _SuggestionSaved event,
    Emitter<ViewSuggestionState> emit,
  ) async {
    try {
      emit(
        Saving(
          pSuggestion: state.pSuggestion.copyWith(),
        ),
      );

      await _projectRepo.saveSuggestion(state.pSuggestion);

      emit(Saved(pSuggestion: state.pSuggestion.copyWith()));
    } on ProjectException catch (e) {
      emit(
        Error(message: e.message, pSuggestion: state.pSuggestion.copyWith()),
      );
    }
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<ViewSuggestionState> emit,
  ) async {
    emit(Loading(pSuggestion: state.pSuggestion.copyWith()));

    try {
      final p = await _projectRepo.generateProject(_prompt, event.suggestion);
      emit(Loaded(pSuggestion: p));
    } on GenerateException catch (e) {
      emit(
        Error(message: e.message, pSuggestion: state.pSuggestion.copyWith()),
      );
    }
  }
}
