import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/homepages/home.dart';
import 'package:laundaryapp/screen/splashchange.dart';
import 'package:laundaryapp/screen/splashlo.dart';
import 'package:laundaryapp/widgets/SplashscreenBg.dart';
import 'package:pinput/pinput.dart';

class SplashPage3 extends StatelessWidget {
  const SplashPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashscreenBG(
      mywidget: SingleChildScrollView(
        child: Column(
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
              padding: EdgeInsets.only(top: 71.h, left: 96.w),
              child: Text(
                'We have sent\nyou An OTP',
                style: TextStyle(
                  letterSpacing: MediaQuery.of(context).size.width * 0.005.w,
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Gap(24.h),
            Center(
              child: Pinput(separatorBuilder: (index) => SizedBox(width: 17.w,),
                defaultPinTheme: PinTheme(
                    height: 60.h,
                    textStyle: font16fw700black,
                    width: 69.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10))),
                length: 4,
              ),
            ),
          Gap(16.h),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don’t receive OTP? ',
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
                    'RESEND OTP',
                    style: font14fw500,
                  ))
            ],
          ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, top: 400.h, bottom: 27.h),
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
                      'Next',
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff1FACF3)),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
