import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grosseryapp/res/comman/global_button.dart';
import 'package:grosseryapp/res/comman/global_text.dart';

class CardPaymentScreen extends StatefulWidget {
  const CardPaymentScreen({Key? key}) : super(key: key);

  @override
  State<CardPaymentScreen> createState() => _CardPaymentScreenState();
}

class _CardPaymentScreenState extends State<CardPaymentScreen> {
  var imagepath = [
    "assets/images/mastercard.png",
    "assets/images/paytm.png",
    "assets/images/visa-card.png",
    "assets/images/rupay.png",
  ];

  @override
  Widget build(BuildContext context) {
    // Initialize ScreenUtil
    ScreenUtil.init(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GlobalText(
                text: "Add Credit, Debit & ATM Cards",
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 35.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                      image: new DecorationImage(
                          image: new AssetImage("assets/images/mastercard.png"),
                          scale: 2),
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    height: 35.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                      image: new DecorationImage(
                          image: new AssetImage("assets/images/paytm.png"),
                          scale: 2),
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    height: 35.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                      image: new DecorationImage(
                          image: new AssetImage("assets/images/visa-card.png"),
                          scale: 2),
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    height: 35.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                      image: new DecorationImage(
                          image: new AssetImage("assets/images/rupay.png"),
                          scale: 2),
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 28.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                height: 100,
                child: TextField(
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Color(0XFF78A408),
                      fontWeight: FontWeight.w500),
                  // controller: _name,
                  cursorColor: Colors.amber,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF78A408))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "Mastercard",
                    labelText: "Name Of Card",
                    hintStyle: GoogleFonts.poppins(
                        color: Colors.black45,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                height: 100,
                child: TextField(
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Color(0XFF78A408),
                      fontWeight: FontWeight.w500),
                  // controller: _name,
                  cursorColor: Colors.amber,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF78A408))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "34582685458",
                    labelText: "Card Number",
                    hintStyle: GoogleFonts.poppins(
                        color: Colors.black45,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 50,
                  width: 161,
                  child: TextField(
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Color(0XFF78A408),
                        fontWeight: FontWeight.w500),
                    // controller: _name,
                    cursorColor: Colors.amber,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF78A408))),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Card Number",
                      hintStyle: GoogleFonts.poppins(
                          color: Colors.black45,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 161,
                  child: TextField(
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Color(0XFF78A408),
                        fontWeight: FontWeight.w500),
                    // controller: _name,
                    cursorColor: Colors.amber,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF78A408))),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "CVV ",
                      hintStyle: GoogleFonts.poppins(
                          color: Colors.black45,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                height: 100,
                child: TextField(
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Color(0XFF78A408),
                      fontWeight: FontWeight.w500),
                  // controller: _name,
                  cursorColor: Colors.amber,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF78A408))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "Mohan",
                    labelText: "NickName Of Card",
                    hintStyle: GoogleFonts.poppins(
                        color: Colors.black45,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: GlobalButton(
                text: "Pay Now",
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
