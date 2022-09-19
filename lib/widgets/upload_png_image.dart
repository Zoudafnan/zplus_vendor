import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendor_app/constants/app_light_text.dart';
import 'package:vendor_app/constants/app_semibold_text.dart';
import 'package:vendor_app/constants/colors.dart';

class UploadPng extends StatefulWidget {
  const UploadPng({Key? key}) : super(key: key);

  @override
  _UploadPngState createState() => _UploadPngState();
}

class _UploadPngState extends State<UploadPng> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppSemiBoldText(text: "RESTAURANT LOGO", color: Colors.black),
        SizedBox(height: 10,),
        Stack(
          children: [
            Container(
              width: width,
              height: 80,
              color: Colors.white,),
            Positioned(
              left: 110,
              top: 30,
              child: Row(
                children: [
                  Icon(Icons.cloud_upload_outlined,color: AppColor.textLight,),
                  SizedBox(width: 10,),
                  AppLightText(text: "Choose your file"),
                ],
              ),
            ),
            Positioned(
              left: 145,
                top: 52,
                child: AppLightText(text: "only .png files supported",size: 8,)),
          ],
        ),
      ],
    );
  }
}
