import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendor_app/constants/app_bold_text.dart';
import 'package:vendor_app/constants/app_light_text.dart';
import 'package:vendor_app/constants/app_semibold_text.dart';
import 'package:vendor_app/constants/colors.dart';
import 'package:vendor_app/widgets/category_item.dart';

class MyMenuCat extends StatefulWidget {
  const MyMenuCat({Key? key}) : super(key: key);

  @override
  _MyMenuState createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenuCat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appbar,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: AppColor.primary
        ),
        backgroundColor: AppColor.appbar,
        elevation: 4,
        shadowColor: AppColor.shadow.withOpacity(0.6),
        title: AppBoldText(text: "My Menu",),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppLightText(text: " 4 Categories, 20 items", color: Colors.black,size: 14,),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 4,
                separatorBuilder: (BuildContext context, int index) => const Divider(color: AppColor.appbar,height: 12,),
                itemBuilder: (BuildContext context, int index) {
                  return const CategoryItem();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
