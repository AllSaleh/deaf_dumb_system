import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/AppRequired/Text.dart';
import '../../../servess.dart';

class CustomListTileLibrary extends StatelessWidget {
  final IconData icon;
  final Function() ontap;
  final String title;
  final String? subtitle;

  final Widget? trilling;
  const CustomListTileLibrary(
      {super.key,
      required this.icon,
      required this.title,
      this.trilling,
      required this.ontap,
      this.subtitle});

  @override
  Widget build(BuildContext context) {
    Myservrss myservrss = Get.find();

    return ListTile(
      trailing: trilling,
      onTap: ontap,
      leading: Icon(icon),
      subtitle: text(
          title: subtitle!,
          size: 18,
          align: myservrss.sharedPreferences.getString('lang') == 'en'
              ? TextAlign.end
              : TextAlign.start),
      title: text(
        title: title,
        weight: FontWeight.bold,
        size: 18,
        align: myservrss.sharedPreferences.getString('lang') == 'en'
            ? TextAlign.end
            : TextAlign.start,
      ),
    );
  }
}
