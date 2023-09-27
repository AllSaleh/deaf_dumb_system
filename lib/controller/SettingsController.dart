import 'package:deaf_dumb_system/core/AppRequired/appTheam.dart';
import 'package:deaf_dumb_system/servess.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  Myservrss myservrss = Get.find();
  bool swich = true;

  // bool ss=myservrss.sharedPreferences.getBool
  // myservrss.sharedPreferences.getBool('dark') == true
  //     ? true
  //     : myservrss.sharedPreferences.getBool('dark') == false
  //         ? false
  //         : false ;
  // late bool l;
  onswich(bool val) {
    swich = val;
    if (swich == true) {
      Get.changeTheme(Theames.dark);
      myservrss.sharedPreferences.setBool('dark', true);
      update();
    } else {
      Get.changeTheme(Theames.light);
      myservrss.sharedPreferences.setBool('dark', false);
      update();
    }

    update();
  }
}
