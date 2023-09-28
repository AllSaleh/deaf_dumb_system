import 'package:deaf_dumb_system/servess.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/AppRequired/Text.dart';

class Historysearch extends StatelessWidget {
  const Historysearch({super.key});

  @override
  Widget build(BuildContext context) {
    Myservrss myservrss = Get.find();
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: ListTile(
                  leading: const Icon(Icons.history),
                  title: text(
                    title: 'التصنيف:اتجاهات ومواضع',
                    size: 18,
                    align: myservrss.sharedPreferences.getString('lang') == 'en'
                        ? TextAlign.end
                        : TextAlign.start,
                  ),
                )),
                Image.asset(
                  'images/ss.PNG',
                  width: 120,
                  height: 70,
                  fit: BoxFit.fill,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
