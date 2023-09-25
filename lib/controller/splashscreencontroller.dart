import 'dart:async';

import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() async {
    Timer(const Duration(seconds: 2), () => Get.offAllNamed('/homescreen'));

    super.onInit();
  }
}
