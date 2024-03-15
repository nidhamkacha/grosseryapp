import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grosseryapp/res/static/app_colors.dart';


class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({super.key});

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
  var items = [
    {
      "icon": Icons.shopping_bag_outlined,
      "status": "Deliverd",
      "orderid": "0RD0432547891",
      "price": "₹ 930",
      "subtitle": "Placed on wed, 19 Oct 30, 12:55 pm",
    },
    {
      "icon": Icons.shopping_bag_outlined,
      "status": "Deliverd",
      "price": "₹ 580",
      "orderid": "0RD0432525486",
      "subtitle": "Placed on wed, 22 Oct 27, 01:55 pm",
    },
    {
      "icon": Icons.shopping_bag_outlined,
      "status": "Cancelled",
      "orderid": "0RD0432556247",
      "price": "₹ 1080",
      "subtitle": "Placed on wed, 22 Oct 27, 01:55 pm",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'My Orders',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          ListView(
            padding: EdgeInsets.all(8),
            shrinkWrap: true,
            children: [
              SizedBox(
                height: 10,
              ),
              ...items.map(
                (e) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 80.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 5.w,
                        ),
                        Icon(
                          e["icon"] as IconData?,
                          size: 30.sp,
                          color: AppColors.greencolor,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color.fromARGB(255, 175, 235, 164),
                              ),
                              child: Text(
                                e["status"].toString(),
                                style: TextStyle(
                                  color: AppColors.greencolor,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  e["orderid"].toString(),
                                  style: TextStyle(
                                    color: AppColors.blackcolor,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  height: 4.h,
                                  width: 4.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: AppColors.blackcolor,
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  e["price"].toString(),
                                  style: TextStyle(
                                    color: Color(0xff0500FF),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              e["subtitle"].toString(),
                              style: TextStyle(
                                color: AppColors.blackcolor,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                        Spacer(
                          flex: 10,
                        ),
                        Spacer(),
                        TextButton.icon(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(AppColors.whitecolor),
                          ),
                          onPressed: () {},
                          icon: Column(
                            children: [
                              Image.asset(
                                'assets/images/view.png',
                                scale: 2,
                              ),
                              SizedBox(
                                  height:
                                      7), // Adjust the spacing between the image and text as needed
                              Text(
                                'View Details',
                                style: TextStyle(
                                  color: AppColors.greencolor,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          label: Text(''), // Empty label
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 145.h,
          ),
        ],
      ),
    );
  }
}
