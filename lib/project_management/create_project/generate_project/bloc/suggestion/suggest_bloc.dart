import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_repository/project_repository.dart';

part 'suggest_event.dart';
part 'suggest_state.dart';
part 'suggest_bloc.freezed.dart';

class SuggestBloc extends Bloc<SuggestEvent, SuggestState> {
  SuggestBloc({
    required ProjectRepository projectRepo,
    required this.prompt,
  })  : _projectRepo = projectRepo,
        super(const Initial()) {
    on<_Started>(_onStarted);
    on<_Regenerated>(_onRegenerated);
  }

  final Prompt prompt;
  final ProjectRepository _projectRepo;

  Future<void> _onRegenerated(
    _Regenerated event,
    Emitter<SuggestState> emit,
  ) async {
    try {
      emit(
        Loading(suggestions: [...state.suggestions]),
      );

      final suggestions = await _projectRepo.generateProjectSuggestion(
        prompt: prompt,
      );
      emit(RegenerateSuccess(suggestions: suggestions));
    } on GenerateException catch (e) {
      emit(Error(suggestions: [...state.suggestions], message: e.message));
    }
  }

  void _onStarted(_Started event, Emitter<SuggestState> emit) {
    emit(Loaded(suggestions: event.suggestions));
  }
}
