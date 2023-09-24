import 'package:deaf_dumb_system/core/AppRequired/Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          text(title: 'title')
          // SvgPicture.asset(
          //   'images/logo1.svg',
          //   semanticsLabel: 'sda',
          // )
        ],
      ),
    );
  }
}
