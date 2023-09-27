import 'package:deaf_dumb_system/controller/viewcontroller.dart';
import 'package:deaf_dumb_system/core/apprequired/text.dart';
import 'package:deaf_dumb_system/view/screens/view.dart';
import 'package:deaf_dumb_system/view/widgts/view/customviewwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miniplayer/miniplayer.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  final MiniplayerController controller = MiniplayerController();
  @override
  Widget build(BuildContext context) {
    Get.put(ViewController());
    return Scaffold(
      body: Stack(
        children: [
          // InkWell(
          //   onTap: () {},

          // ),
          Miniplayer(
            controller: controller,
            backgroundColor: Colors.red,
            minHeight: 70,
            maxHeight: MediaQuery.of(context).size.height,
            builder: (height, percentage) {
              if (percentage == 0.0)
                return Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      text(title: ' $percentage'),
                      Image.asset('images/ss.PNG'),
                      text(title: 'التصنيف:اتجاهات و   '),
                      IconButton(
                          onPressed: () {
                            print(height);
                            controller.animateToHeight(
                                state: PanelState.DISMISS);
                          },
                          icon: Icon(Icons.play_arrow)),
                      IconButton(
                          onPressed: () {
                            print(percentage);
                          },
                          icon: Icon(Icons.close)),
                    ],
                  ),
                );
              return CustomViewWidget();
              //  Container(
              //   height: 500,
              //   width: 200,
              //   color: Colors.white,
              // );
            },
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.play_arrow))
        ],
      ),
    );
  }
}
