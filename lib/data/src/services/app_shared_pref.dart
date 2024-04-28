import 'package:shared_preferences/shared_preferences.dart';

abstract class AppSharedPref {
  Future<void> onInit();

  Future<void> setString(String key, String value);

  Future<void> setInt(String key, int value);

  Future<void> setBool(String key, bool value);

  Future<void> setStringList(String key, List<String> value);

  Future<void> setDouble(String key, double value);

  Future<bool> removeKey(String key);

  Future<bool> containsKey(String key);

  Future<String?> getString(String key);

  Future<int?> getInt(String key);

  Future<bool?> getBool(String key);

  Future<List<String>?> getStringList(String key);

  Future<double?> getDouble(String key);
}

class AppSharedPrefImpl extends AppSharedPref {
  late final SharedPreferences _storage;

  @override
  Future<void> onInit() async {
    SharedPreferences.setPrefix('myapp');
    _storage = await SharedPreferences.getInstance();
  }

  @override
  Future<void> setString(String key, String value) {
    return _storage.setString(key, value);
  }

  @override
  Future<void> setInt(String key, int value) {
    return _storage.setInt(key, value);
  }

  @override
  Future<void> setBool(String key, bool value) {
    return _storage.setBool(key, value);
  }

  @override
  Future<void> setStringList(String key, List<String> value) {
    return _storage.setStringList(key, value);
  }

  @override
  Future<void> setDouble(String key, double value) {
    return _storage.setDouble(key, value);
  }

  @override
  Future<bool> removeKey(String key) {
    return _storage.remove(key);
  }

  @override
  Future<bool> containsKey(String key) {
    return Future.value(_storage.containsKey(key));
  }

  @override
  Future<String?> getString(String key) async {
    return Future.value(_storage.getString(key));
  }

  @override
  Future<int?> getInt(String key) {
    return Future.value(_storage.getInt(key));
  }

  @override
  Future<bool?> getBool(String key) {
    return Future.value(_storage.getBool(key));
  }

  @override
  Future<List<String>?> getStringList(String key) {
    return Future.value(_storage.getStringList(key));
  }

  @override
  Future<double?> getDouble(String key) {
    return Future.value(_storage.getDouble(key));
  }
}
