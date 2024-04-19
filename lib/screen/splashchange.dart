import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/screen/splashlo.dart';
import 'package:laundaryapp/screen/splashverify.dart';
import 'package:laundaryapp/widgets/SplashscreenBg.dart';

class SplashChange extends StatelessWidget {
  const SplashChange({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashscreenBG(
      mywidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50.h, left: 24.w),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SplashLogin(),
                    ));
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 32,
              ),
            ),
          ),
          Gap(132.h),
          Center(
            child: Image.asset(
              'asset/images/ssmark.png',
              height: 100.h,
              width: 100.h,
            ),
          ),
          Gap(30.h),
          Center(
            child: Text(
              'Password Changed!',
              style: TextStyle(
                  letterSpacing: MediaQuery.of(context).size.width * 0.005.w,
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'DM_Sans'),
              textAlign: TextAlign.center,
            ),
          ),
          Center(
            child: Text(
              'Your password has been\nchanged successfully.',
              style: font16fw500,
              textAlign: TextAlign.center,
            ),
          ),
         
         
          Gap(40.h),
          Padding(
            padding: EdgeInsets.only(left: 24.w, top: 15.h),
            child: SizedBox(
              height: 64.h,
              width: 333.w,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SplashLogin(),
                        ));
                  },
                  child: Text(
                    'Back to Login',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff1FACF3)),
                  )),
            ),
          ),
          
        ],
      ),
    );
  }
}
