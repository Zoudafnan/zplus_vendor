import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendor_app/constants/app_bold_text.dart';
import 'package:vendor_app/constants/app_light_text.dart';
import 'package:vendor_app/constants/app_semibold_text.dart';

class ResText extends StatelessWidget {
  final String text1;
  final String text2;
  const ResText({Key? key,
    required this.text1,
    required this.text2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppLightText(text: text1,size: 12,),
        SizedBox(height: 4,),
        AppSemiBoldText(text: text2, color: Colors.black,)
      ],
    );
  }
}
