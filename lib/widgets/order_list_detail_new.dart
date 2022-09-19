import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendor_app/constants/app_bold_text.dart';
import 'package:vendor_app/constants/app_light_text.dart';
import 'package:vendor_app/constants/app_regular_text.dart';
import 'package:vendor_app/constants/colors.dart';
import 'package:vendor_app/pages/order_detail_page.dart';

class OrderListNew extends StatelessWidget {
  const OrderListNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index){
        return GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => OrderDetailPage()));
          },
          child: Card(
            elevation: 0,
            child: Container(
              height: 120,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.notification_important_outlined,
                              color: AppColor.primary,
                              size: 18,
                            ),
                          SizedBox(width: 5,),
                          AppRegularText(text: "New",color: AppColor.primary,)
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            AppRegularText(text: "₹700.00", color: Colors.green),
                            AppRegularText(text: "COD", color: Colors.green,size: 10,)
                          ],
                        )
                      ],
                    ),
                    AppBoldText(text: "Order ID - #73676"),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(Icons.access_time,size: 18,color: AppColor.textLight,),
                        SizedBox(width: 5,),
                        AppLightText(text: "Today 3:35pm"),
                        SizedBox(width: 5,),
                        AppBoldText(text: "•",color: AppColor.textLight,),
                        SizedBox(width: 5,),
                        AppLightText(text: "3 items"),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined,size: 18,color: AppColor.textLight,),
                        SizedBox(width: 5,),
                        AppLightText(text: "Holla Compound Vadabandeshwara Road Malpe ")
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
  },
      ),
    );
  }
}
