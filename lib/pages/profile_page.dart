import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendor_app/constants/app_bold_text.dart';
import 'package:vendor_app/constants/colors.dart';
import 'package:vendor_app/pages/add_items_categories_page.dart';
import 'package:vendor_app/pages/restaurant_detail_page.dart';
import 'package:vendor_app/widgets/profile_list.dart';
import 'package:vendor_app/widgets/profile_list_1.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.appbar,
      appBar: AppBar(
        title: AppBoldText(text: "Profile",),
        backgroundColor: AppColor.appbar,
        elevation: 0,
        shadowColor: AppColor.shadow.withOpacity(0.5),
      ),
     body: SingleChildScrollView(
       child: Column(
         children: [
           Stack(
             children:[
               Container(
                 height: 250,
                 color: Colors.white,
               ),
               Container(
                 child: Image.network("https://images.unsplash.com/photo-1571168136613-46401b03904e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTMyfHxjYWZlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",fit: BoxFit.cover,),
                 width: width,
                 height: 180,
                 color: Colors.grey,
               ),
               Positioned(
                 top: 140,
                 left: 20,
                 child: Container(
                   decoration: BoxDecoration(
                       border: Border.all(color: Colors.white)
                   ),
                   child: Image.asset("assets/logo.png",fit: BoxFit.cover,),
                   height: 80,
                   width: 90,
                 ),
               ),
               Positioned(
                 top: 195,
                   left: 130,
                   child: AppBoldText(text: "Shisha Food Hub",size: 18,))
           ]
           ),
           SizedBox(height: 18,),
           ProfileList(subTitle: 'Details of your restaurant', title: 'My Restaurant', image: "restaurant logo.png", onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context)=> RestaurantDetail())); },),
           ProfileList(title: 'Add items', subTitle: 'Add items to your menu', image: "additem.png",onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>AddItemCat()));},),
           ProfileList(title: 'Settings', subTitle: 'Manage notifications', image: "setting.png"),
           ProfileList(title: 'About us', subTitle: 'About/Vans Aanda', image: "about.png"),
           ProfileList(title: 'Terms of use', subTitle: 'Terms of use', image: "terms-and-conditions.png"),
           ProfileList(title: 'Privacy policy', subTitle: 'Privacy policy', image: "insurance.png"),
           ProfileList(title: 'Logout', subTitle: 'Logout', image: "log.png"),
      ]
       ),
     ),
    );
  }
}