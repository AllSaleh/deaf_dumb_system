// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../core/AppRequired/Text.dart';

// class Test extends StatelessWidget {
//   const Test({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       endDrawer: Drawer(),
//       body:Column(children: [ Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//              const   text(
//                   title: 'مقتبسات',
//                   size: 30,
//                   color: Appcolors.white,
//                   weight: FontWeight.bold,
//                 ),
//             const    SizedBox(
//                   width: 50,
//                 ),
//                 Stack(
//                   clipBehavior: Clip.none,
//                   children: [
//                     Container(
//                       height: 70,
//                       width: 90,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Appcolors.white),
//                       child:const Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(Icons.sim_card_outlined),
//                           Icon(Icons.sim_card_outlined)
//                         ],
//                       ),
//                     ),
//                   const  Positioned(
//                         left: 20,
//                         bottom: -15,
//                         child: CircleAvatar(
//                           radius: 5,
//                           backgroundColor: Appcolors.white,
//                         ))
//                   ],
//                 )
//               ],
//             )],),
//     );
//   }
// }
