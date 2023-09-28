import 'package:flutter/material.dart';
import 'package:deaf_dumb_system/core/AppRequired/Text.dart';
import 'package:get/get.dart';

class Descriptions extends StatelessWidget {
  final String image;
  final String barcode;
  final String descrition1;
  final String descrition2;
  final Function() ontap;

  const Descriptions(
      {super.key,
      required this.image,
      required this.barcode,
      required this.descrition1,
      required this.descrition2,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    var hight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: text(
              title: '36'.tr,
              size: 20,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: ontap,
            child: Container(
              height: hight / 9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffF6F6F6)),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      text(
                        title: descrition1,
                        color: const Color(0xff0A0A0A),
                        size: 15,
                        weight: FontWeight.bold,
                      ),
                      text(
                        title: descrition2,
                        color: const Color(0xff0A0A0A),
                        size: 15,
                        weight: FontWeight.bold,
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: [
                        Image.network(
                          image,
                          height: hight / 20,
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          barcode,
                          height: hight / 20,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
