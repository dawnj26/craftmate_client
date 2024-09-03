import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'edit_project_event.dart';
part 'edit_project_state.dart';

class EditProjectBloc extends Bloc<EditProjectEvent, EditProjectState> {
  EditProjectBloc() : super(EditProjectInitial()) {
    on<EditProjectEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
