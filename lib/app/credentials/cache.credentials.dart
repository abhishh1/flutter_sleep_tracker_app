import 'package:cache_manager/core/delete_cache_service.dart';
import 'package:cache_manager/core/read_cache_service.dart';

class CacheCredentials {
  static const String restaurantIdCache = "restaurant_id_cache";

  static getRestaurantId() async {
    return await ReadCache.getInt(key: restaurantIdCache);
  }

  static void clearCredentials() {
    DeleteCache.deleteKey(restaurantIdCache);
  }
}
