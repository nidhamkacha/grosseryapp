import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grosseryapp/res/comman/global_text.dart';
import 'package:grosseryapp/res/static/app_colors.dart';

class WalletPaymentScreen extends StatefulWidget {
  const WalletPaymentScreen({super.key});

  @override
  State<WalletPaymentScreen> createState() => _WalletPaymentScreenState();
}

class _WalletPaymentScreenState extends State<WalletPaymentScreen> {
  @override
  var data = [
    {
      "imagepath": "assets/images/upi.png",
      "names": "UPI",
    },
    {
      "imagepath": "assets/images/phonepay.png",
      "names": "PhonePay",
    },
    {
      "imagepath": "assets/images/paytm.png",
      "names": "Paytm",
    },
    {
      "imagepath": "assets/images/visacard.png",
      "names": "Visacard",
    },
    {
      "imagepath": "assets/images/mastercard.png",
      "names": "Mastercard",
    },
    {
      "imagepath": "assets/images/rupay.png",
      "names": "Rupay",
    },
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GlobalText(
              text: "Wallets",
              fontSize: 24.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: SizedBox(
              height: 420.h,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                  mainAxisExtent: 100,
                ),
                children: [
                  ...data.map(
                    (e) => Container(
                      height: 200.h,
                      width: 92.w,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 42.w,
                                height: 42.h,
                                decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.black26),
                                  image: new DecorationImage(
                                      image: new AssetImage(
                                          e["imagepath"].toString()),
                                      scale: 3),
                                ),
                              ),
                            ],
                          ),
                          GlobalText(
                            text: e["names"].toString(),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                          Text(
                            'LINK',
                            style: TextStyle(
                              color: AppColors.bluecolor,
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black38),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
