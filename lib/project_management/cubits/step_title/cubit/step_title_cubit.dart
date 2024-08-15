import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'step_title_state.dart';

class StepTitleCubit extends Cubit<StepTitleState> {
  StepTitleCubit() : super(const StepTitleInitial());

  void changeTitle(String title) => emit(StepTitleInitial(title: title));
}
