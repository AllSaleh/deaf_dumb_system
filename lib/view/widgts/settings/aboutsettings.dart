import 'package:deaf_dumb_system/servess.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/AppRequired/Text.dart';

class AboutSettings extends StatelessWidget {
  final Function() ontap;
  final Color imagecolor;
  final String title;
  final String image;
  const AboutSettings(
      {super.key,
      required this.ontap,
      required this.title,
      required this.image,
      required this.imagecolor});

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
        height: MediaQuery.of(context).size.height / 35,
        color: imagecolor,
        fit: BoxFit.fill,
      ),
    );
  }
}
