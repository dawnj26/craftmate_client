part of 'start_project_bloc.dart';

@freezed
class StartProjectEvent with _$StartProjectEvent {
  const factory StartProjectEvent.started() = _Started;
  const factory StartProjectEvent.stepCompleteToggled(int stepIndex) =
      _StepCompleteToggled;
  const factory StartProjectEvent.allStepsCompleted() = _AllStepsCompleted;
  const factory StartProjectEvent.projectFinished() = _ProjectFinished;
}
