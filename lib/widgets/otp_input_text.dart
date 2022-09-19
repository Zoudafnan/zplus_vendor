import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vendor_app/constants/colors.dart';

class OtpText extends StatelessWidget {
  const OtpText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
       SizedBox(
        height: 68,
        width: 50,
        child: TextField(
          onChanged: (value){
            if(value.length ==1){
              FocusScope.of(context).nextFocus();
            }
          },
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
            keyboardType:TextInputType.number,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black)
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.shadow)
            )
          ),
        ),
      );
  }
}
