part of 'shop_result_bloc.dart';

@freezed
class ShopResultEvent with _$ShopResultEvent {
  const factory ShopResultEvent.started(String query) = _Started;
  const factory ShopResultEvent.categorySelected(ProjectCategory category) =
      _CategorySelected;
  const factory ShopResultEvent.locationSelected(
    Place location,
    double radius,
  ) = _LocationSelected;
}
