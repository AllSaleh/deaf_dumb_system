

import 'package:deaf_dumb_system/controller/viewcontroller.dart';
import 'package:deaf_dumb_system/core/AppRequired/Text.dart';
import 'package:deaf_dumb_system/servess.dart';
import 'package:deaf_dumb_system/view/widgts/view/Custoncontiner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';
import 'package:video_player/video_player.dart';

import '../../../core/AppRequired/AppImages.dart';
import 'discrition.dart';

class CustomViewWidget extends StatefulWidget {
  const CustomViewWidget({super.key});

  @override
  State<CustomViewWidget> createState() => _CustomViewWidgetState();
}

class _CustomViewWidgetState extends State<CustomViewWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        return const Viewsdetils();
      },
    );
  }
}

class Viewsdetils extends GetView<ViewController> {
  const Viewsdetils({super.key});

  @override
  Widget build(BuildContext context) {
    Myservrss myservrss = Get.find();
    var height = MediaQuery.of(context).size.height;
    return GetBuilder<ViewController>(
        builder: (controller) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                controller.playerController.value.isInitialized == true
                    ? InkWell(
                        onTap: () {
                          controller.onpressedvideo();
                        },
                        child: Stack(
                          children: [
                            AspectRatio(
                              aspectRatio:
                                  controller.playerController.value.aspectRatio,
                              child: VideoPlayer(controller.playerController),
                            ),
                            controller.playing == false
                                ? Container(
                                    height: height / 3.5,
                                    decoration: const BoxDecoration(
                                        color: Colors.black45),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Customcontiner(
                                            hight: 60,
                                            width: 60,
                                            ontap: () {},
                                            icon: Icons.next_plan),
                                        Customcontiner(
                                          hight: 80,
                                          width: 80,
                                          ontap: () {
                                            controller.playvideo();
                                          },
                                          icon: controller.playerController
                                                      .value.isPlaying ==
                                                  true
                                              ? Icons.stop_circle
                                              : Icons.play_circle,
                                          size: 40,
                                        ),
                                        Customcontiner(
                                            hight: 60,
                                            width: 60,
                                            ontap: () {},
                                            icon: Icons.next_plan)
                                      ],
                                    ),
                                  )
                                : Container(),
                            controller.playing == true
                                ? Container()
                                : Positioned(
                                    right: myservrss.sharedPreferences
                                                .getString('lang') ==
                                            'ar'
                                        ? 5
                                        : null,
                                    left: myservrss.sharedPreferences
                                                .getString('lang') ==
                                            'en'
                                        ? 5
                                        : null,
                                    bottom: 10,
                                    child: text(
                                        weight: FontWeight.bold,
                                        size: 15,
                                        color: Colors.red,
                                        title:
                                            '${controller.videotimer(controller.playerController.value.duration)} / ${controller.videotimer(controller.playerController.value.position)}')),
                            controller.playing == true
                                ? Positioned(
                                    right: myservrss.sharedPreferences
                                                .getString('lang') ==
                                            'ar'
                                        ? 5
                                        : null,
                                    left: myservrss.sharedPreferences
                                                .getString('lang') ==
                                            'en'
                                        ? 5
                                        : null,
                                    bottom: 15,
                                    child: Container(
                                        height: 30,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.black45,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: Center(
                                          child: text(
                                            size: 15,
                                            color: Colors.white,
                                            weight: FontWeight.bold,
                                            title: controller.videotimer(
                                                controller.playerController
                                                    .value.duration),
                                          ),
                                        )))
                                : Container()
                          ],
                        ),
                      )
                    : Container(),
                VideoProgressIndicator(
                  controller.playerController,
                  allowScrubbing: true,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                ),
                InkWell(
                  onTap: () {
                    controller.showabouts();
                  },
                  child: Visibility(
                    visible: controller.about,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const text(
                                title: 'الاعلى',
                                size: 20,
                                weight: FontWeight.bold,
                              ),
                              IconButton(
                                  onPressed: () {
                                    controller.showdescription();
                                  },
                                  icon: const Icon(Icons.arrow_downward))
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: const text(
                            title: 'باب/اتجاهات ومواضيع',
                            // color: Color(0xff3C3A3A),
                            size: 15,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: text(
                            title:
                                '${100} ${'4'.tr} ${Jiffy.parse('2023-09-20 14:52:19').fromNow()}... قراءة المزيد',
                            // color: const Color(0xff3C3A3A),
                            size: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Visibility(
                    visible: controller.description,
                    child: Descriptions(
                      ontap: () {
                        controller.showdescription();
                      },
                      descrition1: 'التصنيف : إتجاهات \nومواضع المصطلح:الأعلى',
                      descrition2: '',
                      image: 'images/ss.PNG',
                      barcode: AppImages.code2,
                    )),
                SizedBox(
                  height: height / 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ...List.generate(
                        5,
                        (index) => InkWell(
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    controller.images[index],
                                    height:
                                        index == 0 || index == 1 || index == 2
                                            ? 23
                                            : 15,
                                    color: myservrss.sharedPreferences
                                                .getBool('dark') ==
                                            true
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  // Image.asset(,
                                  //   controller.images[index],
                                  //   height:
                                  //       index == 0 || index == 1 || index == 2
                                  //           ? 20
                                  //           : 25,
                                  //   width: 30,
                                  //   fit: BoxFit.fill,

                                  // ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  text(
                                    title: controller.title[index],
                                    size: 15,
                                  )
                                ],
                              ),
                            ))
                  ],
                ),
                divider(context),
                Row(
                  children: [
                    Expanded(
                        child: ListTile(
                            title: text(
                              title: 'الجمعيه السعوديه',
                              weight: FontWeight.bold,
                              size: 19,
                              align: myservrss.sharedPreferences
                                          .getString('lang') ==
                                      'en'
                                  ? TextAlign.end
                                  : TextAlign.start,
                            ),
                            subtitle: text(
                              title: '${500} ${'27'.tr}',
                              align: myservrss.sharedPreferences
                                          .getString('lang') ==
                                      'en'
                                  ? TextAlign.end
                                  : TextAlign.start,
                            ),
                            leading: ClipOval(
                              child: Image.asset(AppImages.logo2),
                            ))),
                    MaterialButton(
                        onPressed: () {},
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:
                                  myservrss.sharedPreferences.getBool('dark') ==
                                          true
                                      ? Colors.white
                                      : null),
                          child: Center(
                            child: text(
                              title: '28'.tr,
                              size: 17,
                              weight: FontWeight.bold,
                              color: const Color(0xff004870),
                            ),
                          ),
                        ))
                  ],
                ),
                divider(context)
              ],
            ));
  }

  divider(context) {
    var height = MediaQuery.of(context).size.height;

    return Divider(
      indent: height / 50,
      thickness: 1,
      endIndent: height / 50,
    );
  }
}
