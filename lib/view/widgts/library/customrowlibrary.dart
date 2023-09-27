import 'package:flutter/material.dart';
import '../../../core/AppRequired/Text.dart';

class CustomRowLibrary extends StatelessWidget {
  final IconData icon;
  final Function() ontap;
  final String title;
  final String? subtitle;
  final Widget? widget;

  const CustomRowLibrary(
      {super.key,
      required this.icon,
      required this.title,
      required this.ontap,
      this.subtitle,
      this.widget});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: ontap,
      child: SizedBox(
        height: height / 16,
        child: Row(
          children: [
            Icon(icon),
            SizedBox(
              width: width / 15,
            ),
            text(
              title: title,
              weight: FontWeight.bold,
              size: 18,
            ),
            SizedBox(
              width: width / 2,
            ),
            widget!
          ],
        ),
      ),
    );
  }
}
