import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_repository/material_repository.dart';
import 'package:project_repository/project_repository.dart';

part 'generate_project_event.dart';
part 'generate_project_state.dart';
part 'generate_project_bloc.freezed.dart';

class GenerateProjectBloc
    extends Bloc<GenerateProjectEvent, GenerateProjectState> {
  GenerateProjectBloc({
    required MaterialRepository materialRepo,
    required ProjectRepository projectRepo,
  })  : _materialRepo = materialRepo,
        _projectRepo = projectRepo,
        super(const Initial()) {
    on<_MaterialsLoaded>(_onMaterialsLoaded);
    on<_GenerateSuggestions>(_onGenerateSuggestions);
    on<_ImageSelected>(_onImageSelected);
  }

  final MaterialRepository _materialRepo;
  final ProjectRepository _projectRepo;

  void _onImageSelected(
    _ImageSelected event,
    Emitter<GenerateProjectState> emit,
  ) {
    emit(
      LoadedMaterials(
        materials: [...state.materials],
        imagePath: event.imagePath,
      ),
    );
  }

  Future<void> _onGenerateSuggestions(
    _GenerateSuggestions event,
    Emitter<GenerateProjectState> emit,
  ) async {
    emit(
      LoadingSuggestions(
        materials: [...state.materials],
        imagePath: state.imagePath,
      ),
    );
    try {
      final prompt = Prompt(
        type: event.type,
        difficulty: event.difficulty,
        materials: event.materials,
        additionalInfo: event.additionalInfo,
        imagePath: state.imagePath,
      );

      final suggestions =
          await _projectRepo.generateProjectSuggestion(prompt: prompt);
      emit(
        LoadedSuggestions(
          materials: [...state.materials],
          suggestions: suggestions,
          prompt: prompt,
          imagePath: state.imagePath,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        Error(
          message: e.message,
          materials: [...state.materials],
          imagePath: state.imagePath,
        ),
      );
    }
  }

  Future<void> _onMaterialsLoaded(
    _MaterialsLoaded event,
    Emitter<GenerateProjectState> emit,
  ) async {
    emit(
      LoadingMaterials(materials: [...state.materials]),
    );
    try {
      final materials = await _materialRepo.getMaterials();
      emit(LoadedMaterials(materials: materials));
    } on MaterialException catch (e) {
      emit(
        Error(
          message: e.message,
          materials: [...state.materials],
        ),
      );
    }
  }
}
