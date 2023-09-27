import 'dart:async';

import 'package:deaf_dumb_system/core/AppRequired/AppImages.dart';
import 'package:deaf_dumb_system/servess.dart';

import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';
import 'package:video_player/video_player.dart';

class ViewController extends GetxController {
  late VideoPlayerController playerController;
  late Future<void> inilaizvideo;
  Myservrss myservrss = Get.find();
  bool description = false;
  bool about = true;
  bool playing = true;
  changelocal() async {
    if (myservrss.sharedPreferences.getString('lang') == 'ar') {
      await Jiffy.setLocale('ar');
    }
  }

  String videotimer(Duration duration) {
    String toDigits(int n) => n.toString().padLeft(2, '0');
    final hours = toDigits(duration.inHours);
    final minits = toDigits(duration.inMinutes.remainder(60));
    final secound = toDigits(duration.inSeconds.remainder(60));

    return [if (duration.inHours > 0) hours, minits, secound].join(':');
  }

  // String timer(duration) {
  //   Timer(duration, () {
  //     return 
  //   });
  // }

  onupdated() {
    update();
  }

  List images = [
    AppImages.like,
    AppImages.dislike,
    AppImages.share2,
    AppImages.download3,
    AppImages.svae
  ];
  List<String> title = ['22'.tr, '23'.tr, '24'.tr, '25'.tr, '26'.tr];

  showdescription() {
    description = description == true ? false : true;
    about = true;
    update();
  }

  onpressedvideo() {
    playing = playing == true ? false : true;
    update();
  }

  showabouts() {
    about = about == true ? false : true;
    description = true;
    update();
  }

  viewvideo() {
    playerController = VideoPlayerController.asset('images/FlutterThemes.mp4')
      ..initialize().then((_) {
        update();
      });
  }

  playvideo() {
    if (playerController.value.isPlaying == true) {
      playerController.pause();
    } else {
      playerController.play();
    }
    update();
  }

  @override
  void onInit() {
    viewvideo();
    changelocal();

    super.onInit();
  }

  @override
  void dispose() {
    playerController.dispose();

    super.dispose();
  }

  @override
  void onClose() {
    playerController.pause();
    playerController.dispose();
    super.onClose();
  }
}
