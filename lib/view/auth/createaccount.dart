import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grosseryapp/res/comman/global_accounts.dart';
import 'package:grosseryapp/res/comman/global_button.dart';
import 'package:grosseryapp/res/comman/global_text.dart';
import 'package:grosseryapp/res/comman/global_textfield.dart';
import 'package:grosseryapp/res/static/app_colors.dart';
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
            GlobalText(
              text: "Create Accout",
              color: AppColors.blackcolor,
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              height: 16.h,
            ),
            GlobalText(
              text: "Fill your information below or register",
              color: AppColors.blackcolor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
            GlobalText(
              text: "With your social account",
              color: AppColors.blackcolor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GlobalText(
                      text: "Name",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  GlobalTextfield(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GlobalText(
                      text: "Email",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  GlobalTextfield(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GlobalText(
                      text: "Password",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
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
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  GlobalButton(
                    text: "SIGN IN",
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SigninScreen()));
                    },
                  )
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
                  color: AppColors.blackcolor,
                ),
                Text("Or sign in with"),
                Container(
                  height: 1.h,
                  width: 111.w,
                  color: AppColors.blackcolor,
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GlobalAccounts(
                  imgpath: "assets/images/apple.png",
                ),
                GlobalAccounts(
                  imgpath: "assets/images/google.png",
                ),
                GlobalAccounts(
                  imgpath: "assets/images/facebook.png",
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GlobalText(
                    text: "Already have an account? ",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
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
                      color: AppColors.bluecolor,
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
