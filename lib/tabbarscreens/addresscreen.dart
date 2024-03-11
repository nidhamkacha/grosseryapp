import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

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
                        MaterialStateProperty.all<Color>(Color(0xff188806)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.add_circle,
                        size: 18.sp,
                        color: Colors.white,
                      ),
                      Text(
                        "Add New",
                        style: GoogleFonts.inter(
                          color: Colors.white,
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
            padding: EdgeInsets.symmetric(horizontal: 10),
            shrinkWrap: true,
            children: [
              ...items.map(
                (e) => Container(
                  height: 71.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      Icon(
                        e["icon"] as IconData?,
                        size: 30.sp,
                      ),
                      Column(
                        children: [
                          Text(e["title"].toString()),
                          Text(e["subtitle"].toString()),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                            ),
                            onPressed: () => {},
                            child: Column(
                              // Replace with a Row for horizontal icon + text
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/edit.png',
                                  scale: 3,
                                  // fit: BoxFit.fill,
                                ),
                                Text("Edit"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
