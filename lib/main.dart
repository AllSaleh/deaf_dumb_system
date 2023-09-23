import 'package:deaf_dumb_system/core/localization/changLocal.dart';
import 'package:deaf_dumb_system/servess.dart';
import 'package:deaf_dumb_system/view/tes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'core/localization/translation.dart';

 main()async {
    WidgetsFlutterBinding.ensureInitialized();

   await iniservess();

 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocalizationsController controller =Get.put(LocalizationsController());
    return GetMaterialApp(
      locale:controller.language ,
      theme: controller.apptheam,
      translations: LangugsTranslation(),
      home: Test(),

    );
  }
}