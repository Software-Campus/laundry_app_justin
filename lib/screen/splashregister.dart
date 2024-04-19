import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/homepages/home.dart';
import 'package:laundaryapp/screen/splash3.dart';
import 'package:laundaryapp/screen/splashlo.dart';
import 'package:laundaryapp/widgets/SplashscreenBg.dart';

class SplashRegister extends StatelessWidget {
  const SplashRegister({super.key});

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
          Padding(
            padding: EdgeInsets.only(top: 90.h, left: 116.w),
            child: Text(
              'Hey There ! \nWelcome',
              style: TextStyle(
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'DM_Sans'),
              textAlign: TextAlign.center,
            ),
          ),
          Gap(90.h),
          Regist(
            text: 'Enter Name',
          ),
          Gap(15.h),
          Regist(
            text: 'Enter Email ID or Phone Number',
          ),
          Gap(15.h),
          Regist(
            text: 'Enter your password',
          ),
          Gap(15.h),
          Regist(
            text: 'Confirm password',
          ),
          Gap(5.h),
          Padding(
            padding: EdgeInsets.only(left: 24.w, top: 15.h, bottom: 27.h),
            child: SizedBox(
              height: 64.h,
              width: 333.w,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff1FACF3)),
                  )),
            ),
          ),
          Gap(43.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account? ',
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
                    'Log In',
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

class Regist extends StatelessWidget {
  const Regist({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          child: Opacity(
            opacity: 0.5,
            child: TextField(
              style:font16fw700black,
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  hintText: text,
                  hintStyle: font15fw500clr8391A1),
            ),
          ),
        ),
      ),
    );
  }
}
