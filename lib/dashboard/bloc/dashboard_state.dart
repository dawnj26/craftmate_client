part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = Initial;
  const factory DashboardState.projectReceived({
    required String uuid,
    required int id,
  }) = ProjectReceived;

  const factory DashboardState.shopReceived({
    required String uuid,
    required String id,
  }) = ShopReceived;

  const factory DashboardState.userReceived({
    required String uuid,
    required int id,
  }) = UserReceived;
}
