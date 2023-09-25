import 'package:deaf_dumb_system/core/AppRequired/Text.dart';
import 'package:flutter/material.dart';
import 'package:deaf_dumb_system/core/AppRequired/AppImages.dart';
import 'package:get/get.dart';

import '../../../servess.dart';
import 'customlisttiledownloads.dart';

class ViewDownloads extends StatelessWidget {
  const ViewDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return const CustomViewDownloads();
      },
    );
  }
}

class CustomViewDownloads extends StatelessWidget {
  const CustomViewDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    Myservrss myservrss = Get.find();

    var height = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'images/ss.PNG',
            height: height / 7,
            fit: BoxFit.fill,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: text(
                    title: 'التصنيف:اتجاهات و مواضع المصطلح الاعلى',
                    weight: FontWeight.bold,
                    size: 16,
                    align: myservrss.sharedPreferences.getString('lang') == 'en'
                        ? TextAlign.end
                        : TextAlign.start,
                  ),
                  subtitle: text(
                      title: 'الجمعيه السعوديه',
                      size: 15,
                      align:
                          myservrss.sharedPreferences.getString('lang') == 'en'
                              ? TextAlign.end
                              : TextAlign.start),
                  trailing: IconButton(
                      onPressed: () {
                        Get.bottomSheet(Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomListTileDownloads(
                                    ontap: () {},
                                    title: '33'.tr,
                                    image: AppImages.stop,
                                  ),
                                  CustomListTileDownloads(
                                    ontap: () {
                                      Get.back();
                                      Get.rawSnackbar(
                                          margin: const EdgeInsets.symmetric(
                                              vertical: 20, horizontal: 20),
                                          borderRadius: 20,
                                          messageText: Center(
                                            child: text(
                                              title: '35'.tr,
                                              size: 18,
                                              color: Colors.white,
                                            ),
                                          ));
                                    },
                                    title: '34'.tr,
                                    image: AppImages.delete,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ));
                      },
                      icon: const Icon(
                        Icons.more_vert_outlined,
                        size: 30,
                      )),
                ),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: text(
                      title: '${100} ${'4'.tr}',
                      size: 13,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
