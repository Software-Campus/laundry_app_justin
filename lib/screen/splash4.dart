import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/screen/splash3.dart';
import 'package:laundaryapp/widgets/SplashscreenBg.dart';

class SplashPage4 extends StatelessWidget {
  const SplashPage4({super.key});

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
              padding: EdgeInsets.only(top: 18.h, left: 116.w),
              child: Text(
                'My\nName is..',
                style: TextStyle(
                  fontSize: 34.sp,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Gap(40),
            Center(
              child: SizedBox(
                height: 32.h,
                width: 260.w,
                child: Opacity(
                  opacity: .2,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: 'Enter your name here',
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700)),
                  ),
                ),
              ),
            ),
            
            Padding(
              padding: EdgeInsets.only(left: 24.w, top: 493.h, bottom: 27.h),
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