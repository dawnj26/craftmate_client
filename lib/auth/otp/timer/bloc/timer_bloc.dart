import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:craftmate_client/auth/otp/timer/models/ticker.dart';
import 'package:craftmate_client/globals.dart';
import 'package:equatable/equatable.dart';

part 'timer_event.dart';
part 'timer_state.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {

  TimerBloc({required Ticker ticker})
      : _ticker = ticker,
        super(const TimerInitial(_duration)) {
    on<TimerStarted>(_onStart);
    on<_TimerTicked>(_onTick);
  }
  static const _duration = 300;
  final Ticker _ticker;

  StreamSubscription<int>? _tickerSubscription;

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }

  void _onStart(TimerStarted event, Emitter<TimerState> emit) {
    logger.debug('Timer started');
    emit(TimerInProgress(event.duration));
    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker
        .tick(ticks: event.duration)
        .listen((duration) => add(_TimerTicked(duration: duration)));
  }

  void _onTick(_TimerTicked event, Emitter<TimerState> emit) {
    emit(
      event.duration > 0
          ? TimerInProgress(event.duration)
          : const TimerComplete(),
    );
  }
}
