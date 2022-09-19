import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendor_app/constants/app_bold_text.dart';
import 'package:vendor_app/constants/app_light_text.dart';
import 'package:vendor_app/constants/colors.dart';

class DashboardCard extends StatelessWidget {
  final String count;
  final String text;
  final image;
  const DashboardCard({Key? key,
    required this.count,
    required this.text,
    required this.image
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return
       Container(
        width: width/2,
        height: height/8,
        child: Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: AppColor.shadow.withOpacity(0.25)
            )
          ),
          elevation: 0,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundColor: AppColor.primary.withOpacity(0.8),
                 child: Image.asset("assets/"+image,width:30,color: Colors.white,fit: BoxFit.cover,),
                ),
                SizedBox(width: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppBoldText(text: count,size: 20,),
                    SizedBox(height: 3,),
                    AppLightText(text: text)
                  ],
                )
              ],
            ),
          ),
        ),
      );
  }
}
