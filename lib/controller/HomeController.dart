import 'package:deaf_dumb_system/api/handlingrequest.dart';
import 'package:deaf_dumb_system/api/statusrequest.dart';
import 'package:deaf_dumb_system/model/dataremote/homedataremote.dart';
import 'package:deaf_dumb_system/model/models/showcatecsmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:deaf_dumb_system/view/screens/Downloads.dart';
import 'package:deaf_dumb_system/view/screens/Education.dart';
import 'package:deaf_dumb_system/view/screens/Library.dart';
import 'package:deaf_dumb_system/view/screens/homepage.dart';
import 'package:video_player/video_player.dart';

class HomeController extends GetxController {
  late TextEditingController searchcontroller;
  // late VideoPlayerController playerController;
  late VideoPlayerController? videoPlayerController;
  StatusRequst statusRequst = StatusRequst.none;
  HomeData homeData = HomeData(Get.find());
  String arFirst = '';
  String enFirst = '';

  // late StatusRequst statusRequst;
  List categorise = [];
  List showcatss = [];

  getcategorise() async {
    statusRequst = StatusRequst.Loading;

    var response = await homeData.getdata();

    statusRequst = hndlinData(response);
    if (StatusRequst.Sucsess == statusRequst) {
      categorise = response;
      arFirst = response[0]['catogry'];
      enFirst = response[0]['categoryEn'];
      showcategorises();
    } else {
      statusRequst = StatusRequst.Filure;
    }
    update();
  }

  viewvideo() {
    videoPlayerController =
        VideoPlayerController.asset('images/FlutterThemes.mp4')
          ..initialize().then((_) {
            update();
          });
  }

  //  String cats=translatadata(arFirst, dataEn)
  // String cate = myservrss.sharedPreferences.getString('lang')=='ar'?arFirst=cate:myservrss.sharedPreferences.getString('lang')=='en'?;
  String cat = '';
   StatusRequst statusRequst2 =StatusRequst.none;
  showcategorises() async {
    showcatss.clear();
    statusRequst2 = StatusRequst.Loading;
    update();

    var response = await homeData.showcategorisess(arFirst);

    statusRequst2 = hndlinData(response);
    if (StatusRequst.Sucsess == statusRequst2) {
      showcatss = response;
    } else {
      statusRequst2 = StatusRequst.Filure;
    }
    update();
  }

  bool isSearch = false;
  bool? gg;

  onsearch() {
    isSearch = true;
    update();
  }

  closeSearch() {
    isSearch = false;
    update();
  }

  goToView(ShowcategModel showcategModel) {
    Get.toNamed('/view', arguments: {'showcategModel': showcategModel});
  }

  List<String> titls = ['29'.tr, '1'.tr, '2'.tr, '3'.tr];
  List<IconData> icons = [
    Icons.cast_for_education_outlined,
    Icons.cast_for_education_outlined,
    Icons.download_sharp,
    Icons.video_library_outlined
  ];
  List pages = [
    const HomePage(),
    const Education(),
    const Downloads(),
    const Library()
  ];

  int curntpage = 0;

  changepage(int index) {
    curntpage = index;
    update();
  }

  @override
  void onInit() {
    searchcontroller = TextEditingController();
    // viewvideo() {
    //   videoPlayerController =
    //       VideoPlayerController.asset('images/FlutterThemes.mp4')
    //         ..initialize().then((_) {
    //           update();
    //         });
    //   if (videoPlayerController != null)
    getcategorise();

    super.onInit();
  }

  //search
  bool isSearchs = false;
  late StatusRequst searchstasrequst;
  List searchData = [];
  onchange(String val) {
    if (val == '') {
      isSearchs = false;
    } else {
      isSearchs = true;

      getsearchdata() async {
        searchstasrequst = StatusRequst.Loading;
        var response = await homeData.searchdata(val);
        searchstasrequst = hndlinData(response);
        if (StatusRequst.Sucsess == searchstasrequst) {
          searchData = response;
        }
      }
    }
    update();
  }
}
