part of 'step_title_cubit.dart';

sealed class StepTitleState extends Equatable {
  const StepTitleState({
    this.title = 'Step',
  });

  final String title;

  @override
  List<Object> get props => [title];
}

final class StepTitleInitial extends StepTitleState {
  const StepTitleInitial({super.title});
}
