import 'package:flutter/material.dart';

class Customcontiner extends StatelessWidget {
  final double hight;
  final double width;
  final Function() ontap;
  final IconData icon;
  final double? size;

  const Customcontiner(
      {super.key,
      required this.hight,
      required this.width,
      required this.ontap,
      required this.icon,
      this.size});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: hight,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(160), color: Colors.black54),
        child: Icon(
          icon,
          size: size,
          color: Colors.white,
        ),
      ),
    );
  }
}
