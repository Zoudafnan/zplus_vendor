import 'package:flutter/material.dart';
import 'package:vendor_app/constants/app_bold_text.dart';
import 'package:vendor_app/constants/app_light_text.dart';
import 'package:vendor_app/constants/colors.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:vendor_app/pages/my_menu_page_cat.dart';
import 'package:vendor_app/pages/profile_page.dart';
import 'package:vendor_app/pages/restaurant_detail_page.dart';
import 'package:vendor_app/widgets/order_list_comp.dart';
import 'package:vendor_app/widgets/order_list_detail_new.dart';
import 'package:vendor_app/widgets/order_list_detail_proce.dart';
import 'package:vendor_app/widgets/order_list_reject.dart';

class orderPage extends StatefulWidget {
  const orderPage({Key? key}) : super(key: key);

  @override
  _orderPageState createState() => _orderPageState();
}

class _orderPageState extends State<orderPage> {
  bool state = true;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: AppColor.appbar,
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBoldText(text: 'Shisha Food Hub',),
              AppLightText(text: 'Restaurant address hsgx hxbs')
            ],
          ),
          titleSpacing: 0,
          shadowColor: AppColor.shadow.withOpacity(0.30),
          elevation: 4,
          backgroundColor: AppColor.appbar,
          actions: [
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
                )
          ],
          leading:  Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/logo.png'),
                  radius: 18,
                ),
              ],
            ),
          ),
          bottom:  TabBar(tabs: const [
            Tab(text: "All Orders",),
            Tab(text: "Processing",),
            Tab(text: "Completed",),
            Tab(text: "Rejected",)
          ],
           indicatorColor: AppColor.primary,
            indicator: DotIndicator(
              color: AppColor.primary,
              distanceFromCenter: 16,
              radius: 3,
              paintingStyle: PaintingStyle.fill,
            ),
            labelColor: Colors.black,
            unselectedLabelColor: AppColor.textLight,
            labelStyle: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            OrderListNew(),
            OrderListProcess(),
            OrderListCompleted(),
            OrderListRejected(),
          ],
        ),
      ),
    );
  }
}
