import 'package:deaf_dumb_system/controller/HomeController.dart';
import 'package:deaf_dumb_system/core/AppRequired/AppImages.dart';
import 'package:deaf_dumb_system/view/screens/search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgts/home/ListbuilderPlayList.dart';
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
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      leading: Padding(
                        padding: const EdgeInsets.only(top: 15, right: 10),
                        child: ClipOval(
                          child: Image.asset(AppImages.log),
                        ),
                      ),
                      actions: [
                        IconButton(
                            onPressed: () {
                              controller.onsearch();
                            },
                            icon: Icon(
                              Icons.search,
                              size: 30,
                              color: const Color(0xffbac3C3A3A).withOpacity(1),
                            )),
                        IconButton(
                            onPressed: () {
                              Get.toNamed('/settings');
                            },
                            icon: Icon(
                              Icons.settings,
                              size: 30,
                              color:const Color(0xffbac3c3a3a).withOpacity(1),
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
