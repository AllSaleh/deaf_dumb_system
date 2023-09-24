import 'package:deaf_dumb_system/core/AppRequired/Text.dart';
import 'package:deaf_dumb_system/servess.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListTile extends StatelessWidget {
  final Function() ontap;

  final String title;
  final String image;
  const CustomListTile(
      {super.key,
      required this.ontap,
      required this.title,
      required this.image});

  @override
  Widget build(BuildContext context) {
    Myservrss myservrss = Get.find();
    return ListTile(
      onTap: ontap,
      title: text(
        title: title,
        weight: FontWeight.bold,
        size: 18,
        align: myservrss.sharedPreferences.getString('lang') == 'en'
            ? TextAlign.end
            : TextAlign.start,
      ),
      leading: Image.asset(
        image,
        height: 25,
        // color: imagecolor,
        fit: BoxFit.fill,
      ),
    );
  }
}
