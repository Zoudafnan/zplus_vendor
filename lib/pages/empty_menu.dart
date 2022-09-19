import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendor_app/constants/app_bold_text.dart';
import 'package:vendor_app/constants/app_light_text.dart';
import 'package:vendor_app/pages/add_items_categories_page.dart';
import 'package:vendor_app/widgets/custom_button.dart';

class EmptyMenu extends StatefulWidget {
  const EmptyMenu({Key? key}) : super(key: key);

  @override
  _EmptyMenuState createState() => _EmptyMenuState();
}

class _EmptyMenuState extends State<EmptyMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 150),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  child: Image.asset("assets/menuimg.png"),
                width: MediaQuery.of(context).size.width,
                height: 300,
          ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: CustomButton(inputText: "Add Items  +", height:35, width: 150, onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AddItemCat()));
    },),
                )
              ],
            ),
            Positioned(
              top: 210,
                left: 130,
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppBoldText(text: "Empty Menu"),
                    SizedBox(height: 10,),
                    AppLightText(text: "Looks like you haven't made"),
                    SizedBox(height: 2,),
                    AppLightText(text: "Your choice yet..")
                  ],
                )
            ),
         ]
        ),
      ),
    );
  }
}
