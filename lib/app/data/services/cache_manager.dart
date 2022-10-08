import 'package:get_storage/get_storage.dart';

mixin CacheManager {
  Future<bool> saveToken(String? token) async {
    final box = GetStorage();
    await box.write(CacheManagerKey.token.toString(), token);
    return true;
  }

  String? getToken() {
    final box = GetStorage();
    return box.read(CacheManagerKey.token.toString());
  }

  Future<void> removeToken() async {
    final box = GetStorage();
    await box.remove(CacheManagerKey.token.toString());
  }

  String? getCookie() {
    final box = GetStorage();
    return box.read('cookie');
  }

  // Future<bool> saveLogin(Login login) async {
  //   final box = GetStorage();
  //   await box.write(CacheManagerKey.login.toString(), login.toJson());
  //   return true;
  // }

  Map<String, dynamic> getLogin() {
    final box = GetStorage();
    return box.read(CacheManagerKey.login.toString());
  }

  Future<void> removeLogin() async {
    final box = GetStorage();
    await box.remove(CacheManagerKey.login.toString());
  }

  Future<bool> saveTheme(bool theme) async {
    final box = GetStorage();
    await box.write('ThemeMode', theme);
    return true;
  }

  bool? getTheme() {
    final box = GetStorage();
    return box.read('ThemeMode');
  }

  Future<bool> setIsFirstLaunch(bool theme) async {
    final box = GetStorage();
    await box.write('isFirstLaunch', theme);
    return true;
  }

  bool? getIsFirstLaunch() {
    final box = GetStorage();
    return box.read('isFirstLaunch');
  }

  Future<bool> saveDeviceUUID(String? token) async {
    final box = GetStorage();
    await box.write('DeviceUUID', token);
    return true;
  }

  String? getDeviceUUID() {
    final box = GetStorage();
    return box.read('DeviceUUID');
  }
}

enum CacheManagerKey { token, login, timeline }
