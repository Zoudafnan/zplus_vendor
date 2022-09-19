import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendor_app/constants/app_bold_text.dart';
import 'package:vendor_app/constants/app_light_text.dart';
import 'package:vendor_app/constants/app_regular_text.dart';
import 'package:vendor_app/constants/app_semibold_text.dart';
import 'package:vendor_app/constants/colors.dart';
import 'package:vendor_app/widgets/cart_item.dart';
import 'package:vendor_app/widgets/custom_button.dart';


class OrderDetailPage extends StatefulWidget {
  const OrderDetailPage({Key? key}) : super(key: key);

  @override
  _OrderDetailPageState createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.appbar,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
            child: const Icon(Icons.arrow_back,color: AppColor.primary,)),
        title: AppBoldText(text: "Order Details",),
        backgroundColor: AppColor.appbar,
        elevation: 4,
        shadowColor: AppColor.shadow.withOpacity(0.5),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.only(top: 15,left: 10,right: 10,bottom: 6),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppRegularText(text: "Order ID - #55327", color: AppColor.textLight,),
                  AppLightText(text: "today, 3:35pm", color: AppColor.textLight)
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(10.0),
            sliver: SliverList(delegate: SliverChildListDelegate([
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppBoldText(text: "Fayaz Ahmed"),
                  AppRegularText(text: "COD", color: AppColor.primary,size: 12,)
                ],
              ),
              const SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.location_on_outlined,size: 18,color: AppColor.textLight,),
                  SizedBox(width: 2,),
                  AppLightText(text: "Holla Compound VB Road MAlpe Udupi"),
                ],
              ),
              const SizedBox(height: 2,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: AppLightText(text: "Bantwal, Karnataka"),
              ),
              const SizedBox(height: 2,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: AppLightText(text: "Phone - 8372625373 "),
              )
            ]),)
          ),
          const SliverPadding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              sliver: CartItems(),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(10.0),
            sliver: SliverToBoxAdapter(child: AppSemiBoldText(text: "Pricing Details", color: Colors.black)),
          ),
          SliverToBoxAdapter(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppRegularText(text: "Sub Total", color: Colors.black),
                        AppRegularText(text: "₹200.00", color: Colors.black)
                      ],
                    ),
                    const SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppRegularText(text: "Delivery Fee", color: Colors.black),
                        AppRegularText(text: "₹20.00", color: Colors.black)
                      ],
                    ),
                    const SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppRegularText(text: "Gst", color: Colors.black),
                        AppRegularText(text: "₹20.00", color: Colors.black)
                      ],
                    ),
                  ],
                ),
              ),
              width: width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      top: BorderSide(color: AppColor.divider),
                      bottom: BorderSide(color: AppColor.divider)
                  )
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
         child: Padding(
           padding: const EdgeInsets.all(10.0),
           child: Column(
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   AppRegularText(text: "Total", color: Colors.black),
                   AppBoldText(text: "₹2345.00", color: Colors.black)
                 ],
               ),
               SizedBox(height: 20,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   CustomButton(inputText: "Accept", height: 40, width: width/2.3, onPressed: (){},),
                   CustomButton(inputText: "Reject", height: 40, width: width/2.3, onPressed: (){},),
                 ],
               )
             ],
           ),
         ),
        width: width,
        height: 125,
        decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
                top: BorderSide(color: AppColor.divider),
            )
        ),
      ),
      );
  }
}
