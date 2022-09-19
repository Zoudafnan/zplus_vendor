import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendor_app/constants/app_bold_text.dart';
import 'package:vendor_app/constants/app_light_text.dart';
import 'package:vendor_app/constants/app_semibold_text.dart';
import 'package:vendor_app/constants/colors.dart';
import 'package:vendor_app/pages/restaurant_detail_page.dart';
import 'package:vendor_app/widgets/custom_button.dart';
import 'package:vendor_app/widgets/form_input.dart';
import 'package:vendor_app/widgets/radio_button.dart';
import 'package:vendor_app/widgets/upload_image.dart';
import 'package:vendor_app/widgets/upload_png_image.dart';

class RestaurantForm extends StatefulWidget {
  const RestaurantForm({Key? key}) : super(key: key);

  @override
  _RestaurantFormState createState() => _RestaurantFormState();
}

class _RestaurantFormState extends State<RestaurantForm> {
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: AppColor.primary
        ),
        title: AppBoldText(text: "My Restaurant",),
        backgroundColor: AppColor.appbar,
        elevation: 4,
        shadowColor: AppColor.shadow.withOpacity(0.5),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            child: Form(
              key: _globalKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FormInput( hintText: "Enter shop name", text: Text("SHOP NAME",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),),
                  SizedBox(height: 10,),
                  FormInput( hintText: "Enter Email", text: Text("EMAIL",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),),
                  SizedBox(height: 10,),
                  FormInput( hintText: "Enter Phone number", text: Text("PHONE",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),),
                  SizedBox(height: 10,),
                  FormInput( hintText: "Enter alternate number", text: Text("ALTERNATE PHONE NUMBER",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),),
                  SizedBox(height: 10,),
                  FormInput( hintText: "Enter Address", text: Text("ADDRESS",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),),
                  SizedBox(height: 10,),
                  FormInput( hintText: "Enter pincode", text: Text("PINCODE",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),),
                  SizedBox(height: 10,),
                  FormInput( hintText: "Enter average waiting time", text: Text("AVERAGE WAITING TIME",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),),
                  SizedBox(height: 10,),
                  FormInput( hintText: "Enter working time", text: Text("WORKING TIME",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),),
                  SizedBox(height: 10,),
                  RadioButton(),
                  SizedBox(height: 10,),
                  UploadImage(),
                  SizedBox(height: 10,),
                  UploadPng(),
                  SizedBox(height: 15,),
                  CustomButton(inputText: "Done", height: 40, width: width/1.02, onPressed: (){
                   final isValid = _globalKey.currentState!.validate();
                   if(isValid){
                     return
                         setState((){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => RestaurantDetail()));
                         }
                         );
                   }
                  })
                ],
              )
            ),
          ),
        ),
      ),
    );
  }
}
