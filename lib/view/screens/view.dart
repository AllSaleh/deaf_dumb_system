import 'package:deaf_dumb_system/controller/viewcontroller.dart';
import 'package:deaf_dumb_system/core/apprequired/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miniplayer/miniplayer.dart';

import '../widgts/view/customviewwidget.dart';

class Views extends StatelessWidget {
  const Views({super.key});



  @override
  Widget build(BuildContext context) {
    Get.put(ViewController());

    return Scaffold(
      body: Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Miniplayer(
              minHeight: 50,
              maxHeight: MediaQuery.of(context).size.height,
              builder: (height, width) {
                if (height < 100)
                  return  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('images/ss.PNG'),
                      text(title: 'التصنيف اتجاهات'),
                      Icon(Icons.play_arrow),
                      Icon(Icons.close)
                    ],
                  );
                return GetBuilder<ViewController>(
                    builder: (controller) => const CustomViewWidget());
              })),
    );
  }
}
