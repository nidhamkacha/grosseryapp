import 'package:flutter/material.dart';
import 'package:grosseryapp/res/comman/global_text.dart';

class LogoutScreen extends StatefulWidget {
  const LogoutScreen({super.key});

  @override
  State<LogoutScreen> createState() => _LogoutScreenState();
}

class _LogoutScreenState extends State<LogoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GlobalText(
          text: "Logout",
        ),
      ),
    );
  }
}
