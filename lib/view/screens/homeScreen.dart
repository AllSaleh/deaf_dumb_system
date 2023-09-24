import 'package:deaf_dumb_system/controller/HomeController.dart';
import 'package:deaf_dumb_system/controller/HomeScreenController.dart';
import 'package:deaf_dumb_system/core/AppRequired/AppImages.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgts/home/Custombottmbarite,s.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    HomeScreenController homeScreenController = Get.put(HomeScreenController());

    return GetBuilder<HomeController>(
        builder: (controller) => Scaffold(
              bottomNavigationBar: controller.isSearch == false
                  ? GetBuilder<HomeScreenController>(
                      builder: (controller) => Container(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ...List.generate(
                                      4,
                                      (index) => InkWell(
                                            onTap: () {
                                              controller.changepage(index);
                                            },
                                            child: index == 0
                                                ? ClipOval(
                                                    child: Image.asset(
                                                        AppImages.log),
                                                  )
                                                : CustomItemsBottomBar(
                                                    title:
                                                        controller.titls[index],
                                                    icon:
                                                        controller.icons[index],
                                                  ),
                                          ))
                                ],
                              ),
                            ),
                          ))
                  : null,
              body: homeScreenController.pages.elementAt(homeScreenController.curntpage),
            ));
  }
}
