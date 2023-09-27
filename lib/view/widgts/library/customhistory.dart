import 'package:deaf_dumb_system/servess.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/AppRequired/Text.dart';

class CustomHistoryView extends StatelessWidget {
  const CustomHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return SizedBox(
      height: height / 3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return const CustomsHistoryViews();
        },
      ),
    );
  }
}

class CustomsHistoryViews extends StatelessWidget {
  const CustomsHistoryViews({super.key});

  @override
  Widget build(BuildContext context) {
    Myservrss myservrss = Get.find();
    var height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        Get.toNamed('/view');
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                'images/ss.PNG',
                height: height / 10,
                width: MediaQuery.of(context).size.width / 2.3,
                fit: BoxFit.fill,
              ),
              Positioned(
                left: myservrss.sharedPreferences.getString('lang') == 'en'
                    ? height / 80
                    : null,
                right: myservrss.sharedPreferences.getString('lang') == 'ar'
                    ? height / 80
                    : null,
                bottom: height / 150,
                child: Container(
                  height: height / 30,
                  width: height / 15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black45.withOpacity(.5)),
                  child: const Center(
                      child: text(
                    title: '9:20',
                    color: Colors.white,
                    weight: FontWeight.bold,
                    size: 15,
                  )),
                ),
              )
            ],
          ),
          SizedBox(
            height: height / 5,
            width: MediaQuery.of(context).size.width / 2,
            // padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: ListTile(
                  title: text(
                    title: 'التصنيف:اتجاهات و مواضع المصطلح الاعلى',
                    weight: FontWeight.bold,
                    size: 16,
                    align: myservrss.sharedPreferences.getString('lang') == 'en'
                        ? TextAlign.end
                        : TextAlign.start,
                  ),
                  subtitle: text(
                      title: 'الجمعيه السعوديه',
                      size: 15,
                      align:
                          myservrss.sharedPreferences.getString('lang') == 'en'
                              ? TextAlign.end
                              : TextAlign.start),
                )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_vert_outlined,
                      size: 30,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
