import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBoldText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
   AppBoldText({Key? key,
    this.size=16,
    required this.text,
     this.color=Colors.black}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
