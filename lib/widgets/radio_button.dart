import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendor_app/constants/app_light_text.dart';
import 'package:vendor_app/constants/app_semibold_text.dart';
import 'package:vendor_app/constants/colors.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({Key? key}) : super(key: key);

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return
       Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           AppSemiBoldText(text: "TYPE", color: Colors.black),
           SizedBox(height: 10,),
           Card(
             elevation: 0,
             child: Row(
              children: [
                Radio(
                    value: 1,
                    groupValue: _value,
                    onChanged: (value){
                      setState(() {
                        _value = 1;
                      });
                    print("radio tile pressed $value");
                    },
                    activeColor: AppColor.primary,
                ),
                AppLightText(text: "Veg",size: 15,),
                Radio(
                  value: 2,
                  groupValue: _value,
                  onChanged: (value){
                    setState(() {
                      _value = 2;
                    });
                    print("radio tile pressed $value");
                  },
                  activeColor: AppColor.primary,
                ),
                AppLightText(text: "Non-Veg",size: 15,),
                Radio(
                  value: 3,
                  groupValue: _value,
                  onChanged: (value){
                    setState(() {
                      _value = 3;
                    });
                    print("radio tile pressed $value");
                  },
                  activeColor: AppColor.primary,
                ),
                AppLightText(text: "Both",size: 15,),
              ],
      ),
           ),
         ],
       );
  }
}
