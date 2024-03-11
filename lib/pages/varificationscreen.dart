import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

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
          Text(
            "Verify Code",
            style: GoogleFonts.inter(
              color: Color(0xff000000),
              fontSize: 22.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Text(
            "Please enter the code we just sent to email",
            style: GoogleFonts.inter(
              color: Color(0xff000000),
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "example@gmail.com",
            style: GoogleFonts.inter(
              color: Color(0xff188806),
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
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
                          // height: 40,
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
          Text(
            "Didn’t receive OTP?",
            style: GoogleFonts.inter(
              color: Colors.black38,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "Resend Code",
            style: GoogleFonts.inter(
              color: Colors.black,
              fontSize: 14.sp,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 37.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 45.h,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0XFF188806),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Text(
                    "Verify",
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
