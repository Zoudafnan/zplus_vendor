import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendor_app/constants/app_bold_text.dart';
import 'package:vendor_app/constants/app_light_text.dart';
import 'package:vendor_app/constants/colors.dart';
import 'package:vendor_app/pages/enter_restrnt_detail_page.dart';
import 'package:vendor_app/widgets/restaurant_detail_text.dart';

class RestaurantDetail extends StatefulWidget {
  const RestaurantDetail({Key? key}) : super(key: key);

  @override
  _RestaurantDetailState createState() => _RestaurantDetailState();
}

class _RestaurantDetailState extends State<RestaurantDetail> {
  bool state = true;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.appbar,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            iconTheme: IconThemeData(
              color: AppColor.primary
            ),
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network("https://images.unsplash.com/photo-1571168136613-46401b03904e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTMyfHxjYWZlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",fit: BoxFit.cover,)
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  color: AppColor.appbar,
                  width: width/1.05,
                  height: 18,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 14,left: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppLightText(text: "STATUS",size: 12,),
                            const SizedBox(height: 2,),
                            AppBoldText(text: "Currently Open")
                          ],
                        ),
                      ),
                      Switch(
                          activeColor: Colors.white,
                          activeTrackColor: Colors.green,
                          value: state,
                          onChanged: (bool s){
                            setState(() {
                              state = s;
                            });
                            print('state $s');
                          }
                      ),
                    ],
                  ),
                  height: 60,
                  width: width/1.05,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                const SizedBox(height: 15,),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Image.asset("assets/restaurant logo.png",width: 20,height: 20,),
                                const SizedBox(width: 15,),
                                AppBoldText(text: "Restaurant Details")
                              ],
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) =>RestaurantForm()));
                              },
                                child: const Icon(Icons.edit,size: 18,)),
                          ],
                        ),
                        const Divider(color: AppColor.divider,thickness: 0.5,height: 30,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppLightText(text: "NAME"),
                            const SizedBox(height: 4,),
                            AppBoldText(text: "Shisha Food Hub")
                          ],
                        ),
                        const SizedBox(height: 20,),
                        const ResText(text1: "EMAIL", text2: "example@gmail.com"),
                        const SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(right:40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              ResText(text1: "PHONE", text2: "12345684784"),
                              ResText(text1: "ALTERNATE PHONE", text2: "26152647838")
                            ],
                          ),
                        ),
                        const SizedBox(height: 20,),
                        const ResText(text1: "ADDRESS", text2: "Holla Compound BV Road Malpe Vadabandeshwraa bailakere"),
                        const SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(right:40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              ResText(text1: "AVERAGE WAITING TIME", text2: "15min"),
                              ResText(text1: "WORKING HOURS", text2: "12AM to 10PM"),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20,),
                        const ResText(text1: "TYPE", text2: "Veg & Non-veg"),
                        const SizedBox(height: 20,),
                        const ResText(text1: "DESCRIPTION", text2: "Here goes the description of the restautant ")
                      ],
                    ),
                  ),
                  width: width/1.05,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
