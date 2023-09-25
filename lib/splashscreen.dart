import 'package:deaf_dumb_system/controller/splashscreencontroller.dart';

import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Get.put(SplashScreenController());
    var height = MediaQuery.of(context).size.height;
    var weidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Stack(
        children: [
          EasySplashScreen(
              backgroundImage: const AssetImage('images/22 1.png'),
              showLoader: false,
              logo: Image.asset(
                'images/22 1.png',
                height: 0,
                width: 0,
                fit: BoxFit.fill,
              )),
          Positioned(left: 2, child: Image.asset('images/باترن 1.png')),
          Positioned(
              top: height / 12,
              right: 1,
              child: Image.asset('images/logo00.png')),
          Positioned(
              left: weidth / 7,
              top: height / 3,
              child: Image.asset('images/qamoslogo.png')),
        ],
      ),
    );
  }
}
