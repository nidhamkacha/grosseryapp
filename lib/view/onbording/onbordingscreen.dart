import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:grosseryapp/res/comman/global_text.dart';
import 'package:grosseryapp/res/static/app_colors.dart';
import 'package:grosseryapp/view/auth/signinscreen.dart';
import 'package:grosseryapp/view/home/homescreen.dart';

class OnbodingScreen extends StatefulWidget {
  const OnbodingScreen({Key? key}) : super(key: key);
  @override
  State<OnbodingScreen> createState() => _OnbodingScreenState();
}

class onbording {
  String? title;
  String? subtitle;
  String? imgpath;

  onbording({this.title, this.subtitle, this.imgpath});
}

List<onbording> items = [
  onbording(
      title: 'Select from Our \nBest Menu',
      subtitle: 'Pick your food from our menu \nMore than 35 items.',
      imgpath: 'assets/images/onbording-1.png'),
  onbording(
      title: 'Easy and Online \nPayment',
      subtitle: 'You can pay cash on delivery and \nCard payment is available',
      imgpath: 'assets/images/onbording-2.png'),
  onbording(
      title: 'Quick Delivery at \nYour Doorstep',
      subtitle: 'Deliver your food at your \nDoorstep',
      imgpath: 'assets/images/onbording-3.png'),
];

class _OnbodingScreenState extends State<OnbodingScreen> {
  PageController _pgcontroller = PageController();
  int _currentIndex = 0;
  @override
  void initState() {
    _pgcontroller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pgcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pgcontroller,
        itemCount: items.length,
        onPageChanged: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        itemBuilder: (_, index) {
          return Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 150.h,
                  ),
                  GlobalText(
                    text: items[index].title,
                    fontSize: 20.sp,
                    color: AppColors.greencolor,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  GlobalText(
                    text: items[index].subtitle,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Container(
                    height: 288.h,
                    width: double
                        .infinity, // Set width to fill the available space
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(items[index].imgpath.toString()),
                        fit: BoxFit.cover, // Adjust the fit as needed
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          items.length, (index) => buildDot(index, context)),
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SigninScreen(),
                                ));
                          },
                          child: GlobalText(
                            text: "Skip",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 44.h,
                          width: 90.w,
                          child: ElevatedButton(
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => SigninScreen()));
                              if (_currentIndex == items.length - 1) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SigninScreen(),
                                    ));
                              }
                              _pgcontroller.nextPage(
                                  duration: Duration(seconds: 2),
                                  curve: Easing.legacy);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.greencolor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            child: GlobalText(
                              text: _currentIndex == items.length - 1
                                  ? "Start"
                                  : "Next",
                              color: AppColors.whitecolor,
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: _currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(left: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.greencolor,
      ),
    );
  }
}
