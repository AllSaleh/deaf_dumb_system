import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/AppRequired/Text.dart';
class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: TexT(title: '1'.tr,),),
    );
  }
}