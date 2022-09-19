import 'package:flutter/material.dart';
import 'package:vendor_app/pages/add_items_categories_page.dart';
import 'package:vendor_app/pages/add_items_products_page.dart';
import 'package:vendor_app/pages/dashboard_page.dart';
import 'package:vendor_app/pages/empty_menu.dart';
import 'package:vendor_app/pages/enter_restrnt_detail_page.dart';
import 'package:vendor_app/pages/otp_verification_enter.dart';

import 'package:vendor_app/pages/navigation_page.dart';
import 'package:vendor_app/pages/order_detail_page.dart';
import 'package:vendor_app/pages/order_page.dart';
import 'package:vendor_app/pages/otp_verification_page.dart';
import 'package:vendor_app/pages/profile_page.dart';
import 'package:vendor_app/pages/restaurant_detail_page.dart';
import 'package:vendor_app/widgets/category_item.dart';
import 'package:vendor_app/widgets/dashboard_card.dart';
import 'package:vendor_app/widgets/line_chart.dart';
import 'package:vendor_app/widgets/order_list_detail_new.dart';
import 'package:vendor_app/widgets/otp_input_text.dart';
import 'package:vendor_app/widgets/product_items.dart';
import 'package:vendor_app/widgets/profile_list.dart';
import 'package:vendor_app/widgets/radio_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationPage(),
    );
  }
}
