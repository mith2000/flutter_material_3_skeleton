import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/resources.dart';

class NetworkConnectionService extends GetxService {
  final Connectivity _connectivity = Connectivity();

  @override
  void onInit() {
    super.onInit();
    _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  void _updateConnectionStatus(ConnectivityResult result) {
    if (result == ConnectivityResult.none) {
      final snackBar = SnackBar(
        behavior: SnackBarBehavior.floating,
        width: 400.0,
        content: Text(R.strings.noInternetConnection),
        action: SnackBarAction(
          label: R.strings.close,
          onPressed: () {},
        ),
      );

      ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();
      ScaffoldMessenger.of(Get.context!).showSnackBar(snackBar);
    }
  }
}
