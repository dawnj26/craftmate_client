part of 'timer_bloc.dart';

sealed class TimerState extends Equatable {
  const TimerState(this.duration);
  final int duration;

  @override
  List<Object> get props => [duration];
}

final class TimerInitial extends TimerState {
  const TimerInitial(super.duration);
}

final class TimerInProgress extends TimerState {
  const TimerInProgress(super.duration);
}

final class TimerComplete extends TimerState {
  const TimerComplete() : super(0);
}
