import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grosseryapp/view/spless/spless_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(370, 800),
        // designSize: const Size(380, 800), //my samsumg mobile
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            initialRoute: '/splash',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            // routes: {
            //   '/splash': (context) => const SplessScreen(),
            //   '/home': (context) => const HomeScreen(),
            //   '/signin': (context) => const SigninScreen(),
            // },
            home: const SplessScreen(),
          );
        });
  }
}
