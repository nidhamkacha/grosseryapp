import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grosseryapp/res/static/app_colors.dart';


class GlobalButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  const GlobalButton({super.key, this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42.h,
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.greencolor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7))),
          child: Text(
            text ?? "",
            style: GoogleFonts.inter(
                color: AppColors.whitecolor,
                fontSize: 18.sp,
                fontWeight: FontWeight.w500),
          )),
    );
  }
}
