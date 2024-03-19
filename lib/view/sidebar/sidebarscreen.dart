import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grosseryapp/res/comman/global_button.dart';
import 'package:grosseryapp/res/comman/global_text.dart';
import 'package:grosseryapp/res/static/app_colors.dart';

class SideBarScreen extends StatefulWidget {
  const SideBarScreen({super.key});

  @override
  State<SideBarScreen> createState() => _SideBarScreenState();
}

class _SideBarScreenState extends State<SideBarScreen> {
  @override
  List<String> categories = [
    "Home",
    "Shop",
    "Stores",
    "Mega Menu",
    "Pages",
    "Accounts",
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              Image.asset(
                "assets/images/logo.png",
                scale: 2,
              ),
              SizedBox(
                width: 10.w,
              ),
              Image.asset(
                "assets/images/Bigmarket.png",
                scale: 2,
              ),
              SizedBox(
                width: 150.w,
              ),
              Icon(Icons.close)
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              color: Colors
                  .white, // Assuming AppColors.whitecolor is a custom color
              height: 42.h,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Search Items',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Icon(
                  size: 30.sp,
                  Icons.location_on_outlined,
                  color: AppColors.bluecolor,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GlobalText(
                    text: "Delivery in 16 minutes",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  GlobalText(
                    text: "H.No. 2834 Street, 784 Sector, Adyar, Chennai",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
              SizedBox(
                width: 10.w,
              ),
              Icon(
                Icons.expand_more,
                size: 25.sp,
              ),
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: GlobalButton(
              text: "All Deparments",
              onPressed: () {},
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: categories.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GlobalText(
                            text: categories[index],
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Icon(
                            Icons.expand_more,
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
