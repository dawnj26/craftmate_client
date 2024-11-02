import 'package:bloc/bloc.dart';
import 'package:craftmate_client/globals.dart';
import 'package:craftmate_client/project_management/create_project/blank_project/models/title.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:project_repository/project_repository.dart';

part 'blank_project_event.dart';
part 'blank_project_state.dart';

class BlankProjectBloc extends Bloc<BlankProjectEvent, BlankProjectState> {
  BlankProjectBloc({required ProjectRepository projectRepo})
      : _projectRepo = projectRepo,
        super(const BlankProjectInitial()) {
    on<BlankProjectTitleChange>(_onTitleChange);
    on<BlankProjectToggleVisibility>(_onToggleVisibility);
    on<BlankProjectCreate>(_onCreate);
    on<BlankProjectInitialized>(_onInitialized);
    on<BlankProjectCategoryChange>(_onCategoryChange);
  }

  final ProjectRepository _projectRepo;

  void _onCategoryChange(
    BlankProjectCategoryChange event,
    Emitter<BlankProjectState> emit,
  ) {
    emit(
      BlankProjectModified(
        projectTitle: state.projectTitle,
        valid: state.valid,
        visibility: state.visibility,
        categories: [...state.categories],
        selectedCategory: event.category,
      ),
    );
  }

  Future<void> _onInitialized(
    BlankProjectInitialized event,
    Emitter<BlankProjectState> emit,
  ) async {
    emit(const BlankProjectLoading());
    try {
      final categories = await _projectRepo.getProjectCategories();

      emit(
        BlankProjectLoaded(
          categories: [
            state.selectedCategory,
            ...categories,
          ],
        ),
      );
    } on ProjectException catch (e) {
      emit(
        BlankProjectFailed(
          errorMsg: e.message,
          projectTitle: const ProjectTitle.pure(),
          valid: false,
          visibility: ProjectVisibility.public,
          categories: const [],
          selectedCategory: state.selectedCategory,
        ),
      );
    }
  }

  void _onTitleChange(
    BlankProjectTitleChange event,
    Emitter<BlankProjectState> emit,
  ) {
    final projectTitle = ProjectTitle.dirty(event.title);
    final isValid = Formz.validate([projectTitle]);

    emit(
      BlankProjectModified(
        projectTitle: projectTitle,
        valid: isValid,
        visibility: state.visibility,
        categories: [...state.categories],
        selectedCategory: state.selectedCategory,
      ),
    );
  }

  void _onToggleVisibility(
    BlankProjectToggleVisibility event,
    Emitter<BlankProjectState> emit,
  ) {
    emit(
      BlankProjectModified(
        visibility: event.visibility,
        projectTitle: state.projectTitle,
        valid: state.valid,
        categories: [...state.categories],
        selectedCategory: state.selectedCategory,
      ),
    );
  }

  Future<void> _onCreate(
    BlankProjectCreate event,
    Emitter<BlankProjectState> emit,
  ) async {
    if (state.valid && state.selectedCategory.id != -1) {
      emit(
        BlankProjectInProgress(
          projectTitle: state.projectTitle,
          valid: state.valid,
          visibility: state.visibility,
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
        ),
      );

      try {
        logger.info('Creating project...');
        final project = await _projectRepo.tryCreateProject(
          state.projectTitle.value,
          state.visibility,
          state.selectedCategory,
          event.tags,
        );

        emit(
          BlankProjectSuccess(
            visibility: state.visibility,
            projectTitle: state.projectTitle,
            valid: state.valid,
            project: project,
            categories: [...state.categories],
            selectedCategory: state.selectedCategory,
          ),
        );
      } on ProjectException catch (e) {
        logger.error('Create project failed');
        emit(
          BlankProjectFailed(
            errorMsg: e.message,
            projectTitle: state.projectTitle,
            valid: state.valid,
            visibility: state.visibility,
            categories: [...state.categories],
            selectedCategory: state.selectedCategory,
          ),
        );
      }
    } else {
      final projectTitle = ProjectTitle.dirty(state.projectTitle.value);
      final isValid = Formz.validate([projectTitle]);

      emit(
        BlankProjectInvalid(
          projectTitle: projectTitle,
          valid: isValid,
          visibility: state.visibility,
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
        ),
      );
    }
  }
}
