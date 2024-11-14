import 'package:config_repository/config_repository.dart';

abstract class IShopRepository {}

class ShopRepository implements IShopRepository {
  final ConfigRepository _config;

  const ShopRepository(this._config);
}
