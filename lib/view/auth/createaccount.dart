import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grosseryapp/view/auth/signinscreen.dart';

class CreateAccoutScreen extends StatefulWidget {
  const CreateAccoutScreen({super.key});

  @override
  State<CreateAccoutScreen> createState() => _CreateAccoutScreenState();
}

class _CreateAccoutScreenState extends State<CreateAccoutScreen> {
  bool passwordVisible = false;
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 96.h,
            ),
            Text(
              "Create Accout",
              style: GoogleFonts.inter(
                color: Color(0xff000000),
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              "Fill your information below or register",
              style: GoogleFonts.inter(
                color: Color(0xff000000),
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "With your social account",
              style: GoogleFonts.inter(
                color: Color(0xff000000),
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Name",
                      style: GoogleFonts.inter(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 42.h,
                      child: TextField(
                        style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            color: Color(0XFF78A408),
                            fontWeight: FontWeight.w500),
                        // controller: _name,
                        cursorColor: Colors.amber,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0XFF78A408)),
                              borderRadius: BorderRadius.circular(15)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          hintStyle: GoogleFonts.poppins(
                              color: Colors.black45,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Email",
                      style: GoogleFonts.inter(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 42.sp,
                      child: TextField(
                        style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            color: Color(0XFF78A408),
                            fontWeight: FontWeight.w500),
                        // controller: _name,
                        cursorColor: Colors.amber,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0XFF78A408)),
                              borderRadius: BorderRadius.circular(15)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          hintStyle: GoogleFonts.poppins(
                              color: Colors.black45,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Password",
                        style: GoogleFonts.inter(
                            fontSize: 16.sp, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 42.h,
                      child: TextField(
                        obscureText: passwordVisible,
                        enableSuggestions: false,
                        autocorrect: false,
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Color(0XFF78A408),
                            fontWeight: FontWeight.w500),
                        // controller: _name,
                        cursorColor: Colors.amber,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(
                                () {
                                  passwordVisible = !passwordVisible;
                                },
                              );
                            },
                            icon: Icon(passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0XFF78A408)),
                              borderRadius: BorderRadius.circular(15)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          hintStyle: GoogleFonts.poppins(
                              color: Colors.black45,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    children: [
                      Material(
                        child: Checkbox(
                          value: agree,
                          onChanged: (value) {
                            setState(() {
                              agree = value ?? false;
                            });
                          },
                        ),
                      ),
                      Text(
                        'Agree with Term & Condition',
                        style: GoogleFonts.inter(
                            fontSize: 14.sp, fontWeight: FontWeight.w400),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: 42.h,
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SigninScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0XFF188806),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7))),
                        child: Text(
                          "SIGN IN",
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1.h,
                  width: 111.w,
                  color: Colors.black38,
                ),
                Text("Or sign in with"),
                Container(
                  height: 1.h,
                  width: 111.w,
                  color: Colors.black38,
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 42.w,
                    height: 42.h,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black38),
                        image: new DecorationImage(
                            //fit: BoxFit.fill,
                            image: new AssetImage(
                                "assets/images/apple-logo (1) 1.png"),
                            scale: 3))),
                Container(
                    width: 42.w,
                    height: 42.h,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black38),
                        image: new DecorationImage(
                            //fit: BoxFit.fill,
                            image: new AssetImage(
                                "assets/images/search (1) 1.png"),
                            scale: 3))),
                Container(
                    width: 42.w,
                    height: 42.h,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black38),
                        image: new DecorationImage(
                            //fit: BoxFit.fill,
                            image: new AssetImage(
                                "assets/images/facebook (3) 1 (1).png"),
                            scale: 3))),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 10.w,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SigninScreen()));
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
