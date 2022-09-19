import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendor_app/constants/app_bold_text.dart';
import 'package:vendor_app/constants/colors.dart';
import 'package:vendor_app/widgets/category_item.dart';
import 'package:vendor_app/widgets/product_items.dart';

class AddItemProd extends StatefulWidget {
  const AddItemProd({Key? key}) : super(key: key);

  @override
  _AddItemProdState createState() => _AddItemProdState();
}

class _AddItemProdState extends State<AddItemProd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appbar,
      appBar: AppBar(
        backgroundColor: AppColor.appbar,
        leading: GestureDetector(
          onTap: (){
            Navigator.of(context).pop();
          },
            child: Icon(Icons.arrow_back,color: AppColor.primary,)),
        title: AppBoldText(text: "Starters",),
        elevation: 4,
        shadowColor: AppColor.shadow.withOpacity(0.6),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: ListView.separated(
          itemCount: 15,
      separatorBuilder: (BuildContext context, int index) => Divider(color: AppColor.divider,height: 12,thickness: 0.8,),
    itemBuilder: (context, index){
    return ProductItem();
    },
        ),
      ),
    );
  }
}
