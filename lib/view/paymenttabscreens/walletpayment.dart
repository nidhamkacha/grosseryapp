// ignore_for_file: override_on_non_overriding_member
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grosseryapp/res/comman/global_button.dart';
import 'package:grosseryapp/res/comman/global_text.dart';
import 'package:grosseryapp/res/static/app_colors.dart';
import 'package:grosseryapp/view/confirm/confirm_order.dart';

class WalletPaymentScreen extends StatefulWidget {
  const WalletPaymentScreen({super.key});

  @override
  State<WalletPaymentScreen> createState() => _WalletPaymentScreenState();
}

enum SingingCharacter { UPI, PhonePay, Paytm, Visacard, Mastercard, Rupay }

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
      "imagepath": "assets/images/visa-card.png",
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
  // List<String> name = [
  //   'raj',
  //   'rahol',
  //   'fefd',
  // ];

  // List<int> isChecked = List.generate(3, (index) => 0);

  SingingCharacter? _character = SingingCharacter.UPI;

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
                text: "Wallets",
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
                          padding: const EdgeInsets.symmetric(horizontal: 10),
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
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.black12),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            e["imagepath"].toString()),
                                        scale: 3,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    // Wrap RadioListTile in a SizedBox
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
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // SizedBox(
            //   height: 100,
            //   child: ListView.builder(
            //       itemCount: name.length,
            //       shrinkWrap: true,
            //       itemBuilder: (context, index) {
            //         return Card(
            //           child: Row(
            //             children: [
            //               Text(name[index]),
            //               Radio(
            //                 //title: const Text('Thomas Jefferson'),
            //                 value: isChecked[index],
            //                 groupValue: SingingCharacter,
            //                 onChanged: (value) {
            //                   setState(() {
            //                     isChecked[index] = value as int;
            //                   });
            //                 },
            //               ),
            //               // Checkbox(
            //               //   checkColor: Colors.white,
            //               //   value: isChecked[index],
            //               //   onChanged: (bool? value) {
            //               //     setState(() {
            //               //       isChecked[index] = value!;
            //               //       log(value.toString());
            //               //     });
            //               //   },
            //               // ),
            //             ],
            //           ),
            //         );
            //       }),
            // ),
            // // Checkbox(
            // //   checkColor: Colors.white,
            // //   value: isChecked[index],
            // //   onChanged: (bool? value) {
            // //     setState(() {
            // //       isChecked = value!;
            // //       log(value.toString());
            // //     });
            // //   },
            // // ),
            // SizedBox(
            //   height: 10.h,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: GlobalButton(
                text: "Pay Now",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConfirmOrderScreen(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
