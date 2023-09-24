import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/SettingsController.dart';
import '../../../core/AppRequired/Text.dart';

class TheamSettings extends StatelessWidget {
  const TheamSettings({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    Get.put(SettingsController());

    return GetBuilder<SettingsController>(
        builder: ((controller) => Card(
            elevation: 4,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text(
                    title: '10'.tr,
                    size: 20,
                    weight: FontWeight.bold,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.dark_mode,
                        color: Colors.yellow,
                        size: 30,
                      ),
                      Row(
                        children: [
                          text(title: '11'.tr),
                          GetBuilder<SettingsController>(
                              builder: (controller) => Switch(
                                  activeColor: const Color(0xffD7D9D7),
                                  value: controller.swich,
                                  onChanged: (val) {
                                    controller.onswich(val);
                                  }))
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: height / 95,
                  ),
                ],
              ),
            ))));
  }
}
