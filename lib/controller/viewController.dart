import 'package:deaf_dumb_system/core/AppRequired/AppImages.dart';
import 'package:deaf_dumb_system/servess.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';

class ViewController extends GetxController {
  Myservrss myservrss = Get.find();
  changelocal() async {
    if (myservrss.sharedPreferences.getString('lang') == 'ar') {
      await Jiffy.setLocale('ar');
    }
  }

  List images = [
    AppImages.like,
    AppImages.dislike,
    AppImages.share2,
    AppImages.download3,
    AppImages.svae
  ];

  @override
  void onInit() {
    changelocal();
    super.onInit();
  }
}
