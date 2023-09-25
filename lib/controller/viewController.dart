import 'package:deaf_dumb_system/core/AppRequired/AppImages.dart';
import 'package:deaf_dumb_system/servess.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';

class ViewController extends GetxController {
  Myservrss myservrss = Get.find();
  bool description = false;
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
  List<String> title = ['22'.tr, '23'.tr, '24'.tr, '25'.tr, '26'.tr];

  showdescription() {
    description = description == true ? false : true;
    update();
  }

  @override
  void onInit() {
    changelocal();
    super.onInit();
  }
}
