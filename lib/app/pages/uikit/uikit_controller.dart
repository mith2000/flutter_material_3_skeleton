import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/resources.dart';
import '../../routes/app_pages.dart';
import '../../theme/theme_controller.dart';
import 'animations/animation_sample_page.dart';
import 'screens/color_palettes_screen.dart';
import 'screens/component_screen.dart';
import 'screens/elevation_screen.dart';
import 'screens/typography_screen.dart';

part 'uikit_binding.dart';
part 'uikit_page.dart';

enum ScreenSelected {
  component(0),
  color(1),
  typography(2),
  elevation(3);

  const ScreenSelected(this.value);

  final int value;
}

class UIKitController extends GetxController {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  RxInt screenIndex = (ScreenSelected.component.value).obs;

  void handleScreenChanged(int screenSelected) {
    screenIndex.value = screenSelected;
  }
}
