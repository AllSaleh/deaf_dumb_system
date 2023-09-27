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
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Image.asset(
              'images/555 1.png',
              height: height / 8,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const text(
                title: 'التصنيف:اتجاهات و مواضع المصطلح ',
                weight: FontWeight.bold,
                size: 14,
              ),
              const text(
                title: 'الجمعيه السعوديه',
                size: 15,
              ),
              text(
                title: '${100} ${'4'.tr}',
                size: 13,
              )
            ],
          ),
          IconButton(
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
                                  backgroundColor: myservrss.sharedPreferences
                                              .getBool('dark') ==
                                          true
                                      ? Colors.white
                                      : Colors.black,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 20),
                                  borderRadius: 20,
                                  messageText: Center(
                                    child: text(
                                      title: '35'.tr,
                                      size: 15,
                                      color: myservrss.sharedPreferences
                                                  .getBool('dark') ==
                                              true
                                          ? Colors.black
                                          : Colors.white,
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
              ))
        ],
      ),
    );
  }
}
