import 'package:deaf_dumb_system/controller/homeController.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/AppRequired/Text.dart';
import '../widgts/home/Custombottmbarite,s.dart';

class Homescreen extends GetView<HomeController> {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    Get.put(HomeController());

    return GetBuilder<HomeController>(
        builder: (controller) => Scaffold(
              bottomNavigationBar: controller.isSearch == false
                  ? Container(
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ...List.generate(
                                4,
                                (index) => InkWell(
                                      onTap: () {
                                        controller.changepage(index);
                                      },
                                      child: index == 0
                                          ? SizedBox(
                                              height: height / 14,
                                              width: width / 6,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  ClipOval(
                                                    child: Image.asset(
                                                        'images/sh.png'),
                                                  ),
                                                  text(
                                                    title:
                                                        controller.titls[index],
                                                    size: 14,
                                                    // color: color,
                                                  )
                                                ],
                                              ),
                                            )
                                          : CustomItemsBottomBar(
                                              title: controller.titls[index],
                                              icon: controller.icons[index],
                                            ),
                                    ))
                          ],
                        ),
                      ),
                    )
                  : null,
              body: controller.pages.elementAt(controller.curntpage),
            ));
  }
}
