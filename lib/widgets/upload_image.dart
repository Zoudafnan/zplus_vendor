import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendor_app/constants/app_light_text.dart';
import 'package:vendor_app/constants/app_semibold_text.dart';
import 'package:vendor_app/constants/colors.dart';

class UploadImage extends StatefulWidget {
  const UploadImage({Key? key}) : super(key: key);

  @override
  _UploadImageState createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppSemiBoldText(text: "RESTAURANT IMAGE", color: Colors.black),
        SizedBox(height: 10,),
        Stack(
          children: [
            GestureDetector(
              onTap: (){
                print("hello");
              },
              child: Container(
                width: width,
                height: 80,
                color: Colors.white,),
            ),
            Positioned(
              left: 110,
              top: 30,
              child: Row(
                children: [
                  Icon(Icons.cloud_upload_outlined,color: AppColor.textLight,),
                  SizedBox(width: 10,),
                  AppLightText(text: "Choose your file")
                ],
              ),
            )
          ],

        ),
      ],
    );
  }
}
