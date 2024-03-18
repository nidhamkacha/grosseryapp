import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grosseryapp/res/comman/global_text.dart';

class CashPayment extends StatefulWidget {
  const CashPayment({super.key});

  @override
  State<CashPayment> createState() => _CashPaymentState();
}

class _CashPaymentState extends State<CashPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: GlobalText(
        text: "Cash Payment Not Available",
        fontSize: 20.sp,
        fontWeight: FontWeight.w500,
      )),
    );
  }
}
