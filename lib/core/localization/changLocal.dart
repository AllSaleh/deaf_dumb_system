import 'package:deaf_dumb_system/core/AppRequired/appTheam.dart';
import 'package:deaf_dumb_system/servess.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalizationsController extends GetxController {
  Myservrss myservrss = Get.find();
  ThemeData apptheam = englishTheam;
  Locale? language;

  changlan(String lancode) {
    Locale locale = Locale(lancode);
    myservrss.sharedPreferences.setString('lang', lancode);
    apptheam = lancode == 'ar' ? arabicTheam : englishTheam;
    Get.changeTheme(apptheam);

    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? lan = myservrss.sharedPreferences.getString('lang');
    if (lan == 'ar') {
      language = const Locale('ar');
      apptheam = arabicTheam;
    } else if (lan == 'en') {
      language = const Locale('en');
      apptheam = englishTheam;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
