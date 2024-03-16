import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grosseryapp/res/comman/global_accounts.dart';
import 'package:grosseryapp/res/comman/global_button.dart';
import 'package:grosseryapp/res/comman/global_text.dart';
import 'package:grosseryapp/res/comman/global_textfield.dart';
import 'package:grosseryapp/res/static/app_colors.dart';
import 'package:grosseryapp/view/auth/createaccount.dart';
import 'package:grosseryapp/view/auth/varificationscreen.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  bool passwordVisible = false;
  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 125.h,
            ),
            GlobalText(
              text: "Sign In",
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
            GlobalText(
              text: "Hi! Welcome back, you’ve been missed",
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
                            fontSize: 14.sp,
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
                    height: 11.h,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 36.h,
                  ),
                  GlobalButton(
                    text: "SIGN IN",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VarificationScreen()));
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              height: 36.h,
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
              height: 52.h,
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
              height: 38.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GlobalText(
                  text: "Don't have an account?",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(
                  width: 10.w,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreateAccoutScreen()));
                  },
                  child: Text(
                    'Sign Up',
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
