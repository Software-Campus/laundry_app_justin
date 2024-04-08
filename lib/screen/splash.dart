import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/screen/splash1.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 4),
      () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SplashPage1(),
          )),
    );
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 393.h, left: 71.w),
        child: Row(
          children: [
            Image.asset(
              'asset/images/Logo.png',
              height: 38.21.h,
              width: 38.21.w,
            ),
            Gap(15.3.w),
            Text(
              'Laundrybin',
              style: TextStyle(
                  color: Color(0xff567177),
                  fontSize: 33.4.sp,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
