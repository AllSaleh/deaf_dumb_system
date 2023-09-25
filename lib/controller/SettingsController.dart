import 'package:deaf_dumb_system/core/AppRequired/appTheam.dart';
import 'package:deaf_dumb_system/servess.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  Myservrss myservrss = Get.find();
  bool swich = false;

  onswich(bool val) {
    swich = val;
    if (swich == true) {
      Get.changeTheme(Theames.dark);
      myservrss.sharedPreferences.setBool('dark', true);
    } else {
      Get.changeTheme(Theames.light);
      myservrss.sharedPreferences.setBool('dark', false);
    }

    update();
  }
}
