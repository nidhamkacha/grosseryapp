import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff188806),
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
