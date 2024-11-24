part of 'shop_bloc.dart';

@freezed
class ShopEvent with _$ShopEvent {
  const factory ShopEvent.started() = _Started;
  const factory ShopEvent.currentLocationChanged(
    Place currentLocation,
    double radiusKm,
  ) = _CurrentLocationChanged;
  const factory ShopEvent.refreshed() = _Refreshed;
}
