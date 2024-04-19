import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/homepages/home.dart';
import 'package:laundaryapp/screen/splash3.dart';
import 'package:laundaryapp/screen/splashfpass.dart';
import 'package:laundaryapp/screen/splashregister.dart';
import 'package:laundaryapp/widgets/SplashscreenBg.dart';

class SplashLogin extends StatelessWidget {
  const SplashLogin({super.key});

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
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 32,
              ),
            ),
          ),
          Gap(125.h),
          Center(
            child: Text(
              'Welcome back! Glad\nTo see you, Again!',
              style: TextStyle(
                  letterSpacing: MediaQuery.of(context).size.width * 0.005.w,
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'DM_Sans'),
              textAlign: TextAlign.center,
            ),
          ),
          Gap(178.h),
          Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.w),
            child: Container(
              height: 64.h,
              width: 333.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(140.r),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 35.w),
                child: TextField(
                  style: font16fw700black,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: 'Enter your email or Phone number',
                      hintStyle: font15fw500clr8391A1),
                ),
              ),
            ),
          ),
          Gap(15.h),
          Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.w),
            child: Container(
              height: 64.h,
              width: 333.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(140.r),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 35.w),
                child: TextField(
                  style: font16fw700black,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: 'Enter your password',
                      suffixIcon: Image.asset(
                        'asset/images/eye1.png',
                        height: 22.h,
                        width: 22.w,
                      ),
                      hintStyle: font15fw500clr8391A1),
                ),
              ),
            ),
          ),
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
                          builder: (context) => SplashPage3(),
                        ));
                  },
                  child: Text(
                    'Log In',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff1FACF3)),
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 236.w, top: 15.h),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SplashForgot(),
                        ));
              },
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'DM_Sans',
                ),
              ),
            ),
          ),
          Gap(35.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don’t have an account? ',
                style: font15fw500white,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SplashRegister(),
                        ));
                  },
                  child: Text(
                    'Register Now',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontFamily: 'DM_Sans',
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
