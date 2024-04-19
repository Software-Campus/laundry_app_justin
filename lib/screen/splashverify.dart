import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/screen/splashlo.dart';
import 'package:laundaryapp/screen/splashnwpass.dart';
import 'package:laundaryapp/widgets/SplashscreenBg.dart';
import 'package:pinput/pinput.dart';

class SplashVerify extends StatelessWidget {
  const SplashVerify({super.key});

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
          Gap(90.h),
          Center(
            child: Text(
              'OTP Verification',
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
              child: Text(
            'Enter the verification code we just sent on \nyour email address.',
            style: font16fw500,
            textAlign: TextAlign.center,
          )),
          Gap(57.h),
          Center(
            child: Pinput(
              separatorBuilder: (index) => SizedBox(
                width: 17.w,
              ),
              defaultPinTheme: PinTheme(
                textStyle: font16fw700black,
                  height: 60.h,
                  width: 69.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10))),
              length: 4,
            ),
          ),
          Gap(24.h),
          Padding(
            padding: EdgeInsets.only(left: 24.w, bottom: 27.h),
            child: SizedBox(
              height: 64.h,
              width: 333.w,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SplashnewPass(),
                        ));
                  },
                  child: Text(
                    'Verify',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff1FACF3)),
                  )),
            ),
          ),
          Gap(275.h),
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
                    style:TextStyle(
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
