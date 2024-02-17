import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/change_page/change_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(context, homeScreen, (route) => false);
    }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        child: Center(
          child: Image.asset(
            "images/icon.png",
            height: 10.h,
          ),
        ),
      ),
    );
  }
}
