import 'package:deaf_dumb_system/controller/HomeController.dart';
import 'package:deaf_dumb_system/core/functions/on_moreButton.dart';
import 'package:deaf_dumb_system/servess.dart';
import 'package:deaf_dumb_system/view/widgts/home/CustomListTil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/AppRequired/AppImages.dart';
import '../../../core/AppRequired/Text.dart';

class ListBuilderVideos extends StatelessWidget {
  const ListBuilderVideos({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 2,
      itemBuilder: (BuildContext context, int index) {
        return const CustomVideosList();
      },
    );
  }
}

class CustomVideosList extends GetView<HomeController> {
  const CustomVideosList({super.key});

  @override
  Widget build(BuildContext context) {
    Myservrss myservrss = Get.find();
    return InkWell(
      onTap: () {
        controller.goToView();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(children: [
          Image.asset(
            'images/ss.PNG',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(
                  AppImages.log,
                ),
              ),
              Expanded(
                child: ListTile(
                  title: text(
                    title: 'الاتجاهات والمواضيع الاعلى',
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
                    onmoreButton(
                        context,
                        Column(
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
                                showbarcode(
                                    context, Image.asset(AppImages.code2));
                              },
                              title: 'QR Code',
                              image: AppImages.barcode,
                            )
                          ],
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
