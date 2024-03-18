import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grosseryapp/res/comman/global_button.dart';
import 'package:grosseryapp/res/comman/global_text.dart';

class PayViaUpi extends StatefulWidget {
  const PayViaUpi({super.key});

  @override
  State<PayViaUpi> createState() => _PayViaUpiState();
}

class _PayViaUpiState extends State<PayViaUpi> {
  @override
  var items = [
    {
      "name": "mrmohan7854@okaxis",
      "imagepath": "assets/images/upi.png",
    },
    {
      "name": "namebank@okpay",
      "imagepath": "assets/images/phonepay.png",
    },
    {
      "name": "mrsiva4785@okaxis",
      "imagepath": "assets/images/paytm.png",
    },
    {
      "name": "mrmohan7854@okaxis",
      "imagepath": "assets/images/rupay.png",
    },
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GlobalText(
                text: "Pay Via UPI",
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              children: [
                SizedBox(
                  height: 10,
                ),
                ...items.map(
                  (e) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 42.w,
                                    height: 42.h,
                                    decoration: new BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.black12),
                                      image: new DecorationImage(
                                          image: new AssetImage(
                                              e["imagepath"].toString()),
                                          scale: 3),
                                    ),
                                  ),
                                  Radio(
                                    fillColor: MaterialStatePropertyAll(
                                        Colors.black26),
                                    value: 1,
                                    groupValue: 2,
                                    onChanged: (value) {},
                                  ),
                                ]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GlobalText(
                                  text: e["name"].toString(),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.arrow_forward_sharp),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black38),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: GlobalButton(
                text: "Pay Now",
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
