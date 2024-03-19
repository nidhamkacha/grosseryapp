import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grosseryapp/res/comman/global_button.dart';
import 'package:grosseryapp/res/comman/global_text.dart';

class ConfirmOrderScreen extends StatefulWidget {
  const ConfirmOrderScreen({super.key});

  @override
  State<ConfirmOrderScreen> createState() => _ConfirmOrderScreenState();
}

class _ConfirmOrderScreenState extends State<ConfirmOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 240.h,
          ),
          Container(
            height: 88.h,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/yes.png'))),
          ),
          SizedBox(
            height: 24.h,
          ),
          GlobalText(
            text: "Your Order Is recived",
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
          ),
          GlobalText(
            text: "Delivery Soon",
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80.0),
            child: GlobalButton(
              text: "My Account",
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
