import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/AppRequired/Text.dart';

class CustomItemsBottomBar extends StatelessWidget {
  final String title;
  final IconData icon;
  // final Color? color;

  const CustomItemsBottomBar({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 23,
          ),
          SizedBox(
            height: Get.width / 50,
          ),
          text(
            title: title,
            size: 14,
            // color: color,
          )
        ],
      ),
    );
  }
}
