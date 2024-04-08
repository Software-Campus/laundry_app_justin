import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/screen/splash4.dart';
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
              padding: EdgeInsets.only(top: 18.h, left: 85.w),
              child: Text(
                'We have sent\nyou an OTP',
                style: TextStyle(
                  fontSize: 34.sp,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Gap(48),
            Opacity(
              opacity: 0.7,
              child: Center(
                child: Pinput(
                  defaultPinTheme: PinTheme(
                      height: 18.h,
                      width: 18.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100))),
                  length: 6,
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 104.h,left: 76.w),
              child: Opacity(
                opacity: 0.8,
                child: RichText(
                    text: TextSpan(
                        text: 'Don’t recive OTP? ',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFFFFFF)),
                        children: [
                      TextSpan(
                        text: 'RESENT OTP',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffFFFFFF)),
                      )
                    ])),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, top: 364.h, bottom: 27.h),
              child: SizedBox(
                height: 64.h,
                width: 333.w,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SplashPage4(),
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
