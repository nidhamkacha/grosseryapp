import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grosseryapp/res/comman/global_button.dart';
import 'package:grosseryapp/res/comman/global_text.dart';
import 'package:grosseryapp/res/static/app_colors.dart';
import 'package:grosseryapp/view/bottom/bottom_bar.dart';

class VarificationScreen extends StatefulWidget {
  const VarificationScreen({super.key});

  @override
  State<VarificationScreen> createState() => _VarificationScreenState();
}

class _VarificationScreenState extends State<VarificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 140.h,
          ),
          GlobalText(
            text: "Verify Code",
            fontSize: 22.sp,
            fontWeight: FontWeight.w700,
          ),
          SizedBox(
            height: 24.h,
          ),
          GlobalText(
            text: "Please enter the code we just sent to email",
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
          GlobalText(
            text: "nidham78@gmail.com",
            fontSize: 14.sp,
            color: AppColors.greencolor,
            fontWeight: FontWeight.w400,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 90.h,
                padding: EdgeInsets.all(16.0),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 47.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 196, 243, 189),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
          GlobalText(
            text: "Didn’t receive OTP?",
            fontSize: 14.sp,
            color: Colors.black38,
            fontWeight: FontWeight.w400,
          ),
          GlobalText(
            text: "Resend Code",
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            textStyle: TextStyle(
              decoration: TextDecoration.underline,
            ),
          ),
          SizedBox(
            height: 37.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: GlobalButton(
              text: "Verify",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BottomNevBarScreen()));
              },
            ),
          )
        ],
      ),
    );
  }
}
