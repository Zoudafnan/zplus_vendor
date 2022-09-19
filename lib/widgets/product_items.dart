


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendor_app/constants/app_bold_text.dart';
import 'package:vendor_app/constants/app_light_text.dart';
import 'package:vendor_app/constants/app_regular_text.dart';
import 'package:vendor_app/constants/app_semibold_text.dart';
import 'package:vendor_app/constants/colors.dart';
import 'package:vendor_app/widgets/custom_button.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool state = true;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return ListTile(
      onTap: () {
        showDialog(context: context, builder: (context) {
          return Column(
            children: [
              AlertDialog(
                title: AppSemiBoldText(
                  text: "Please enter the price", color: AppColor.primary,),
                content: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        autofocus: true,
                        decoration: InputDecoration(
                            hintText: "₹ Full",
                        ),
                           validator: (value) {
                             if(value!.isEmpty || !RegExp(r'^[0-9]+$').hasMatch(value)){
                             return "Invalid entry";
                               }
                             else {
                               return null;
                             }

                           }
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "₹ Half"
                        ),
                        validator: (value) {
                         if(value!.isEmpty || !RegExp(r'^[0-9]+$').hasMatch(value)){
                         return "Invalid entry";
                          }
                         else {
                           return null;
                         }
                        },
                      ),
                    ],
                  ),
                ),
                actions: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Switch(
                          activeColor: Colors.white,
                          activeTrackColor: Colors.green,
                          value: state,
                          onChanged: (bool s){
                            setState(() {
                              state = s;
                              print(state);
                            });
                          }
                      ),
                      TextButton(
                      child: AppBoldText( text: 'Done',color: AppColor.primary,),
                          onPressed: (){
                            if (_formKey.currentState!.validate()){
                              Navigator.of(context).pop();
                            }
                            }
                            )
                       ],
                      )
                ],
              )
            ],
          );
        });
      },
      leading: Image.network(
        "https://images.unsplash.com/photo-1532465909-4e0278962a2b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8c3RhcnRlcnN8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
        width: 80,
        height: 50,
      ),
      title: AppSemiBoldText(text: 'Momos',
        color: Colors.black,
        maxLines: 1,
        textOverflow: TextOverflow.ellipsis,),
      subtitle: AppLightText(
        text: "The description of food but whn it exceeds it will",
        overflow: TextOverflow.ellipsis,
        maxLines: 1,),
      trailing: Icon(Icons.arrow_forward_ios, size: 20, color: Colors.green,),
    );
  }
}
