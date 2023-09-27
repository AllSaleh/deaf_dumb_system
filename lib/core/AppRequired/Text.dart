import 'package:flutter/material.dart';

class text extends StatelessWidget {
  final TextDecoration? line;
  final double? hight;
  final TextAlign? align;
  final double? size;
  final FontWeight? weight;
  final String title;
  final Color? color;
  const text( 
      {super.key,
      this.size,
      required this.title,
      this.color,
      this.weight,
      this.align,
      this.hight,
      this.line});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
      
        decoration: line,
        // decorationStyle: TextDecorationStyle.solid,
        fontSize: size,
        color: color,
        fontWeight: weight,
        height: hight,
        //fontFamily: ''
      ),
      textAlign: align,
      textDirection: TextDirection.rtl,
    );
  }
}
