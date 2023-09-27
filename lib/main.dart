import 'package:deaf_dumb_system/core/AppRequired/appTheam.dart';
import 'package:deaf_dumb_system/core/functions/translatedata.dart';
import 'package:deaf_dumb_system/core/localization/changlocal.dart';
import 'package:deaf_dumb_system/routs.dart';
import 'package:deaf_dumb_system/servess.dart';
import 'package:deaf_dumb_system/test.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/localization/translation.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await iniservess();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocalizationsController controller = Get.put(LocalizationsController());
    return GetMaterialApp(
      locale: controller.language,
      // themeMode: myservrss.sharedPreferences.getBool('dark')==true?Theames.dark:null,
      theme: myservrss.sharedPreferences.getBool('dark') == true
          ? Theames.dark
          : myservrss.sharedPreferences.getBool('dark') == false
              ? Theames.light
              : Theames.light
      // ThemeData(fontFamily: 'Cairo'),

      // ,controller.apptheam,
      ,
      translations: LangugsTranslation(),
      // home: Test(),
// 
      getPages: pages,

      debugShowCheckedModeBanner: false,
    );
  }
}



