import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Myservess extends GetxService {
  late SharedPreferences sharedPreferences;

  initd() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }
}
