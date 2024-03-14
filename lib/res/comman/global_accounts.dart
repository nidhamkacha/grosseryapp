import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GlobalAccounts extends StatelessWidget {
  final String? imgpath;
  const GlobalAccounts({super.key, this.imgpath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42.w,
      height: 42.h,
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black26),
        image:
            new DecorationImage(image: new AssetImage(imgpath ?? ""), scale: 3),
      ),
    );
  }
}
