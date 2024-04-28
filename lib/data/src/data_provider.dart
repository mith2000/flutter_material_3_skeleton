import 'package:get/get.dart';

import 'services/app_shared_pref.dart';

class DataProvider {
  static Future<void> inject() async {
    final sharePref = Get.put<AppSharedPref>(AppSharedPrefImpl());
    await sharePref.onInit();

    _DataSourceProvider.inject();
    _RepoProvider.inject();
  }
}

class _DataSourceProvider {
  static void inject() {}
}

class _RepoProvider {
  static void inject() {}
}
