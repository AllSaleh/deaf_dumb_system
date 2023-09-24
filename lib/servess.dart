
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Myservrss extends GetxService {
  late SharedPreferences sharedPreferences;


  Future<Myservrss> iniz() async {
    sharedPreferences = await SharedPreferences.getInstance();
     return this;
    

   
  }
}
 iniservess() async {
      await Get.putAsync(() => Myservrss().iniz());
    }
