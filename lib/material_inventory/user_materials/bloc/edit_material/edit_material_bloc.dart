import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_material_event.dart';
part 'edit_material_state.dart';
part 'edit_material_bloc.freezed.dart';

class EditMaterialBloc extends Bloc<EditMaterialEvent, EditMaterialState> {
  EditMaterialBloc() : super(_Initial()) {
    on<EditMaterialEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
