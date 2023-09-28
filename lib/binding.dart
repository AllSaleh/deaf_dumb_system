
import 'package:get/get.dart';

import 'api/crud.dart';

class Inisilbinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
  }
}