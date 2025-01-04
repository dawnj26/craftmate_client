import 'package:bloc/bloc.dart';
import 'package:craftmate_client/globals.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_repository/material_repository.dart';
import 'package:project_repository/project_repository.dart';

part 'start_project_event.dart';
part 'start_project_state.dart';
part 'start_project_bloc.freezed.dart';

class StartProjectBloc extends Bloc<StartProjectEvent, StartProjectState> {
  StartProjectBloc({
    required ProjectRepository projectRepository,
    required MaterialRepository materialRepository,
    required int projectId,
  })  : _projectRepository = projectRepository,
        _projectId = projectId,
        _materialRepository = materialRepository,
        super(
          Initial(
            project: Project.empty(),
            usedMaterials: [],
          ),
        ) {
    on<_Started>(_onStarted);
    on<_StepCompleteToggled>(_onStepCompleteToggled);
    on<_AllStepsCompleted>(_onAllStepsCompleted);
    on<_ProjectFinished>(_onProjectFinished);
    on<_MaterialsReloaded>(_onMaterialsReloaded);
  }

  final ProjectRepository _projectRepository;
  final int _projectId;
  final MaterialRepository _materialRepository;

  Future<void> _onMaterialsReloaded(
    _MaterialsReloaded event,
    Emitter<StartProjectState> emit,
  ) async {
    emit(
      Loading(
        project: state.project.copyWith(),
        completedSteps: [...state.completedSteps],
        usedMaterials: [...state.usedMaterials],
      ),
    );
    try {
      final usedMaterials =
          await _materialRepository.getProjectUsedMaterials(_projectId);
      emit(
        Loaded(
          project: state.project.copyWith(),
          completedSteps: [...state.completedSteps],
          usedMaterials: usedMaterials,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        Failed(
          errMessage: e.message,
          project: state.project.copyWith(),
          completedSteps: [...state.completedSteps],
          usedMaterials: [...state.usedMaterials],
        ),
      );
    }
  }

  Future<void> _onProjectFinished(
    _ProjectFinished event,
    Emitter<StartProjectState> emit,
  ) async {
    emit(
      Saving(
        project: state.project.copyWith(),
        completedSteps: [...state.completedSteps],
        usedMaterials: [...state.usedMaterials],
      ),
    );
    try {
      final project = await _projectRepository.finishProject(_projectId);

      emit(
        Finished(
          project: project.copyWith(materials: state.project.materials),
          completedSteps: List.generate(
            state.completedSteps.length,
            (index) => true,
          ),
          usedMaterials: [...state.usedMaterials],
        ),
      );
    } on ProjectException catch (e) {
      emit(
        Failed(
          errMessage: e.message,
          project: state.project.copyWith(),
          usedMaterials: [...state.usedMaterials],
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
          usedMaterials: [...state.usedMaterials],
        ),
      );
    } on ProjectException catch (e) {
      emit(
        Failed(
          errMessage: e.message,
          usedMaterials: [...state.usedMaterials],
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
          usedMaterials: [...state.usedMaterials],
        ),
      );
    } on ProjectException catch (e) {
      emit(
        Failed(
          errMessage: e.message,
          usedMaterials: [...state.usedMaterials],
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
        completedSteps: [...state.completedSteps],
        usedMaterials: [],
      ),
    );

    try {
      final project = await _projectRepository.tryGetProjectById(_projectId);
      final usedMaterials =
          await _materialRepository.getProjectUsedMaterials(_projectId);
      final hasSeenTutorial =
          config.prefs.getBool('hasSeenTrackerTutorial') ?? false;
      final List<bool> completedSteps = project.steps == null
          ? []
          : List.generate(
              project.steps!.length,
              (index) => project.steps![index].completedAt != null,
            );
      emit(
        Loaded(
          project: project,
          usedMaterials: usedMaterials,
          completedSteps: completedSteps,
          showTutorial: !hasSeenTutorial,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        Failed(
          usedMaterials: [...state.usedMaterials],
          errMessage: e.message,
          project: state.project.copyWith(),
          completedSteps: [...state.completedSteps],
        ),
      );
    }
  }
}
