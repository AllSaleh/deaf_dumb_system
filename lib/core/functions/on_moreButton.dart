// import 'dart:io';

// import 'package:get/get.dart';
// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> onmoreButton(BuildContext context, Widget colum) {
  Get.defaultDialog(
      title: '',
      radius: 20,
      content: SizedBox(
        height: MediaQuery.of(context).size.height / 3,
        child: Expanded(child: colum),
      ));
  return Future.value(false);
}

Future<bool> showbarcode(BuildContext context, Widget colum) {
  Get.defaultDialog(
      title: '',
      radius: 20,
      content: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 5,
        child: Expanded(child: colum),
      ));
  return Future.value(false);
}
