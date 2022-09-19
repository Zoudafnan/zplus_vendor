import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendor_app/constants/app_bold_text.dart';
import 'package:vendor_app/constants/app_light_text.dart';

import '../constants/app_semibold_text.dart';

class ProfileList extends StatelessWidget {
  final String title;
  final String subTitle;
  final image;
  final Function()? onTap;
  const ProfileList({Key? key,
    required this.title,
    required this.subTitle,
    required this.image,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            onTap: onTap,
            leading: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                height: 28,
                child: Image.asset("assets/"+image,color: Colors.black,),
              ),
            ),
            title: AppSemiBoldText(text: title, color: Colors.black,),
            subtitle: AppLightText(text: subTitle,),
            trailing: Icon(Icons.arrow_forward_ios,size: 15,),
          ),
          Divider(thickness: 1,height: 2,)
        ],
      ),
    );
  }
}
