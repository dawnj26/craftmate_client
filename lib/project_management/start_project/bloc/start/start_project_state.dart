part of 'start_project_bloc.dart';

@freezed
class StartProjectState with _$StartProjectState {
  const factory StartProjectState.initial({
    required Project project,
    @Default([]) List<bool> completedSteps,
  }) = Initial;

  const factory StartProjectState.saving({
    required Project project,
    @Default([]) List<bool> completedSteps,
  }) = Saving;

  const factory StartProjectState.finished({
    required Project project,
    @Default([]) List<bool> completedSteps,
  }) = Finished;

  const factory StartProjectState.loading({
    required Project project,
    @Default([]) List<bool> completedSteps,
  }) = Loading;

  const factory StartProjectState.loaded({
    required Project project,
    @Default([]) List<bool> completedSteps,
    @Default(false) bool showTutorial,
  }) = Loaded;

  const factory StartProjectState.failed({
    required String errMessage,
    required Project project,
    @Default([]) List<bool> completedSteps,
  }) = Failed;
}
