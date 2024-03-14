import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grosseryapp/res/comman/global_text.dart';
import 'package:grosseryapp/res/static/app_colors.dart';
import 'package:grosseryapp/view/home/cartscreen.dart';
import 'package:grosseryapp/view/home/shopscreen.dart';
import 'package:grosseryapp/view/home/storescreen.dart';
import 'package:grosseryapp/view/tabbarscreens/profilescreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  var data = [
    {
      "imagepath": 'assets/images/image-removebg-preview (53) 1.png',
      "productnames": 'Dairy, Br...',
    },
    {
      "imagepath": 'assets/images/image-removebg-preview (54) 1.png',
      "productnames": 'Snack & ...',
    },
    {
      "imagepath": 'assets/images/image-removebg-preview (52) 1.png',
      "productnames": 'Bakery &...',
    },
    {
      "imagepath": 'assets/images/image-removebg-preview (61) 1.png',
      "productnames": 'Instant F...',
    },
    {
      "imagepath": 'assets/images/image-removebg-preview (58) 1.png',
      "productnames": 'Dairy, Br...',
    },
    {
      "imagepath": 'assets/images/image-removebg-preview (58) 1.png',
      "productnames": 'Tea, Coff...',
    },
    {
      "imagepath": 'assets/images/image-removebg-preview (59) 1.png',
      "productnames": 'Fruits & ...',
    },
    {
      "imagepath": 'assets/images/image-removebg-preview (60) 1.png',
      "productnames": 'Cold Drin...',
    },
    {
      "imagepath": 'assets/images/image-removebg-preview (62) 1.png',
      "productnames": 'Meat',
    },
    {
      "imagepath": 'assets/images/image-removebg-preview (64) 1.png',
      "productnames": 'Baby Care',
    },
    {
      "imagepath": 'assets/images/image-removebg-preview (65) 1.png',
      "productnames": 'Pet Care',
    },
    {
      "imagepath": 'assets/images/image-removebg-preview (66) 1.png',
      "productnames": 'Atta, Ric...',
    },
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    height: 35.h,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Icon(
                          size: 30.sp,
                          Icons.schedule,
                          color: AppColors.whitecolor,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GlobalText(
                            text: "Delivery in 15 minutes",
                            color: AppColors.whitecolor,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          GlobalText(
                            text: "H.No. 2834 Street, 784 Sector, Lud...",
                            color: AppColors.whitecolor,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w300,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: Colors.black38,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.shopping_cart_outlined,
                          size: 25.sp,
                          color: AppColors.whitecolor,
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: Colors.black38,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.menu,
                          size: 25.sp,
                          color: AppColors.whitecolor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      color: AppColors.whitecolor,
                      height: 42.h,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Search for atta, dal, coke and more',
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  GlobalText(
                    text: "Shop Popular Categories",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    width: 68.w,
                  ),
                  GlobalText(
                    text: "View All",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff1C0D56),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: SizedBox(
                height: 420.h,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 100,
                  ),
                  children: [
                    ...data.map((e) => Container(
                          height: 200.h,
                          width: 92.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                e["imagepath"].toString(),
                                fit: BoxFit.cover,
                                scale: 3,
                              ),
                              Text(e["productnames"].toString()),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black38),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 129.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 243, 219, 101),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              GlobalText(
                                text: "Fresh",
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              GlobalText(
                                text: "Fruits",
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                          GlobalText(
                            text: "Get Upto  30% Off",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                          TextButton(
                            onPressed: () {
                              // Respond to button press
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  AppColors.greencolor),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GlobalText(
                                  text: "Order Now",
                                  color: AppColors.whitecolor,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                                Icon(
                                  Icons.arrow_forward_rounded,
                                  size: 18.sp,
                                  color: AppColors.whitecolor,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset('assets/images/mixfruits.png')
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 60.h,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('You Are At HomeScreen'),
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
                          Icons.home_outlined,
                          size: 25.sp,
                          color: Colors.green,
                        ),
                        GlobalText(
                          text: "Home",
                          color: AppColors.greencolor,
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
                              builder: (context) => ShopScreen()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.storefront_sharp,
                          size: 25.sp,
                          color: Colors.black,
                        ),
                        GlobalText(
                          text: "Shop",
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
                              builder: (context) => StoreScreen()));
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
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CartScreen()));
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
      ),
    );
  }
}
