import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:grosseryapp/res/comman/global_text.dart';
import 'package:grosseryapp/res/static/app_colors.dart';
import 'package:grosseryapp/view/auth/signinscreen.dart';

class OnbodingScreen extends StatefulWidget {
  const OnbodingScreen({super.key});

  @override
  State<OnbodingScreen> createState() => _OnbodingScreenState();
}

class _OnbodingScreenState extends State<OnbodingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 150.h,
          ),
          GlobalText(
            text: "Select from Our",
            fontSize: 20.sp,
            color: AppColors.greencolor,
            fontWeight: FontWeight.w500,
          ),
          GlobalText(
            text: "Best Menu",
            fontSize: 20.sp,
            color: AppColors.greencolor,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(
            height: 14.h,
          ),
          GlobalText(
            text: "Pick your food from our menu",
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
          GlobalText(
            text: "More than 35 items.",
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
          SizedBox(
            height: 14.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 24.w,
                height: 5.h,
                decoration: BoxDecoration(
                  color: AppColors.greencolor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(
                width: 4.w,
              ),
              Container(
                width: 12.w,
                height: 5.h,
                decoration: BoxDecoration(
                  color: AppColors.greencolor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(
                width: 4.w,
              ),
              Container(
                width: 12.w,
                height: 5.h,
                decoration: BoxDecoration(
                  color: AppColors.greencolor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          Container(
            height: 288.h,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/images/Online Groceries-cuate 1.png'))),
          ),
          SizedBox(
            height: 125.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GlobalText(
                  text: "Skip",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(
                  height: 44.h,
                  width: 90.w,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SigninScreen(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.greencolor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    // child: Text(
                    //   'Next',
                    //   style: GoogleFonts.inter(
                    //     color: AppColors.whitecolor,
                    //     fontSize: 14.sp,
                    //     fontWeight: FontWeight.w600,
                    //   ),
                    // )),
                    child: GlobalText(
                      text: "Next",
                      color: AppColors.whitecolor,
                      fontSize: 14.sp,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
