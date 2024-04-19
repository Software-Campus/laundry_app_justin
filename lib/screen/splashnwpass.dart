import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/screen/splashchange.dart';
import 'package:laundaryapp/screen/splashlo.dart';
import 'package:laundaryapp/screen/splashregister.dart';
import 'package:laundaryapp/screen/splashverify.dart';
import 'package:laundaryapp/widgets/SplashscreenBg.dart';

class SplashnewPass extends StatelessWidget {
  const SplashnewPass({super.key});

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
              'Create new password',
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
              "Your new password must be unique from\nthose previously used.",
              style: font16fw500,
              textAlign: TextAlign.center,
            ),
          ),
          Gap(57.h),
           Regist(
            text: 'Enter new password',
          ),
          Gap(15.h),
          Regist(
            text: 'Confirm password',
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
                          builder: (context) => SplashChange(),
                        ));
                  },
                  child: Text(
                    'Reset Password',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff1FACF3)),
                  )),
            ),
          ),
          
          Gap(201.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Didn’t received code? ',
                style: font14fw500,
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
                    'Resend',
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
