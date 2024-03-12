import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
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
          Text(
            "Select from Our",
            style: GoogleFonts.inter(
              color: Color(0xff188806),
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "Best Menu",
            style: GoogleFonts.inter(
              color: Color(0xff188806),
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 14.h,
          ),
          Text(
            "Pick your food from our menu",
            style: GoogleFonts.inter(
              color: Color(0xff000000),
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "More than 35 items.",
            style: GoogleFonts.inter(
              color: Color(0xff000000),
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
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
                  color: Color(0xff188806),
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
                  color: Color(0xff188806),
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
                  color: Color(0xff188806),
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
                Text(
                  "Skip",
                  style: GoogleFonts.inter(
                    color: Color(0xff000000),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
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
                        backgroundColor: Color(0xff188806),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      child: Text(
                        'Next',
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
