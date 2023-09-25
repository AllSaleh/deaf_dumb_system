import 'package:deaf_dumb_system/view/widgts/downloads/viewDownloads.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/AppRequired/Text.dart';

class Downloads extends StatelessWidget {
  const Downloads({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: text(
          title: '32'.tr,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 30,
              )),
          ClipOval(
            child: Image.asset('images/sh.png'),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        children: const [ViewDownloads()],
      ),
    );
  }
}
