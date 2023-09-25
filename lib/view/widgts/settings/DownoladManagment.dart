

import 'package:deaf_dumb_system/core/apprequired/Text.dart';
import 'package:deaf_dumb_system/servess.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:deaf_dumb_system/core/apprequired/AppImages.dart';

class DownoladManagment extends StatelessWidget {
  final Function() ontap;
  final String files;
  const DownoladManagment(
      {super.key, required this.ontap, required this.files});

  @override
  Widget build(BuildContext context) {
    Myservrss myservrss = Get.find();
    return Card(
      shadowColor: Colors.black,
      elevation: 4,
      child: ListTile(
        title: text(
          title: '5'.tr,
          size: 18,
          weight: FontWeight.bold,
          align: myservrss.sharedPreferences.getString('lang') == 'en'
              ? TextAlign.end
              : TextAlign.start,
        ),
        subtitle: text(
          title: '$files ${'7'.tr}',
          color: const Color(0xff8D8E8D),
          align: myservrss.sharedPreferences.getString('lang') == 'en'
              ? TextAlign.end
              : TextAlign.start,
        ),
        leading: Image.asset(
          AppImages.download2,
          color: myservrss.sharedPreferences.getBool('dark') == true
              ? Colors.white
              : Colors.black,
          height: MediaQuery.of(context).size.height / 35,
        ),
        trailing: IconButton(
          onPressed: ontap,
          icon: const Icon(
            Icons.arrow_forward,
            size: 30,
          ),
        ),
      ),
    );
  }
}
