import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendor_app/constants/app_regular_text.dart';
import 'package:vendor_app/constants/colors.dart';

import '../constants/app_bold_text.dart';
import '../constants/app_light_text.dart';
import '../widgets/custom_button.dart';

class OtpVerify extends StatelessWidget {
  const OtpVerify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
          children:[
            Container(
              height: height/1.85,
              color: AppColor.primary,
            ),
            Positioned(
              left: 90,
                top: 50,
                child: Image.asset("assets/food1.png",height: 200,)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppBoldText(text: "Add Your Phone Number",size: 20,color: Colors.white,),
                SizedBox(height: 20,),
                Container(
                  child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: AppRegularText(text: "Please enter your phone number inorder to receive the OTP", color: Colors.black,maxLines: 2,textAlign: TextAlign.center,),
                      ),
                      SizedBox(height: 20,),
                      const Padding(
                        padding: EdgeInsets.only(left: 10,right: 10),
                        child: TextField(
                          style: TextStyle(height: 1),
                          decoration: InputDecoration(
                            prefix: Text("+91| "),
                            contentPadding: EdgeInsets.symmetric(vertical: 10),
                            hintText: "Enter phone number",
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColor.primary)
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)
                            )
                          ),
                        ),
                      ),
                    ],
                  ),
                  width: width/1.06,
                  height: height*0.25,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                      blurRadius: 5,
                        color: Colors.grey
                    )
                    ]
                  ),
                ),
              ],
            ),
            Positioned(
              top: 550,
                child: Column(
                  children: [
                    CustomButton(inputText: "GET OTP", height: 40, width: width/1.08, onPressed: (){}),
                    SizedBox(height: 10,),
                    Text("or"),
                    SizedBox(height: 10,),
                    AppRegularText(text: "Sign in later", color: Colors.grey)
                  ],
                ))
          ]
      ),
    );
  }
}
