import 'package:flutter/material.dart';
import 'package:grosseryapp/pages/createaccount.dart';
import 'package:grosseryapp/pages/deliveryscreen.dart';
import 'package:grosseryapp/pages/homescreen.dart';
import 'package:grosseryapp/pages/loadingscreen.dart';
import 'package:grosseryapp/pages/onbordingscreen.dart';
import 'package:grosseryapp/pages/shopscreen.dart';
import 'package:grosseryapp/pages/signinscreen.dart';
import 'package:grosseryapp/pages/storescreen.dart';
import 'package:grosseryapp/pages/varificationscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const LoadingScreen(),
      // home: const OnbodingScreen(),
      // home: const SigninScreen(),
      // home: const CreateAccoutScreen(),
      // home: const VarificationScreen(),
      // home: const HomeScreen(),
      home: const ShopScreen(),
      
      // home: const StoreScreen(),
      // home: const HomeScreen(),
    );
  }
}
