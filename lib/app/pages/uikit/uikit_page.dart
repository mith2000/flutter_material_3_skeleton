// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
part of 'uikit_controller.dart';

class UIKitPage extends GetView<UIKitController> {
  const UIKitPage({super.key});

  static Future<dynamic> open() async {
    return Get.toNamed(Routes.uikit);
  }

  Widget createScreenFor(ScreenSelected screenSelected) {
    switch (screenSelected) {
      case ScreenSelected.component:
        return FirstComponentList(scaffoldKey: controller.scaffoldKey);
      case ScreenSelected.color:
        return const ColorPalettesScreen();
      case ScreenSelected.typography:
        return const TypographyScreen();
      case ScreenSelected.elevation:
        return const ElevationScreen();
    }
  }

  PreferredSizeWidget createAppBar() {
    return AppBar(
      title: Text(R.strings.uiKitMaterial3),
      actions: [
        const _BrightnessButton(),
        IconButton(
          onPressed: () => OpenContainerTransformDemo.open(),
          icon: const Icon(Icons.animation),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      appBar: createAppBar(),
      body: Obx(() =>
          createScreenFor(ScreenSelected.values[controller.screenIndex.value])),
      bottomNavigationBar: NavigationBars(
        onSelectItem: (index) => controller.handleScreenChanged(index),
        selectedIndex: controller.screenIndex.value,
        isExampleBar: false,
      ),
      endDrawer: const NavigationDrawerSection(),
    );
  }
}

class _BrightnessButton extends StatelessWidget {
  const _BrightnessButton();

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      preferBelow: true,
      message: 'Toggle brightness',
      child: Obx(
        () => IconButton(
          icon: Get.find<ThemeController>().isDarkMode.value
              ? const Icon(Icons.light_mode_outlined)
              : const Icon(Icons.dark_mode_outlined),
          onPressed: () => Get.find<ThemeController>()
              .changeTheme(!Get.find<ThemeController>().isDarkMode.value),
        ),
      ),
    );
  }
}
