import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/screen/splash3.dart';

import 'package:laundaryapp/screen/splashlo.dart';
import 'package:laundaryapp/screen/splashregister.dart';
import 'package:laundaryapp/widgets/SplashscreenBg.dart';

class SplashPage2 extends StatelessWidget {
  const SplashPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashscreenBG(
      mywidget: Column(
        
        children: [
         
          Padding(
            padding: EdgeInsets.only(top: 286.h, left: 71.w),
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
                color: Colors.white,
                fontSize: 33.4.sp,
                fontWeight: FontWeight.w700),
          ),
        ],
      ),
          ),
         
          Padding(
            padding: EdgeInsets.only(left: 24.w, top: 328.h,right: 24.w),
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
                    'Login',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff1FACF3)),
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, top: 15.h,right: 24.w),
            child: SizedBox(
              height: 64.h,
              width: 333.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: color1FACF3,side: BorderSide(color: Colors.white)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SplashRegister(),
                        ));
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
