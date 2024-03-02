import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              height: 106,
            ),
            Text(
              "Create Accout",
              style: GoogleFonts.inter(
                color: Color(0xff000000),
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Fill your information below or register",
              style: GoogleFonts.inter(
                color: Color(0xff000000),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "With your social account",
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
                      "Name",
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
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Password",
                        style: GoogleFonts.inter(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
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
                    height: 5,
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
                            fontSize: 14, fontWeight: FontWeight.w400),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
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
                  color: Colors.black38,
                ),
                Text("Or sign in with"),
                Container(
                  height: 1,
                  width: 111,
                  color: Colors.black38,
                ),
              ],
            ),
            SizedBox(
              height: 52,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 42.0,
                    height: 42.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black38),
                        image: new DecorationImage(
                            //fit: BoxFit.fill,
                            image: new AssetImage(
                                "assets/images/apple-logo (1) 1.png"),
                            scale: 3))),
                Container(
                    width: 42.0,
                    height: 42.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black38),
                        image: new DecorationImage(
                            //fit: BoxFit.fill,
                            image: new AssetImage(
                                "assets/images/search (1) 1.png"),
                            scale: 3))),
                Container(
                    width: 42.0,
                    height: 42.0,
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
              height: 38,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {},
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
