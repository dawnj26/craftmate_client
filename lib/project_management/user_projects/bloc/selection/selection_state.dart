part of 'selection_bloc.dart';

@freezed
class SelectionState with _$SelectionState {
  const factory SelectionState.initial({
    @Default([]) List<int> selectedProjectIds,
  }) = Initial;
  const factory SelectionState.on({
    @Default([]) List<int> selectedProjectIds,
  }) = On;
  const factory SelectionState.off({
    @Default([]) List<int> selectedProjectIds,
  }) = Off;
}
