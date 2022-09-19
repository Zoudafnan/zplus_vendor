import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendor_app/constants/colors.dart';
import 'package:vendor_app/pages/dashboard_page.dart';
import 'package:vendor_app/pages/empty_menu.dart';
import 'package:vendor_app/pages/my_menu_page_cat.dart';
import 'package:vendor_app/pages/order_page.dart';
import 'package:vendor_app/pages/profile_page.dart';
import 'package:vendor_app/pages/restaurant_detail_page.dart';

import 'enter_restrnt_detail_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  List pages = [
    DashboardPage(),
    orderPage(),
    EmptyMenu(),
    Profile(),
  ];
  int currentIndex = 0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          backgroundColor: Colors.white,
          onTap: onTap,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColor.primary,
          unselectedItemColor: Colors.grey.withOpacity(0.8),
          selectedFontSize: 12,
          unselectedFontSize: 10,
        items: [
          BottomNavigationBarItem(label: "Home",icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "Orders",icon: Icon(Icons.border_all_outlined)),
          BottomNavigationBarItem(label: "Menu",icon: Icon(Icons.house_siding_sharp)),
          BottomNavigationBarItem(label: "Profile",icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
