import 'package:deaf_dumb_system/core/AppRequired/Text.dart';
import 'package:deaf_dumb_system/core/functions/translatedata.dart';
import 'package:deaf_dumb_system/view/widgts/library/customrowlibrary.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgts/library/CustomHistory.dart';

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;


    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 15, right: 10),
          child: ClipOval(
            child: Image.asset('images/logo0.png'),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
               
              },
              icon: const Icon(
                Icons.search,
                size: 30,
              )),
          ClipOval(
            child: Image.asset('images/sh.png'),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height / 50,
            ),
            text(
              title: '30'.tr,
              weight: FontWeight.bold,
              size: 20,
            ),
            SizedBox(
              height: height / 50,
            ),
            const CustomHistoryView(),
            Column(
              children: [
                CustomRowLibrary(
                    icon: Icons.history, title: '30'.tr, ontap: () {},widget: Container(),),
                CustomRowLibrary(
                  icon: Icons.video_library,
                  title: '31'.tr,
                  ontap: () {},
                  widget: Container(),
                ),
                CustomRowLibrary(
                  icon: Icons.download_rounded,
                  title: '32'.tr,
                  ontap: () {},
                  widget: CircleAvatar(
                    backgroundColor:
                        myservrss.sharedPreferences.getBool('dark') == true
                            ? Colors.white
                            : Colors.black,
                    radius: 13,
                    child: Icon(
                      Icons.done,
                      size: 20,
                      color: myservrss.sharedPreferences.getBool('dark') == true
                          ? Colors.black
                          : Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
