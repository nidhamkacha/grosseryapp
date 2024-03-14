import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class GlobalTextfield extends StatelessWidget {
  const GlobalTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            hintStyle: GoogleFonts.poppins(
                color: Colors.black45,
                fontSize: 17.sp,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
