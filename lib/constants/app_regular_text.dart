import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRegularText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  AppRegularText({Key? key,
    this.size=15,
    required this.text,
    required this.color,
    this.maxLines,
    this.overflow,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
