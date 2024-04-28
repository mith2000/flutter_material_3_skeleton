part of 'uikit_controller.dart';

class UIKitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UIKitController>(() => UIKitController());
  }
}
