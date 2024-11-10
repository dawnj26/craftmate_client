import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_repository/project_repository.dart';

part 'start_project_event.dart';
part 'start_project_state.dart';
part 'start_project_bloc.freezed.dart';

class StartProjectBloc extends Bloc<StartProjectEvent, StartProjectState> {
  StartProjectBloc({
    required ProjectRepository projectRepository,
    required int projectId,
  })  : _projectRepository = projectRepository,
        _projectId = projectId,
        super(
          Initial(
            project: Project.empty(),
          ),
        ) {
    on<_Started>(_onStarted);
    on<_StepCompleteToggled>(_onStepCompleteToggled);
    on<_AllStepsCompleted>(_onAllStepsCompleted);
    on<_ProjectFinished>(_onProjectFinished);
  }

  final ProjectRepository _projectRepository;
  final int _projectId;

  Future<void> _onProjectFinished(
    _ProjectFinished event,
    Emitter<StartProjectState> emit,
  ) async {
    emit(
      Saving(
        project: state.project.copyWith(),
        completedSteps: [...state.completedSteps],
      ),
    );
    try {
      final project = await _projectRepository.finishProject(_projectId);

      emit(
        Finished(
          project: project,
          completedSteps: List.generate(
            state.completedSteps.length,
            (index) => true,
          ),
        ),
      );
    } on ProjectException catch (e) {
      emit(
        Failed(
          errMessage: e.message,
          project: state.project.copyWith(),
          completedSteps: [...state.completedSteps],
        ),
      );
    }
  }

  Future<void> _onAllStepsCompleted(
    _AllStepsCompleted event,
    Emitter<StartProjectState> emit,
  ) async {
    try {
      await _projectRepository.toggleAllStepsComplete(_projectId);

      final isCompleted = state.completedSteps.every((element) => element);

      emit(
        Loaded(
          project: state.project.copyWith(),
          completedSteps: List.generate(
            state.completedSteps.length,
            (index) => !isCompleted,
          ),
        ),
      );
    } on ProjectException catch (e) {
      emit(
        Failed(
          errMessage: e.message,
          project: state.project.copyWith(),
          completedSteps: [...state.completedSteps],
        ),
      );
    }
  }

  Future<void> _onStepCompleteToggled(
    _StepCompleteToggled event,
    Emitter<StartProjectState> emit,
  ) async {
    try {
      await _projectRepository.toggleStepComplete(
        _projectId,
        state.project.steps![event.stepIndex].id,
      );

      final List<bool> completedSteps = [...state.completedSteps];
      completedSteps[event.stepIndex] = !completedSteps[event.stepIndex];
      emit(
        Loaded(
          project: state.project.copyWith(),
          completedSteps: completedSteps,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        Failed(
          errMessage: e.message,
          project: state.project.copyWith(),
          completedSteps: [...state.completedSteps],
        ),
      );
    }
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<StartProjectState> emit,
  ) async {
    emit(
      Loading(
        project: state.project.copyWith(),
      ),
    );

    try {
      final project = await _projectRepository.tryGetProjectById(_projectId);
      final List<bool> completedSteps = project.steps == null
          ? []
          : List.generate(
              project.steps!.length,
              (index) => project.steps![index].completedAt != null,
            );
      emit(
        Loaded(
          project: project,
          completedSteps: completedSteps,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        Failed(
          errMessage: e.message,
          project: state.project.copyWith(),
        ),
      );
    }
  }
}
