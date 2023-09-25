import 'package:deaf_dumb_system/controller/viewcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgts/view/customviewwidget.dart';

class Views extends StatelessWidget {
  const Views({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ViewController());

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: ListView(
          children: [
            GetBuilder<ViewController>(
                builder: (controller) =>const CustomViewWidget())
          ],
        ),
      ),
    );
  }
}
