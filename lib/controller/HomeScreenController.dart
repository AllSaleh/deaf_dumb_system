import 'package:deaf_dumb_system/controller/homeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:deaf_dumb_system/view/screens/Downloads.dart';
import 'package:deaf_dumb_system/view/screens/Education.dart';
import 'package:deaf_dumb_system/view/screens/Library.dart';
import 'package:deaf_dumb_system/view/screens/homepage.dart';

class HomeScreenController extends GetxController {
  HomeController homeController = Get.put(HomeController());
  List<String> titls = ['29'.tr, '1'.tr, '2'.tr, '3'.tr];
  List<IconData> icons = [
    Icons.cast_for_education_outlined,
    Icons.cast_for_education_outlined,
    Icons.download_sharp,
    Icons.video_library_outlined
  ];
  List pages = [
    const HomePage(),
    const Education(),
    const Downloads(),
    const Library()
  ];

  int curntpage = 0;

  changepage(int index) {
    curntpage = index;
    update();
  }
}
