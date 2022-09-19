import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendor_app/constants/app_semibold_text.dart';
import 'package:vendor_app/constants/colors.dart';

class FormInput extends StatelessWidget {
  final Text text;
  final String hintText;

  const FormInput({Key? key,
    required this.text,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text,
        SizedBox(height: 10,),
        TextFormField(
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(5),
              ),
              hintText: hintText,
              hintStyle: TextStyle(
                  color: AppColor.textLight,
                  fontSize: 15
              ),
              filled: true,
              fillColor: Colors.white
          ),
          validator: (value){
            if(value == null || value.isEmpty){
              return "Invalid input";
            }
          },
        )
      ],
    );
  }
}


