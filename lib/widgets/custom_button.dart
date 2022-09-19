import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendor_app/constants/colors.dart';

import '../pages/add_items_categories_page.dart';

class CustomButton extends StatelessWidget {
  final String inputText;
  final double height;
  final double width;
  final Function() onPressed;
  const CustomButton({Key? key,
    required this.inputText,
    required this.height,
    required this.width,
    required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: AppColor.primary,
        borderRadius: BorderRadius.circular(5)
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          inputText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          )
        ),
      ),
    );
  }
}
