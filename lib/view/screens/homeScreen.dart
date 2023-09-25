import 'package:deaf_dumb_system/controller/homeController.dart';
import 'package:deaf_dumb_system/controller/homescreencontroller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/AppRequired/Text.dart';
import '../widgts/home/Custombottmbarite,s.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    HomeScreenController homeScreenController = Get.put(HomeScreenController());

    return GetBuilder<HomeScreenController>(
        builder: (controller) => Scaffold(
              bottomNavigationBar: homeController.isSearch == false
                  ? Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ...List.generate(
                                4,
                                (index) => InkWell(
                                      onTap: () {
                                        homeScreenController.changepage(index);
                                      },
                                      child: index == 0
                                          ? Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                ClipOval(
                                                  child: Image.asset(
                                                      'images/sh.png'),
                                                ),
                                                text(
                                                  title: homeScreenController
                                                      .titls[index],
                                                  size: 14,
                                                  // color: color,
                                                )
                                              ],
                                            )
                                          : CustomItemsBottomBar(
                                              title: homeScreenController
                                                  .titls[index],
                                              icon: homeScreenController
                                                  .icons[index],
                                            ),
                                    ))
                          ],
                        ),
                      ),
                    )
                  : null,
              body: homeScreenController.pages
                  .elementAt(homeScreenController.curntpage),
            ));
  }
}
