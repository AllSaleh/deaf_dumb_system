import 'package:get/get.dart';

class HomeController extends GetxController {
  bool isSearch = false;

  onsearch() {
    isSearch = true;
    update();
  }

  closeSearch() {
    isSearch = false;
    update();
  }

  goToView() {
    Get.toNamed('/view');
  }
}
