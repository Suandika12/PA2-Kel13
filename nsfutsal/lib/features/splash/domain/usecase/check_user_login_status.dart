import 'package:nsfutsal/core/service_locator.dart';
import 'package:nsfutsal/services/user_cache_service.dart';

abstract class CheckUserLoginStatus {
  Future<bool> checkIfUserLoggedIn();
}

class CheckUserLoginStatusImpl extends CheckUserLoginStatus {
  @override
  Future<bool> checkIfUserLoggedIn() async {
    final user = await serviceLocator<UserCacheService>().getUser();
    return user != null;
  }
}
