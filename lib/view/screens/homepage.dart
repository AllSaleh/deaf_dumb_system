import 'package:deaf_dumb_system/controller/homeController.dart';
import 'package:deaf_dumb_system/core/functions/translatedata.dart';
import 'package:deaf_dumb_system/view/screens/search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgts/home/listbuilderplayList.dart';
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
                            color:
                                myservrss.sharedPreferences.getBool('dark') ==
                                        true
                                    ? Colors.white
                                    : null,
                          ),
                        ),
                      ),
                      actions: [
                        IconButton(
                            onPressed: () {
                              controller.onsearch();
                            },
                            icon:const Icon(
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
              body: Container(
                // width: Get.width,
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ListView(
                  children: [
                    controller.isSearch == false
                        ? Column(
                            children: [
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 20,
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: ListBuilderPlayList(),
                                ),
                              ),
                              const ListBuilderVideos()
                            ],
                          )
                        : const Search(),
                  ],
                ),
              ),
            ));
  }
}
