import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/screen/splashlo.dart';
import 'package:laundaryapp/screen/splashregister.dart';
import 'package:laundaryapp/screen/splashverify.dart';
import 'package:laundaryapp/widgets/SplashscreenBg.dart';

class SplashForgot extends StatelessWidget {
  const SplashForgot({super.key});

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
          Gap(90.h),
          Center(
            child: Text(
              'Forgot Password?',
              style: TextStyle(
                  letterSpacing: MediaQuery.of(context).size.width * 0.005.w,
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'DM_Sans'),
              textAlign: TextAlign.center,
            ),
          ),
          Gap(24.h),
          Center(
            child: Text(
              "Don't worry! It occurs. Please enter the \nemail or phone number linked with your\n account.",
              style: font16fw500,
              textAlign: TextAlign.center,
            ),
          ),
          Gap(33.h),
           Regist(
            text: 'Enter Email ID or Phone Number',
          ),
          Gap(5.h),
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
                          builder: (context) => SplashVerify(),
                        ));
                  },
                  child: Text(
                    'Send OTP',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff1FACF3)),
                  )),
            ),
          ),
          
          Gap(266.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Remember Password ? ',
                style: font15fw500white,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SplashLogin(),
                        ));
                  },
                  child: Text(
                    'Log In  ',
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
