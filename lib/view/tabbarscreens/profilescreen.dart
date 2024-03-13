import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grosseryapp/res/static/app_colors.dart';
import 'package:grosseryapp/view/tabbarscreens/addresscreen.dart';
import 'package:grosseryapp/view/tabbarscreens/logoutscreen.dart';
import 'package:grosseryapp/view/tabbarscreens/myorderscreen.dart';
import 'package:grosseryapp/view/tabbarscreens/mywalletscreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          body: Column(
            children: [
              Container(
                height: 150.h,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color(0xff971DE2),
                  Color(0xffFFE86D),
                ])),
                child: Column(
                  children: [
                    SizedBox(
                      height: 38.h,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Icon(
                            size: 30.sp,
                            Icons.arrow_back,
                            color: AppColors.whitecolor,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          "Profile",
                          style: GoogleFonts.inter(
                            color: AppColors.whitecolor,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 110.w,
                        ),
                        SizedBox(
                          width: 10,
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
                            color: AppColors.whitecolor,
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
              SizedBox(
                height: 5.h,
              ),
              Container(
                height: 70,
                child: TabBar(
                  // indicator: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(10), // Adjust as needed
                  //   color: Colors.green, // Indicator color
                  // ),
                  tabs: [
                    Container(
                      width: 61,
                      child: Column(
                        children: [
                          Container(
                            height: 42,
                            width: 42,
                            child: Image.asset(
                              'assets/images/address.png',
                              scale: 3,
                              // fit: BoxFit.fill,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xff25A310),
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Address',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Color(0xff25A310),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 61,
                      child: Column(
                        children: [
                          Container(
                            height: 42,
                            width: 42,
                            child: Image.asset(
                              'assets/images/myorder.png',
                              scale: 3,
                              //fit: BoxFit.cover,
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 154, 219, 143),
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'My Order',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Color(0xff25A310),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 61,
                      child: Column(
                        children: [
                          Container(
                            height: 42,
                            width: 42,
                            child: Image.asset(
                              'assets/images/wallet.png',
                              scale: 3,
                              // fit: BoxFit.fill,
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 154, 219, 143),
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'My Wallet',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Color(0xff25A310),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 61,
                      child: Column(
                        children: [
                          Container(
                            height: 42,
                            width: 42,
                            child: Image.asset(
                              'assets/images/logout .png',
                              scale: 3,
                              // fit: BoxFit.fill,
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 154, 219, 143),
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Logout',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Color(0xff25A310),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(children: [
                  AddressScreen(),
                  MyOrderScreen(),
                  MywalletScreen(),
                  LogoutScreen(),
                ]),
              )
            ],
          ),
        ));
  }
}
