import 'package:flutter/material.dart';

import '../../../core/AppRequired/Text.dart';

class ListBuilderPlayList extends StatelessWidget {
  const ListBuilderPlayList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        width: 10,
      ),
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: MediaQuery.of(context).size.width / 4,
          width: MediaQuery.of(context).size.width / 3,
          decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffCECECE)),
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xffCECECE).withOpacity(.3)),
          child: const Center(
              child: text(
            title: 'اشكال و الوان',
            color: Colors.black,
            size: 18,
          )),
        );
      },
    );
  }
}
