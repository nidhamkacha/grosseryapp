import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grosseryapp/res/comman/global_text.dart';
import 'package:grosseryapp/res/static/app_colors.dart';
import 'package:grosseryapp/view/home/cartscreen.dart';
import 'package:grosseryapp/view/home/homescreen.dart';
import 'package:grosseryapp/view/home/storescreen.dart';
import 'package:grosseryapp/view/tabbarscreens/profilescreen.dart';

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
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.black38,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: AppColors.whitecolor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    GlobalText(
                      text: "Shop",
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.whitecolor,
                    ),
                    SizedBox(
                      width: 120.w,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CartScreen(),
                          ),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.black38,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.shopping_cart_outlined,
                          size: 30,
                          color: AppColors.whitecolor,
                        ),
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
                        color: AppColors.whitecolor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                    child: GlobalText(
                                      text: "Add",
                                      color: AppColors.greencolor,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    style: ButtonStyle(
                                      side:
                                          MaterialStateProperty.all<BorderSide>(
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
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                        color: AppColors.blackcolor,
                      ),
                      GlobalText(
                        text: "Home",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      )
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('You Are At ShopScreen'),
                        content: const Text('Select Another Tab'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.storefront_sharp,
                        size: 25.sp,
                        color: AppColors.greencolor,
                      ),
                      GlobalText(
                        text: "Shop",
                        fontSize: 12.sp,
                        color: AppColors.greencolor,
                        fontWeight: FontWeight.w400,
                      )
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => StoreScreen()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 25.sp,
                        color: Colors.black,
                      ),
                      GlobalText(
                        text: "Stores",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => CartScreen()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.shopping_basket_outlined,
                        size: 25.sp,
                        color: Colors.black,
                      ),
                      GlobalText(
                        text: "Cart",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileScreen()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.person_outline_outlined,
                        size: 25.sp,
                        color: Colors.black,
                      ),
                      GlobalText(
                        text: "Profile",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
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
