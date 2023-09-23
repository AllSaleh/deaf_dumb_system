//this functions using to translate data that comes from api

import 'package:deaf_dumb_system/servess.dart';
import 'package:get/get.dart';

Myservrss myservrss = Get.find();
translatadata(dataAr, dataEn) {
  if (myservrss.sharedPreferences.getString('lang') == 'ar') {
    return dataAr;
  } else {
    return dataEn;
  }
}
