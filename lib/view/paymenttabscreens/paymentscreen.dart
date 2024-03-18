import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grosseryapp/res/static/app_colors.dart';
import 'package:grosseryapp/view/paymenttabscreens/cardpayment.dart';
import 'package:grosseryapp/view/paymenttabscreens/cashpayment.dart';
import 'package:grosseryapp/view/paymenttabscreens/netbanking.dart';
import 'package:grosseryapp/view/paymenttabscreens/walletpayment.dart';
import 'package:grosseryapp/view/paymenttabscreens/googlepay.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 5, vsync: this);
    _controller.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
                    height: 38.h,
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Text(
                        "Select Payment Method",
                        style: GoogleFonts.inter(
                          color: AppColors.whitecolor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
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
              height: 75.h,
              child: TabBar(
                controller: _controller,
                unselectedLabelColor: Colors.red,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), // Adjust as needed
                  // color: Colors.green, // Indicator color
                ),
                tabs: [
                  Container(
                    width: 61,
                    child: Column(
                      children: [
                        Container(
                          height: 42,
                          width: 42,
                          child: Image.asset(
                            'assets/images/wallet.png',
                            scale: 3,
                            color: _controller.index == 0
                                ? AppColors.whitecolor
                                : Color(0xff25A310),
                            // fit: BoxFit.fill,
                          ),
                          decoration: BoxDecoration(
                            color: _controller.index == 0
                                ? Color(0xff25A310)
                                : Color.fromARGB(255, 154, 219, 143),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Wallet',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: _controller.index == 0
                                    ? Color(0xff25A310)
                                    : AppColors.blackcolor,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 61,
                    child: Column(
                      children: [
                        Container(
                          height: 42,
                          width: 42,
                          child: Image.asset(
                            'assets/images/credit-cards.png',
                            scale: 3,
                            color: _controller.index == 1
                                ? AppColors.whitecolor
                                : Color(0xff25A310),
                            // fit: BoxFit.fill,
                          ),
                          decoration: BoxDecoration(
                            color: _controller.index == 1
                                ? Color(0xff25A310)
                                : Color.fromARGB(255, 154, 219, 143),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Cards',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: _controller.index == 1
                                    ? Color(0xff25A310)
                                    : AppColors.blackcolor,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 61,
                    child: Column(
                      children: [
                        Container(
                          height: 42,
                          width: 42,
                          child: Image.asset(
                            'assets/images/netbanking.png',
                            scale: 3,
                            color: _controller.index == 2
                                ? AppColors.whitecolor
                                : Color(0xff25A310),
                            //fit: BoxFit.cover,
                          ),
                          decoration: BoxDecoration(
                            color: _controller.index == 2
                                ? Color(0xff25A310)
                                : Color.fromARGB(255, 154, 219, 143),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Netbanking',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: _controller.index == 2
                                    ? Color(0xff25A310)
                                    : AppColors.blackcolor,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 61,
                    child: Column(
                      children: [
                        Container(
                          height: 42,
                          width: 42,
                          child: Image.asset(
                            'assets/images/google-glass-logo.png',
                            scale: 3,
                            color: _controller.index == 3
                                ? AppColors.whitecolor
                                : Color(0xff25A310),
                            // fit: BoxFit.fill,
                          ),
                          decoration: BoxDecoration(
                            color: _controller.index == 3
                                ? Color(0xff25A310)
                                : Color.fromARGB(255, 154, 219, 143),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Pay Via UPI',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: _controller.index == 3
                                    ? Color(0xff25A310)
                                    : AppColors.blackcolor,
                                fontSize: 10.sp,
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
                            'assets/images/money.png',
                            color: _controller.index == 4
                                ? AppColors.whitecolor
                                : Color(0xff25A310),
                            scale: 3,
                            // fit: BoxFit.fill,
                          ),
                          decoration: BoxDecoration(
                            color: _controller.index == 4
                                ? Color(0xff25A310)
                                : Color.fromARGB(255, 154, 219, 143),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Cash',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: _controller.index == 4
                                    ? Color(0xff25A310)
                                    : AppColors.blackcolor,
                                fontSize: 10.sp,
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
              child: TabBarView(
                controller: _controller,
                children: [
                  WalletPaymentScreen(),
                  CardPaymentScreen(),
                  NetBankingScreen(),
                  PayViaUpi(),
                  CashPayment(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
