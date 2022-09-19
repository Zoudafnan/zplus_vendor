import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendor_app/constants/app_regular_text.dart';
import 'package:vendor_app/constants/app_semibold_text.dart';
import 'package:vendor_app/constants/colors.dart';
import 'package:vendor_app/pages/add_items_products_page.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => AddItemProd()));
      },
      child: Container(
        height: 66,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: AppColor.shadow.withOpacity(0.3))
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 3),
          child: ListTile(
           leading: ClipRRect(
           borderRadius: BorderRadius.circular(5),
             child: Image.network("https://images.unsplash.com/photo-1579712267685-42da80f60aa4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHN0YXJ0ZXJzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
               width: 70,
               height: 50,),
           ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppSemiBoldText(text: "Starters",color: Colors.black,),
                const SizedBox(width: 10,),
                const Icon(Icons.arrow_forward_ios,size: 16,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
