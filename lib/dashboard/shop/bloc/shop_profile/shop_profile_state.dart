part of 'shop_profile_bloc.dart';

@freezed
class ShopProfileState with _$ShopProfileState {
  const factory ShopProfileState.initial({
    @Default(ShopOverview()) ShopOverview shopOverview,
    @Default('Weekly') String period,
  }) = Initial;

  const factory ShopProfileState.loading({
    @Default(ShopOverview()) ShopOverview shopOverview,
    @Default('Weekly') String period,
  }) = Loading;

  const factory ShopProfileState.loaded({
    @Default(ShopOverview()) ShopOverview shopOverview,
    @Default('Weekly') String period,
  }) = Loaded;

  const factory ShopProfileState.error({
    @Default(ShopOverview()) ShopOverview shopOverview,
    @Default('Weekly') String period,
    required String message,
  }) = Error;
}
