import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendor_app/constants/colors.dart';

class AppLightText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  final int? maxLines;
  final TextOverflow? overflow;
  AppLightText({Key? key,
    this.size=13,
    required this.text,
    this.color=Colors.black,
    this.maxLines,
    this.overflow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
        fontSize: size,
        color: AppColor.textLight,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
