import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grosseryapp/res/static/app_colors.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  int tappedIndex = -1;

  // List<String> items = ['Home', 'Chennai', 'Office'];
  // List<String> subtitles = [
  //   'H.No. 2834 Street, 784 Sector...',
  //   '658475  Street, 784 Sector, Chenn...',
  //   '36547,  784 Sector, Chennai. Ad...'
  // ];
  var items = [
    {
      "icon": Icons.home_outlined,
      "title": "Home",
      "subtitle": "H.No. 2834 Street, 784 Sector...",
    },
    {
      "icon": Icons.location_on_outlined,
      "title": "Chennai",
      "subtitle": "658475  Street, 784 Sector, Chenn...",
    },
    {
      "icon": Icons.work_outline_outlined,
      "title": "Office",
      "subtitle": "36547,  784 Sector, Chennai. Ad...",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Address',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Respond to button press
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(AppColors.greencolor),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.add_circle,
                        size: 18.sp,
                        color: AppColors.whitecolor,
                      ),
                      Text(
                        "Add New",
                        style: GoogleFonts.inter(
                          color: AppColors.whitecolor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
                    height: 71.h,
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
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              e["title"].toString(),
                              style: TextStyle(
                                color: AppColors.blackcolor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
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
                        TextButton.icon(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(AppColors.whitecolor),
                          ),
                          onPressed: () {},
                          icon: Column(
                            children: [
                              Image.asset(
                                'assets/images/edit.png',
                                scale: 2,
                              ),
                              SizedBox(
                                  height: 7
                                      .h), // Adjust the spacing between the image and text as needed
                              Text(
                                'Edit',
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
                                'assets/images/delete.png',
                                scale: 2,
                              ),
                              SizedBox(
                                  height:
                                      7), // Adjust the spacing between the image and text as needed
                              Text(
                                'Delete',
                                style: TextStyle(
                                  color: AppColors.blackcolor,
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
            height: 175.h,
          ),
        ],
      ),
    );
  }
}
