import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/src/keys/app_key.dart';
import '../../data/src/services/app_shared_pref.dart';

class ThemeController extends GetxController {
  final AppSharedPref _pref = Get.find();

  var isDarkMode = (Get.isPlatformDarkMode).obs;

  @override
  void onInit() {
    super.onInit();
    loadThemeMode();
  }

  void changeTheme(bool isDark) async {
    isDarkMode.value = isDark;
    Get.changeThemeMode(isDark ? ThemeMode.dark : ThemeMode.light);
    await saveThemeMode(isDark);
  }

  Future<void> saveThemeMode(bool isDark) async {
    await _pref.setBool(AppPrefKey.isDarkMode, isDark);
  }

  Future<void> loadThemeMode() async {
    bool? isDark = await _pref.getBool(AppPrefKey.isDarkMode);
    if (isDark != null) {
      changeTheme(isDark);
    } else {
      changeTheme(Get.isPlatformDarkMode);
    }
  }
}
