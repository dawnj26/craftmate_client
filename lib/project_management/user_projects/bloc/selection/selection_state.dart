part of 'selection_bloc.dart';

@freezed
class SelectionState with _$SelectionState {
  const factory SelectionState.initial({
    @Default([]) List<int> selectedProjectIds,
  }) = _Initial;
  const factory SelectionState.on({
    @Default([]) List<int> selectedProjectIds,
  }) = _On;
  const factory SelectionState.off({
    @Default([]) List<int> selectedProjectIds,
  }) = _Off;
}
