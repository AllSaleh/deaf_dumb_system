import 'package:deaf_dumb_system/servess.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextForm extends StatelessWidget {
  final void Function(String) onchange;
  const CustomTextForm({super.key, required this.onchange});

  @override
  Widget build(BuildContext context) {
    Myservrss myservrss = Get.find();
    return TextFormField(
      onChanged: onchange,

      // autofocus: true,
      cursorColor: Colors.black,
      cursorHeight: 25,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(20)),
          hintText: '8'.tr,
          hintStyle: TextStyle(
              color: myservrss.sharedPreferences.getBool('dark') == true
                  ? Colors.white
                  : myservrss.sharedPreferences.getBool('dark') == false
                      ? Colors.black.withOpacity(.5)
                      : Colors.black.withOpacity(.5)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Color(0xffEBEBEB))),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(20)),
          filled: true,
          fillColor: myservrss.sharedPreferences.getBool('dark') == true
              ? Colors.black45
              : myservrss.sharedPreferences.getBool('dark') == false
                  ? Colors.white
                  : Colors.white),
    );
  }
}
