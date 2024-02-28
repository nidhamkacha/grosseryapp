import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 140,
          ),
          Text(
            "Sign In",
            style: GoogleFonts.inter(
              color: Color(0xff000000),
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "Hi! Welcome back, you’ve been missed",
            style: GoogleFonts.inter(
              color: Color(0xff000000),
              fontSize: 14,
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
                    "Email",
                    style: GoogleFonts.inter(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 42,
                    child: TextField(
                      style: GoogleFonts.poppins(
                          fontSize: 14,
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
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Password",
                    style: GoogleFonts.inter(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 42,
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
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 11,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                SizedBox(
                  height: 36,
                ),
                SizedBox(
                  height: 42,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0XFF188806),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7))),
                      child: Text(
                        "SIGN IN",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 36,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 1,
                width: 111,
                color: Colors.black,
              ),
              Text("Or sign in with"),
              Container(
                height: 1,
                width: 111,
                color: Colors.black,
              ),
            ],
          ),
          SizedBox(
            height: 52,
          ),
          Row(
            children: [
              Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(),
                      image: new DecorationImage(
                          //fit: BoxFit.fill,
                          image: new AssetImage(
                              "assets/images/apple-logo (1) 1.png"),
                          scale: 3))),
              Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(),
                      image: new DecorationImage(
                          //fit: BoxFit.fill,
                          image:
                              new AssetImage("assets/images/search (1) 1.png"),
                          scale: 3))),
              Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(),
                      image: new DecorationImage(
                          //fit: BoxFit.fill,
                          image: new AssetImage(
                              "assets/images/facebook (3) 1 (1).png"),
                          scale: 3))),
            ],
          )
        ],
      ),
    );
  }
}
