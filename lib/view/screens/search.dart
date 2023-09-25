import 'package:deaf_dumb_system/controller/homeController.dart';
import 'package:deaf_dumb_system/core/AppRequired/Text.dart';

import 'package:deaf_dumb_system/servess.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                    Expanded(
                        child: TextFormField(
                      // autofocus: true,
                      cursorColor: Colors.black,
                      cursorHeight: 25,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(20)),
                          hintText: '8'.tr,
                          hintStyle:
                              TextStyle(color: Colors.black.withOpacity(.5)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  const BorderSide(color: Color(0xffEBEBEB))),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 10),
                          border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(20)),
                          filled: true,
                          fillColor: const Color(0xffEBEBEB)),
                    )),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          height: 40,
                          width: 35,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffEBEBEB)),
                          child: const Icon(Icons.mic),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: ListTile(
                              leading: const Icon(Icons.history),
                              title: text(
                                title: 'التصنيف:اتجاهات ومواضع',
                                size: 18,
                                align: myservrss.sharedPreferences
                                            .getString('lang') ==
                                        'en'
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
                ),
              ],
            ),
            onWillPop: () {
              return controller.closeSearch();
            }));
  }
}
