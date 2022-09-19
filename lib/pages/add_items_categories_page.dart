import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendor_app/constants/app_bold_text.dart';
import 'package:vendor_app/constants/app_regular_text.dart';
import 'package:vendor_app/constants/app_semibold_text.dart';
import 'package:vendor_app/constants/colors.dart';
import 'package:vendor_app/pages/my_menu_page_cat.dart';
import 'package:vendor_app/widgets/category_item.dart';

class AddItemCat extends StatefulWidget {
  const AddItemCat({Key? key}) : super(key: key);

  @override
  _AddItemCatState createState() => _AddItemCatState();
}

class _AddItemCatState extends State<AddItemCat> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.appbar,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: AppColor.primary
        ),
        title: AppBoldText(text: "Add Item",),
        backgroundColor: AppColor.appbar,
        elevation: 4,
        shadowColor: AppColor.shadow.withOpacity(0.6),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSemiBoldText(text: "Categories", color: Colors.black),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 10,
                  separatorBuilder: (BuildContext context, int index) => const Divider(color: AppColor.appbar,height: 12,),
                itemBuilder: (BuildContext context, int index) {
                return const CategoryItem();
              },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: width/1.06,
        height: 45,
        child: FloatingActionButton.extended(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)
          ),
          backgroundColor: AppColor.primary,
          label: Row(
            children: [
              AppBoldText(text: "Create a menu",color: Colors.white,),
              SizedBox(width: 5,),
              Container(
               child: Center(child: AppBoldText(text: "5",color: AppColor.primary,size: 15,)),
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50)
                ),
              )
            ],
          ),
          onPressed: (){
            final snackBar = SnackBar(
              duration: Duration(seconds: 30),
                content: Text("5 items added to menu"),
              action: SnackBarAction(
                label: 'View menu',
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyMenuCat()));
                },
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
