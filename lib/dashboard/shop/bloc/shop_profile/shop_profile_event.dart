part of 'shop_profile_bloc.dart';

@freezed
class ShopProfileEvent with _$ShopProfileEvent {
  const factory ShopProfileEvent.started(int sellerId) = _Started;
  const factory ShopProfileEvent.periodChanged(String period, int sellerId) =
      _PeriodChanged;
}
