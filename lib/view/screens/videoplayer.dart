import 'package:deaf_dumb_system/controller/viewcontroller.dart';
import 'package:deaf_dumb_system/servess.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../../core/AppRequired/Text.dart';

class CustomVideoPlayer extends StatelessWidget {
  final VideoPlayerController videoPlayerController;
  const CustomVideoPlayer({super.key, required this.videoPlayerController});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    Myservrss myservrss = Get.find();
    Get.put(ViewController());
    return GetBuilder<ViewController>(
      builder: (controller) => controller.playerController.value.isInitialized
          ? Stack(
              children: [
                AspectRatio(
                  aspectRatio: controller.playerController.value.aspectRatio,
                  child: VideoPlayer(videoPlayerController),
                ),
                Positioned(
                    child: Positioned(
                  left: myservrss.sharedPreferences.getString('lang') == 'en'
                      ? height / 60
                      : null,
                  right: myservrss.sharedPreferences.getString('lang') == 'ar'
                      ? height / 60
                      : null,
                  bottom: height / 40,
                  child: Container(
                    height: height / 30,
                    // width: height / 15,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black45.withOpacity(.5)),
                    child: const Center(
                        child: text(
                      title: '9:20',
                      color: Colors.white,
                      weight: FontWeight.bold,
                      size: 18,
                    )),
                  ),
                ))
              ],
            )
          : Container(),
    );
  }
}
