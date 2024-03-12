import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grosseryapp/view/auth/createaccount.dart';
import 'package:grosseryapp/view/home/deliveryscreen.dart';
import 'package:grosseryapp/view/home/homescreen.dart';
import 'package:grosseryapp/view/onbording/onbordingscreen.dart';
import 'package:grosseryapp/view/home/shopscreen.dart';
import 'package:grosseryapp/view/auth/signinscreen.dart';
import 'package:grosseryapp/view/home/storescreen.dart';
import 'package:grosseryapp/view/auth/varificationscreen.dart';
import 'package:grosseryapp/view/spless/spless_screen.dart';
import 'package:grosseryapp/view/tabbarscreens/addresscreen.dart';
import 'package:grosseryapp/view/tabbarscreens/tabbarmain.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 800),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),

            home: const SplessScreen(),
            // home: const OnbodingScreen(),
            // home: const SigninScreen(),
            // home: const CreateAccoutScreen(),
            // home: const VarificationScreen(),
            // home: const HomeScreen(),
            // home: const ShopScreen(),
            // home: const DeliveryScreen(),
            // home: const TabBarMainScreen(),
            // home: const AddressScreen(),

            // home: const StoreScreen(),
            // home: const HomeScreen(),
          );
        });
  }
}
