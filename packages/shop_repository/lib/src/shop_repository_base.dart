import 'package:config_repository/config_repository.dart';

abstract class IShopRepository {
  Future<void> publishListing(Product product);
}

class ShopRepository implements IShopRepository {
  final ConfigRepository _config;

  const ShopRepository(this._config);
}
