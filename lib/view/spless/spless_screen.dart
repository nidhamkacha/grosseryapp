import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grosseryapp/res/static/app_colors.dart';
import 'package:grosseryapp/view/onbording/onbordingscreen.dart';

class SplessScreen extends StatefulWidget {
  const SplessScreen({super.key});

  @override
  State<SplessScreen> createState() => _SplessScreenState();
}

class _SplessScreenState extends State<SplessScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => OnbodingScreen()));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greencolor,
      body: Center(
        child: Container(
          height: 62.h,
          width: 201.w,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Group 87.png'))),
        ),
      ),
    );
  }
}
