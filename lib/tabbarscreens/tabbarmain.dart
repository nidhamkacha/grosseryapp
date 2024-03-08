import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBarMainScreen extends StatefulWidget {
  const TabBarMainScreen({super.key});

  @override
  State<TabBarMainScreen> createState() => _TabBarMainScreenState();
}

class _TabBarMainScreenState extends State<TabBarMainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          body: Column(
            children: [
              Container(
                height: 156,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color(0xff971DE2),
                  Color(0xffFFE86D),
                ])),
                child: Column(
                  children: [
                    SizedBox(
                      height: 43,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Icon(
                            size: 30,
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Shop",
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 140,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.black38,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.black38,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.menu,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              TabBar(
                tabs: [
                  Container(
                    height: 62,
                    width: 61,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 42,
                              width: 42,
                              decoration: BoxDecoration(
                                color: Color(0xff25A310),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Image.asset(
                              'assets/images/address.png',
                              scale: 2,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Address',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Color(0xff25A310),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
