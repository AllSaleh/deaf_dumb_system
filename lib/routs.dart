import 'package:deaf_dumb_system/view/screens/homepage.dart';
import 'package:deaf_dumb_system/view/screens/settings.dart';
import 'package:deaf_dumb_system/view/screens/view.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>> pages = [
  GetPage(name: '/', page: (()=>const HomePage())),

  GetPage(name: '/settings', page: (()=>const Settings())),
  GetPage(name: '/view', page: (()=>const Views()))



];
