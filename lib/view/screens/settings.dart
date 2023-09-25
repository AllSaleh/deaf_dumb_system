import 'package:deaf_dumb_system/controller/SettingsController.dart';
import 'package:deaf_dumb_system/core/AppRequired/AppImages.dart';
import 'package:deaf_dumb_system/core/AppRequired/Text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgts/settings/downoladmanagment.dart';
import '../widgts/settings/language.dart';
import '../widgts/settings/theamsettings.dart';
import '../widgts/settings/aboutsettings.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SettingsController());
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: text(
          title: '9'.tr,
         
        ),
        // backgroundColor: const Color(0xffEEEEEE),
        // elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListView(
          children: [
            DownoladManagment(
              files: '2',
              ontap: () {},
            ),
            SizedBox(
              height: height / 80,
            ),
            const LanguageSetting(),
            const TheamSettings(),
            Card(
              elevation: 4,
              child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text(
                  title: '15'.tr,
                  size: 20,
                  weight: FontWeight.bold,
                ),
                AboutSettings(
                  ontap: () {},
                  title: '13'.tr,
                  image: AppImages.info,
                  imagecolor: const Color(0xffA4E2DA),
                ),
                AboutSettings(
                    ontap: () {},
                    title: '14'.tr,
                    image: AppImages.website,
                    imagecolor: const Color(0xff2A829F)),
                AboutSettings(
                    ontap: () {},
                    title: '16'.tr,
                    image: AppImages.compny,
                    imagecolor: const Color(0xffD03636)),
                AboutSettings(
                    ontap: () {},
                    title: '17'.tr,
                    image: AppImages.projects,
                    imagecolor: const Color(0xff1F8A4D))
              ],
            ),
              ),
            ),
            // SizedBox(
            //   height: height / 70,
            // ),
            Image.asset(
              AppImages.logo2,
              height: 150,
              // width: 50,
              // fit: BoxFit.fill,
            )
          ],
        ),
      ),
    );
  }
}
