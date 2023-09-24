import 'package:deaf_dumb_system/controller/viewController.dart';
import 'package:deaf_dumb_system/core/AppRequired/Text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';

class Views extends StatelessWidget {
  const Views({super.key});

  @override
  Widget build(BuildContext context) {
    ViewController controller = Get.put(ViewController());
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'images/ss.PNG',
                ),
                SizedBox(
                  height: height / 40,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const text(
                        title: 'الاعلى',
                        size: 20,
                        weight: FontWeight.bold,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_downward))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: text(
                    title: 'باب/اتجاهات ومواضيع',
                    color: Color(0xff3C3A3A),
                    size: 15,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: text(
                    title:
                        '${100} ${'4'.tr} ${Jiffy.parse('2023-09-20 14:52:19').fromNow()}... قراءة المزيد',
                    color: Color(0xff3C3A3A),
                    size: 15,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ...List.generate(
                        5,
                        (index) => InkWell(
                              child: Column(
                                children: [
                                  Image.asset(
                                    controller.images[index],
                                    height: 30,
                                    width: 30,
                                    fit: BoxFit.fill,
                                  ),
                                  text(title: 'title')
                                ],
                              ),
                            ))
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
