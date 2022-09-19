import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendor_app/constants/colors.dart';

import '../constants/app_light_text.dart';
import '../constants/app_semibold_text.dart';

class ProfileList1 extends StatelessWidget {
  final String title;
  const ProfileList1({Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 55),
      child: ListTile(
        title: AppSemiBoldText(text: title, color: AppColor.textLight,),
      ),
    );
  }
}
