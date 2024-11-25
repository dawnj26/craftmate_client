part of 'shop_activity_bloc.dart';

@freezed
class ShopActivityEvent with _$ShopActivityEvent {
  const factory ShopActivityEvent.started() = _Started;
}