// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:input_quantity/input_quantity.dart';

class DeliveryScreen extends StatefulWidget {
  const DeliveryScreen({super.key});

  @override
  State<DeliveryScreen> createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  var data = [
    {
      "imagepath": 'assets/images/Bittersweet Chocolate.png',
      "Category": 'Chocolate',
      "productname": 'Bittersweet Chocolate',
      'price': '₹ 120'
    },
    {
      "imagepath": 'assets/images/eggbox.png',
      "Category": 'Egg',
      "productname": 'Egg box',
      'price': '₹ 80'
    },
    {
      "imagepath": 'assets/images/vegetable butter.png',
      "Category": 'Butter',
      "productname": 'Vegetable oil butter...',
      'price': '₹ 150'
    },
    {
      "imagepath": 'assets/images/kangarubeer.png',
      "Category": 'Drinks',
      "productname": 'Kanguru energy dr...',
      'price': '₹ 80'
    },
    {
      "imagepath": 'assets/images/thousandisland.png',
      "Category": 'Kraft',
      "productname": 'Thousand island ...',
      'price': '₹ 80'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 140.h,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xff971DE2),
              Color(0xffFFE86D),
            ])),
            child: Column(
              children: [
                SizedBox(
                  height: 43.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Icon(
                        size: 30.sp,
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Delivery in 10 minutes",
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Text(
                          "3 items",
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 22.w,
                    ),
                    Container(
                      height: 50.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        size: 30.sp,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      height: 50.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.menu,
                        size: 30.sp,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListView.separated(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 120.h,
                        width: 100.w,
                        child: Image.asset(
                          data[index]["imagepath"].toString(),
                          scale: 2,
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data[index]["Category"].toString(),
                            style: GoogleFonts.inter(
                              color: Colors.black45,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            data[index]["productname"].toString(),
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            data[index]["price"].toString(),
                            style: GoogleFonts.inter(
                              color: Colors.black45,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      InputQty(
                        qtyFormProps: QtyFormProps(enableTyping: false),
                        btnColor1: Colors.green,
                        btnColor2: Colors.green,
                        maxVal: double.maxFinite,
                        decoration: QtyDecorationProps(
                          border: InputBorder.none,
                        ),
                        initVal: 0,
                        onQtyChanged: (val) {
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                color: Colors.grey, // Change as per your design
                thickness: 1.0, // Change as per your design
                height: 0,
              );
            },
            itemCount: data.length,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: SizedBox(
              height: 48.h,
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xff188806)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "3 items  ₹ 750      Proceed To Pay >>",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
