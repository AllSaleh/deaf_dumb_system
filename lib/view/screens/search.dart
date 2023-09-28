import 'package:deaf_dumb_system/controller/homeController.dart';
import 'package:deaf_dumb_system/core/AppRequired/Text.dart';

import 'package:deaf_dumb_system/servess.dart';
import 'package:deaf_dumb_system/view/widgts/search/historysearch.dart';
import 'package:deaf_dumb_system/view/widgts/search/micsearch.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgts/search/textformfild.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    Myservrss myservrss = Get.find();
    Get.put(HomeController());
    return GetBuilder<HomeController>(
        builder: (controller) => WillPopScope(
            child: ListView(
              shrinkWrap: true,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        controller.closeSearch();
                      },
                      icon: const Icon(Icons.arrow_back),
                    ),
                    Expanded(child: CustomTextForm(
                      onchange: (val) {
                        controller.onchange(val);
                      },
                    )),
                    const MicSearch()
                  ],
                ),
                controller.isSearchs == false
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 25,
                          ),
                          const Historysearch(),
                        ],
                      )
                    : text(title: 'title')
              ],
            ),
            onWillPop: () {
              return controller.closeSearch();
            }));
  }
}
