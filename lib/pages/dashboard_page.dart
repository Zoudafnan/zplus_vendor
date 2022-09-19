import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendor_app/constants/app_bold_text.dart';
import 'package:vendor_app/constants/app_light_text.dart';
import 'package:vendor_app/constants/app_semibold_text.dart';
import 'package:vendor_app/constants/colors.dart';
import 'package:vendor_app/widgets/dashboard_card.dart';
import 'package:vendor_app/widgets/line_chart.dart';

import '../widgets/chart_demo.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  bool state = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.appbar,
        elevation: 4,
        shadowColor: AppColor.shadow.withOpacity(0.6),
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Row(
            children: [
              CircleAvatar(
                  backgroundImage: AssetImage("assets/logo.png"),
                radius: 18,
              ),
            ],
          ),
        ),
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
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBoldText(text: "Shisha food hub"),
            AppLightText(text: "Address of the retautant",maxLines: 1,overflow: TextOverflow.ellipsis,)
          ],
        ),
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8,top: 15,right: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSemiBoldText(text: "Overview", color: Colors.black,size: 15,),
              SizedBox(height: 8,),
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                childAspectRatio: 3.8/2.2,
                children: [
                  DashboardCard(text: 'Menu items', count: '52', image: "menu1.png",),
                  DashboardCard(text: 'All orders', count: '52', image: "note.png",),
                  DashboardCard(text: 'Delivered', count: '52', image: "delivered.png",),
                  DashboardCard(text: 'Canceled', count: '52', image: "cancelorder.png",),
                ],
              ),
              SizedBox(height: 5,),
              Charts(),
            ],
          ),
        ),
      ),
    );
  }
}
