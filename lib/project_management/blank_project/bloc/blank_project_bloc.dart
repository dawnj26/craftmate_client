import 'package:bloc/bloc.dart';
import 'package:craftmate_client/project_management/blank_project/models/title.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

part 'blank_project_event.dart';
part 'blank_project_state.dart';

class BlankProjectBloc extends Bloc<BlankProjectEvent, BlankProjectState> {
  BlankProjectBloc() : super(const BlankProjectInitial()) {
    on<BlankProjectTitleChange>(_onTitleChange);
    on<BlankProjectToggleVisibility>(_onToggleVisibility);
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
        isPulic: state.isPulic,
      ),
    );
  }

  void _onToggleVisibility(
    BlankProjectToggleVisibility event,
    Emitter<BlankProjectState> emit,
  ) {
    emit(
      BlankProjectModified(
        isPulic: event.isPulic,
        projectTitle: state.projectTitle,
        valid: state.valid,
      ),
    );
  }
}
