import 'package:deaf_dumb_system/api/handlingdata.dart';
import 'package:deaf_dumb_system/api/statusrequest.dart';
import 'package:deaf_dumb_system/controller/homeController.dart';
import 'package:deaf_dumb_system/core/functions/translatedata.dart';
import 'package:deaf_dumb_system/model/models/categorismodel.dart';
import 'package:deaf_dumb_system/model/models/showcatecsmodel.dart';
import 'package:deaf_dumb_system/view/screens/search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/AppRequired/Text.dart';

import '../widgts/home/listbuildervideos.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return GetBuilder<HomeController>(
        builder: (controller) => Scaffold(
            appBar: controller.isSearch == false
                ? AppBar(
                    leading: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ClipOval(
                        child: Image.asset(
                          'images/logo0.png',
                          color: myservrss.sharedPreferences.getBool('dark') ==
                                  true
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                    actions: [
                      IconButton(
                          onPressed: () {
                            controller.onsearch();
                          },
                          icon: const Icon(
                            Icons.search,
                            size: 30,
                          )),
                      IconButton(
                          onPressed: () {
                            Get.toNamed('/settings');
                          },
                          icon: const Icon(
                            Icons.settings,
                            size: 30,
                          ))
                    ],
                  )
                : null,
            body: HandlingData(
                statusRequst: controller.statusRequst,
                widget: Container(
                  // width: Get.width,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: ListView(
                    children: [
                      controller.isSearch == false
                          ? Column(
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 20,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: ListView.separated(
                                      separatorBuilder: (context, index) =>
                                          const SizedBox(
                                        width: 10,
                                      ),
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: controller.categorise.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return CustomCategorises(
                                          categoriseModel:
                                              CategoriseModel.fromJson(
                                                  controller.categorise[index]),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: controller.statusRequst2 ==
                                          StatusRequst.Sucsess
                                      ? 0
                                      : 300,
                                ),
                                controller.statusRequst2 == StatusRequst.none
                                    ? Container()
                                    : HandlingData(
                                        statusRequst: controller.statusRequst2,
                                        widget: ListView.builder(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount:
                                              controller.showcatss.length,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return CustomVideosList(
                                              showcategModel:
                                                  ShowcategModel.fromJson(
                                                      controller
                                                          .showcatss[index]),
                                            );
                                          },
                                        ))
                              ],
                            )
                          : const Search()
                    ],
                  ),
                ))));
  }
}

class CustomCategorises extends StatelessWidget {
  final CategoriseModel categoriseModel;
  const CustomCategorises({super.key, required this.categoriseModel});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.find();
    return InkWell(
      onTap: () {
        controller.arFirst = categoriseModel.catogry!;
        controller.showcategorises();
      },
      child: Container(
        height: MediaQuery.of(context).size.width / 4,
        width: MediaQuery.of(context).size.width / 3,
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0xffCECECE)),
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xffCECECE).withOpacity(.3)),
        child: Center(
            child: text(
          title: translatadata(
              categoriseModel.catogry, categoriseModel.categoryEn),
          size: 18,
        )),
      ),
    );
  }
}
