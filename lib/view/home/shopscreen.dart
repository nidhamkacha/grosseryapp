import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grosseryapp/view/home/homescreen.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  var data = [
    {
      "imagepath": 'assets/images/Bittersweet Chocolate.png',
      "categories": 'Chocolate',
      "price": '₹ 120',
      "productname": 'Bittersweet Chocolate',
      "quantity": '2*90g'
    },
    {
      "imagepath": 'assets/images/eggbox.png',
      "categories": 'Egg',
      "price": '₹ 80',
      "productname": 'Egg box',
      "quantity": '2*80g',
    },
    {
      "imagepath": 'assets/images/vegetable butter.png',
      "categories": 'Butter',
      "price": '₹ 150',
      "productname": 'Vegetable oil butter...',
      "quantity": '2*85g',
    },
    {
      "imagepath": 'assets/images/beer.png',
      "categories": 'Beer',
      "price": '₹ 100',
      "productname": 'Lager beer',
      "quantity": '1/2 lit'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 156.h,
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
                    Text(
                      "Shop",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 130.w,
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
          GridView(
            shrinkWrap: true,
            // itemCount: imagepath.length,
            padding: EdgeInsets.zero,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 281,
            ),
            children: data
                .map((e) => Container(
                      height: 380.h,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                e["imagepath"].toString(),
                                fit: BoxFit.cover,
                                scale: 3,
                              ),
                            ),
                            SizedBox(
                              height: 14.h,
                            ),
                            Text(
                              e["categories"].toString(),
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
                              e["productname"].toString(),
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
                              e["quantity"].toString(),
                              style: GoogleFonts.inter(
                                color: Colors.black45,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  e["price"].toString(),
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                // IconButton(onPressed: (){},icon: Icon(Icons.add),),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Add',
                                    style: GoogleFonts.inter(
                                      color: Color(0xff188806),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    side: MaterialStateProperty.all<BorderSide>(
                                      BorderSide(
                                        style: BorderStyle.solid,
                                        color: Colors.green,
                                        width: 2
                                            .w, // Change this to the width you want
                                      ),
                                    ),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 210, 210, 210)),
                      ),
                    ))
                .toList(),
          ),
          SizedBox(
            height: 65.h,
          ),
          Container(
            height: 60.h,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.home_outlined,
                        size: 25.sp,
                        color: Colors.green,
                      ),
                      Text(
                        "Home",
                        style: GoogleFonts.inter(
                          color: Color(0xff188806),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Respond to button press
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.storefront_sharp,
                        size: 25.sp,
                        color: Colors.black,
                      ),
                      Text(
                        "Shop",
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Respond to button press
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 25.sp,
                        color: Colors.black,
                      ),
                      Text(
                        "Stores",
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Respond to button press
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.shopping_basket_outlined,
                        size: 25.sp,
                        color: Colors.black,
                      ),
                      Text(
                        "Cart",
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Respond to button press
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.person_outline_outlined,
                        size: 25.sp,
                        color: Colors.black,
                      ),
                      Text(
                        "Profile",
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
