import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/homepages/home.dart';
import 'package:laundaryapp/screen/splash2.dart';
import 'package:laundaryapp/screen/splash3.dart';


class SplashPage1 extends StatelessWidget {
  const SplashPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
            backgroundColor: Color(0xff1FACF3),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 51.h, left: 310.w),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SplashPage2(),
                                ));
                          },
                          child: Text('Skip')),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 32.w, right: 56.w),
                      child: Image.asset(
                        'asset/images/pic4.png',
                        height: 255.h,
                        width: 293.w,
                      ),
                    ),
                    Gap(54.h),
                    Text(
                      'Get your Laundry and\nDry cleaning in 24 hours',
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Gap(16.h),
                    Text(
                      "A convenient laundry solution that\n helps protect the enviornment ",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'asset/images/pic5.png',
                      height: 231.h,
                      width: 393.w,
                      fit: BoxFit.cover,
                    ),
                  ],
                )
              ],
            )),
        Positioned(
          top: 700.h,
          left: 152.w,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SplashPage2(),
                  ));
            },
            child: Container(
              height: 64.h,
              width: 64.w,
              decoration: BoxDecoration(
                  color: Color(0xff34D5E5),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff34D5E5),
                        blurRadius: 15,
                        offset: Offset(0, 8))
                  ]),
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 30.sp,
              ),
            ),
          ),
        )
      ],
    );
  }
}
