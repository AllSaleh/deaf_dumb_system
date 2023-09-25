import 'package:deaf_dumb_system/controller/viewcontroller.dart';
import 'package:deaf_dumb_system/core/AppRequired/Text.dart';
import 'package:deaf_dumb_system/servess.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';

import '../../../core/AppRequired/AppImages.dart';
import 'discrition.dart';

class CustomViewWidget extends StatelessWidget {
  const CustomViewWidget({super.key});

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
                Stack(
                  children: [
                    Image.asset(
                      'images/ss.PNG',
                    ),
                    Positioned(
                      left:
                          myservrss.sharedPreferences.getString('lang') == 'en'
                              ? height / 60
                              : null,
                      right:
                          myservrss.sharedPreferences.getString('lang') == 'ar'
                              ? height / 60
                              : null,
                      bottom: height / 40,
                      child: Container(
                        height: height / 30,
                        width: height / 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black45.withOpacity(.5)),
                        child: const Center(
                            child: text(
                          title: '9:20',
                          color: Colors.white,
                          weight: FontWeight.bold,
                          size: 18,
                        )),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: height / 40,
                ),
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
                ),
                Visibility(
                    visible: controller.description,
                    child: Descriptions(
                      ontap: () {
                        controller.showdescription();
                      },
                      descrition1: 'gfdcxz',
                      descrition2: 'hfgdfvcx',
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
                                  Image.asset(
                                    controller.images[index],
                                    height: 30,
                                    // index == 3 || index == 4 ? 40 : 30,
                                    width: 30,
                                    fit: BoxFit.fill,
                                    color: myservrss.sharedPreferences
                                                .getBool('dark') ==
                                            true
                                        ? Colors.white
                                        : Colors.black,
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
                              color: Colors.white),
                          child: Center(
                            child: text(
                              title: '28'.tr,
                              size: 18,
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
