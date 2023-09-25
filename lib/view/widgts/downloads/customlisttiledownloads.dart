import 'package:deaf_dumb_system/servess.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/AppRequired/Text.dart';

class CustomListTileDownloads extends StatelessWidget {
  final String title;
  final Function() ontap;
  final String image;
  const CustomListTileDownloads(
      {super.key,
      required this.title,
      required this.ontap,
      required this.image});

  @override
  Widget build(BuildContext context) {
    Myservrss myservrss = Get.find();

    return ListTile(
      onTap: ontap,
      leading: Image.asset(
        image,
        height: 30,
        fit: BoxFit.fill,
      ),
      title: text(
        title: title,
        color: Colors.black,
        size: 20,
        align: myservrss.sharedPreferences.getString('lang') == 'en'
            ? TextAlign.end
            : TextAlign.start,
      ),
    );
  }
}
