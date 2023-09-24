
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/AppRequired/Text.dart';
import '../../../core/localization/changLocal.dart';
import '../../../servess.dart';

class LanguageSetting extends StatelessWidget {
  const LanguageSetting({super.key});

  @override
  Widget build(BuildContext context) {
    Myservrss myservrss = Get.find();

    LocalizationsController controller = Get.put(LocalizationsController());
   
    var height = MediaQuery.of(context).size.height;
    return Card(
      elevation: 4,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text(
              title: '6'.tr,
              size: 20,
              weight: FontWeight.bold,
            ),
            SizedBox(
              height: height / 95,
            ),
            InkWell(
              onTap: () {
                controller.changlan('ar');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const text(
                    title: 'اللغه العربيه',
                    size: 18,
                    weight: FontWeight.bold,
                  ),
                  if (myservrss.sharedPreferences.getString('lang') == 'ar')
                    const Icon(Icons.done)
                ],
              ),
            ),
            SizedBox(
              height: height / 95,
            ),
            Divider(
              height: .5,
              thickness: .8,
            ),
            SizedBox(
              height: height / 95,
            ),
            InkWell(
              onTap: () {
                controller.changlan('en');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const text(
                    title: 'English',
                    size: 18,
                    weight: FontWeight.bold,
                  ),
                  if (myservrss.sharedPreferences.getString('lang') == 'en')
                    const Icon(Icons.done)
                ],
              ),
            ),
            SizedBox(
              height: height / 95,
            ),
          ],
        ),
      ),
    );
  }
}
