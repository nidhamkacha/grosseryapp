// ignore_for_file: override_on_non_overriding_member
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grosseryapp/res/comman/global_button.dart';
import 'package:grosseryapp/res/comman/global_text.dart';

class NetBankingScreen extends StatefulWidget {
  const NetBankingScreen({super.key});

  @override
  State<NetBankingScreen> createState() => _NetBankingScreenState();
}

enum SingingCharacter { HDFC, ICIC, AXIS, STATE, SBI, BOI }

class _NetBankingScreenState extends State<NetBankingScreen> {
  @override
  var data = [
    {
      "imagepath": "assets/images/upi.png",
      "names": "HDFC",
    },
    {
      "imagepath": "assets/images/phonepay.png",
      "names": "ICIC",
    },
    {
      "imagepath": "assets/images/paytm.png",
      "names": "AXIS",
    },
    {
      "imagepath": "assets/images/visa-card.png",
      "names": "STATE",
    },
    {
      "imagepath": "assets/images/mastercard.png",
      "names": "SBI ",
    },
    {
      "imagepath": "assets/images/rupay.png",
      "names": "BOI",
    },
  ];
  SingingCharacter? _character = SingingCharacter.AXIS;
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
                text: "NetBankings",
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 420.h,
                child: GridView(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 115,
                  ),
                  children: [
                    ...data.map(
                      (e) => Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(children: [
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

                                // Radio(
                                //   fillColor: MaterialStatePropertyAll(
                                //       Colors.black26),
                                //   value: 1,
                                //   groupValue: 2,
                                //   onChanged: (value) {},
                                // ),
                                SizedBox(
                                  width: 90.w,
                                ),
                                SizedBox(
                                  width: 20.w,
                                  child: RadioListTile<SingingCharacter>(
                                    activeColor: Colors.blue,
                                    // title: Text(e["names"].toString()),
                                    value: SingingCharacter
                                        .values[data.indexOf(e)],
                                    groupValue: _character,
                                    onChanged: (SingingCharacter? value) {
                                      setState(() {
                                        _character = value;
                                      });
                                    },
                                  ),
                                ),
                              ]),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GlobalText(
                                    text: e["names"].toString(),
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
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
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
