import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendor_app/constants/app_bold_text.dart';
import 'package:vendor_app/constants/app_light_text.dart';
import 'package:vendor_app/constants/colors.dart';
import 'package:vendor_app/widgets/custom_button.dart';
import 'package:vendor_app/widgets/otp_input_text.dart';

import '../constants/app_regular_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                AppBoldText(text: "Enter The Verification Code",size: 20,color: Colors.white,),
                SizedBox(height: 20,),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: AppRegularText(text: "Please enter the OTP received on your phone number", color: Colors.black,maxLines: 2,textAlign: TextAlign.center,),
                      ),
                      SizedBox(height: 20,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         OtpText(),
                         OtpText(),
                         OtpText(),
                         OtpText(),
                         OtpText(),
                         OtpText(),
                       ],
                     )
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
                    CustomButton(inputText: "CONTINUE", height: 40, width: width/1.08, onPressed: (){}),
                    SizedBox(height: 20,),
                    RichText(text: TextSpan(
                      style: TextStyle(color: Colors.grey),
                      children: [
                        TextSpan(text: "Didn't receive anything? "),
                        TextSpan(text: "Resend",style: TextStyle(color: AppColor.primary,fontWeight: FontWeight.w500))
                      ]
                    ))
                  ],
                ))
          ]
      ),
    );
  }
}
