import 'package:deaf_dumb_system/controller/homeController.dart';
import 'package:deaf_dumb_system/core/functions/translatedata.dart';
import 'package:deaf_dumb_system/model/models/showcatecsmodel.dart';
import 'package:deaf_dumb_system/servess.dart';
import 'package:deaf_dumb_system/view/widgts/home/customlisttile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../../../core/AppRequired/AppImages.dart';
import '../../../core/AppRequired/Text.dart';

class CustomVideosList extends GetView<HomeController> {
  final ShowcategModel showcategModel;
  const CustomVideosList({super.key, required this.showcategModel});

  @override
  Widget build(BuildContext context) {
    Myservrss myservrss = Get.find();
    return InkWell(
      onTap: () {
        controller.goToView(showcategModel);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(children: [
          // controller.videoPlayerController!.value.isInitialized == true
          //     ? AspectRatio(
          //         aspectRatio:
          //             controller.videoPlayerController!.value.aspectRatio,
          //         child: VideoPlayer(controller.videoPlayerController!),
          //       )
          //     :
               Image.asset(
                  'images/ss.PNG',
                ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              showcategModel.descriptionImage == null
                  ?const CircleAvatar(
                      backgroundImage: AssetImage('images/sh.png'),
                    )
                  : CircleAvatar(
                      backgroundImage:
                          NetworkImage(showcategModel.descriptionImage!),
                    ),
              Expanded(
                child: ListTile(
                  title: text(
                    title: translatadata(
                        showcategModel.category, showcategModel.categoryEn),
                    align: myservrss.sharedPreferences.getString('lang') == 'en'
                        ? TextAlign.end
                        : TextAlign.start,
                  ),
                  subtitle: text(
                    title: '${220} ${'4'.tr}. اسبوع',
                    align: myservrss.sharedPreferences.getString('lang') == 'en'
                        ? TextAlign.end
                        : TextAlign.start,
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {
                    Get.bottomSheet(Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 50),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomListTile(
                                ontap: () {},
                                title: '18'.tr,
                                image: AppImages.files),
                            CustomListTile(
                                ontap: () {},
                                title: '19'.tr,
                                image: AppImages.download),
                            CustomListTile(
                                ontap: () {},
                                title: '21'.tr,
                                image: AppImages.copy),
                            CustomListTile(
                                ontap: () {},
                                title: '20'.tr,
                                image: AppImages.share),
                            CustomListTile(
                              ontap: () {
                                Get.back();
                                Get.bottomSheet(Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 100),
                                  child: Container(
                                      height: 500,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Image.asset(AppImages.code2)),
                                ));
                              },
                              title: 'QR Code',
                              image: AppImages.barcode,
                            )
                          ],
                        ),
                      ),
                    ));
                  },
                  icon: const Icon(Icons.more_vert))
            ],
          )
        ]),
      ),
    );
  }
}
