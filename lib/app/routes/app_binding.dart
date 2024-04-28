part of 'app_pages.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<NetworkConnectionService>(NetworkConnectionService(),
        permanent: true);
    Get.put<ThemeController>(ThemeController());
  }
}
